package com.hotel.action;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.entity.Checkinorder;
import com.hotel.entity.Historyorder;
import com.hotel.entity.ReserveOrder;
import com.hotel.entity.Room;
import com.hotel.entity.Staff;
import com.hotel.service.ICheckinorderService;
import com.hotel.service.IHistoryorderService;
import com.hotel.service.IReserveOrderService;
import com.hotel.service.IRoomService;
import com.opensymphony.xwork2.ActionSupport;

public class HandleRoomAction extends ActionSupport{
	
	@Resource
	private IRoomService roomService;
	private IReserveOrderService reserveOrderService;
	private ICheckinorderService checkinorderService;
	private IHistoryorderService historyorderService;
	
	public String findRoom(){
		HttpServletRequest request = ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		roomService = (IRoomService) cxt.getBean("roomService");
		Room room = new Room();
		room = roomService.findById(Integer.parseInt(request.getParameter("roomId")));
		if(room!=null){
			request.setAttribute("handleRoom", room);
			return "success";
		}
			
		else
			return "fail";
	}
	
	public String reserveRoom(){
		HttpServletRequest request = ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		reserveOrderService = (IReserveOrderService) cxt.getBean("reserveOrderService");
		roomService = (IRoomService) cxt.getBean("roomService");
		System.out.println("add reserve order");
		ReserveOrder rOrder = new ReserveOrder();
		rOrder.setId(1);
		rOrder.setCustomerName(request.getParameter("customerName"));
		rOrder.setCustomerPhoneNumber(request.getParameter("customerPhoneNumber"));
		rOrder.setDate(request.getParameter("date"));
		rOrder.setDays(request.getParameter("days"));
		rOrder.setRoomId(request.getParameter("roomId"));
		reserveOrderService.save(rOrder);
		
		System.out.println("modify room:"+request.getParameter("roomId"));
		int roomId = Integer.parseInt(request.getParameter("roomId"));
		Room room = roomService.findById(roomId);
		room.setStaus("reserve");
		roomService.merge(room);
		return "success";
	}
	
	public String checkinRoom(){
		HttpServletRequest request = ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		reserveOrderService = (IReserveOrderService) cxt.getBean("reserveOrderService");
		checkinorderService = (ICheckinorderService) cxt.getBean("checkinorderService");
		roomService = (IRoomService) cxt.getBean("roomService");
		Checkinorder checkinorder = new Checkinorder();
		checkinorder.setCheckinOrderId(1);
		checkinorder.setCustomeName(request.getParameter("customerName"));
		checkinorder.setCustomePhoneNumber(request.getParameter("customerPhoneNumber"));
		checkinorder.setCustomerId(request.getParameter("customerID"));
		checkinorder.setDays(Integer.parseInt(request.getParameter("days")));
		checkinorder.setPayment(Double.parseDouble(request.getParameter("payment")));
		checkinorder.setRoomId(request.getParameter("roomId"));
		checkinorderService.save(checkinorder);
		
		System.out.println("check in:"+request.getParameter("roomId"));
		
		Room room = roomService.findById(Integer.parseInt(request.getParameter("roomId")));
		if(room.getStaus().equals("reserve")){
			System.out.println(room.getStaus());
			ArrayList<ReserveOrder> l = (ArrayList<ReserveOrder>) reserveOrderService.findByRoomId(room.getRoomId());
			System.out.println(l.size());
			for(int i=0;i<l.size();i++){
				reserveOrderService.delete(l.get(i));
			}
		}
		room.setStaus("checkin");
		roomService.merge(room);
		return "success";
	}
	
	/*退房:添加历史订单，删除入住订单，修改房间状态*/
	public String checkoutRoom(){
		
		System.out.println("check out");
		HttpServletRequest request = ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		checkinorderService = (ICheckinorderService) cxt.getBean("checkinorderService");
		roomService = (IRoomService) cxt.getBean("roomService");
		historyorderService = (IHistoryorderService) cxt.getBean("historyorderService");
		ArrayList<Checkinorder> l = (ArrayList<Checkinorder>) checkinorderService.findByRoomId(request.getParameter("roomId"));
		if(l.size()>1){
			return "fail";
		}
		
		//添加历史订单
		Room room = roomService.findById(Integer.parseInt(request.getParameter("roomId")));
		Checkinorder checkinorder = l.get(0);
		Historyorder historyorder = new Historyorder();
		historyorder.setCustomerId(checkinorder.getCustomerId());
		historyorder.setCustomerName(checkinorder.getCustomeName());
		historyorder.setDays(String.valueOf(checkinorder.getDays()));
		historyorder.setId(0);
		historyorder.setIncome(checkinorder.getDays()*room.getPrice());
		System.out.println("赚钱:"+historyorder.getIncome());
		historyorder.setRoomId(checkinorder.getRoomId());
		Date now = new Date(); 
		DateFormat date = DateFormat.getDateTimeInstance(DateFormat.MEDIUM,DateFormat.MEDIUM); //显示日期，时间（精确到分）
	    String checkouttime = date.format(now);
		historyorder.setCheckouttime(checkouttime);
		historyorder.setCustomePhoneNumber(checkinorder.getCustomePhoneNumber());
		historyorderService.save(historyorder);
		checkinorderService.delete(checkinorder);
		room.setStaus("free");
		roomService.merge(room);
		
		
		return "success";
	}
	
	//添加房间
	public String addRoom(){
		
		System.out.println("add room");
		
		HttpServletRequest request = ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		roomService = (IRoomService) cxt.getBean("roomService");
		Room r = roomService.findById(Integer.parseInt(request.getParameter("roomID")));
		if(r!=null){
			return "fail";
		}
		Room room = new Room();
		room.setRoomId(Integer.parseInt(request.getParameter("roomID")));
		room.setLevel(request.getParameter("level"));
		room.setLocation(request.getParameter("location"));
		room.setPrice(Double.parseDouble(request.getParameter("price")));
		room.setStaus("free");
		room.setType(request.getParameter("type"));
		
		roomService.save(room);
		System.out.println(room.getRoomId()+","+room.getLevel()+","+room.getLocation()+","+
		room.getStaus()+","+room.getPrice()+","+room.getType());
		
		
		return"success";
	}
	
	//删除房间
	public String deleteRoom(){
		
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("delete room:"+request.getParameter("roomId"));
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		roomService = (IRoomService) cxt.getBean("roomService");
		Room room = roomService.findById(Integer.parseInt(request.getParameter("roomId")));
		roomService.delete(room);
		return "success";
	}
	
	//保存修改后的房间信息
	public String saveModify(){
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("save modify roomInformation:"+request.getParameter("roomId"));
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		roomService = (IRoomService) cxt.getBean("roomService");
		
		Room room = roomService.findById(Integer.parseInt(request.getParameter("roomId")));
		room.setLevel(request.getParameter("level"));
		room.setLocation(request.getParameter("location"));
		room.setPrice(Double.parseDouble(request.getParameter("price")));
		room.setStaus("free");
		room.setType(request.getParameter("type"));
		
		roomService.merge(room);
		
		return "success";
	}

}

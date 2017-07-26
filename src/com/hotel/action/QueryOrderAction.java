package com.hotel.action;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.entity.Checkinorder;
import com.hotel.entity.ReserveOrder;
import com.hotel.entity.Room;
import com.hotel.service.ICheckinorderService;
import com.hotel.service.IHistoryorderService;
import com.hotel.service.IReserveOrderService;
import com.hotel.service.IRoomService;

public class QueryOrderAction {

	@Resource
	private IReserveOrderService reserveOrderService;
	private ICheckinorderService checkinOrderService;
	private IHistoryorderService historyOrderService;
	private IHistoryorderService staffOrderService;

	
	public String queryOrderReserveorder(){
		
		HttpServletRequest request = ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		reserveOrderService = (IReserveOrderService) cxt.getBean("reserveOrderService");
		ArrayList<ReserveOrder> orders = (ArrayList<ReserveOrder>) reserveOrderService.findAll();
		for(int i=0;i<orders.size();i++){
			System.out.println("reserve orders roomID:"+orders.get(i).getRoomId());
		}
		request.setAttribute("reserveorder", orders);
		
		return "success";
	}

    public String queryOrderCheckinorder(){
    	HttpServletRequest request = ServletActionContext.getRequest();
    	ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
    	checkinOrderService = (ICheckinOrderService) cxt.getBean("checkinOrderService");
		ArrayList<CheckinOrder> orders = (ArrayList<CheckinOrder>) checkinOrderService.findAll();
		for(int i=0;i<orders.size();i++){
			System.out.println("checkin orders roomID:"+orders.get(i).getRoomId());
		}
		request.setAttribute("checkinorder", orders);
		
		return "success";
    }

    public String queryOrderHistoryorder(){
	
	HttpServletRequest request = ServletActionContext.getRequest();
	ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
	historyOrderService = (IHistoryOrderService) cxt.getBean("historyOrderService");
	ArrayList<HistoryOrder> orders = (ArrayList<HistoryOrder>) historyOrderService.findAll();
	for(int i=0;i<orders.size();i++){
		System.out.println("history orders roomID:"+orders.get(i).getRoomId());
	}
	request.setAttribute("historyorder", orders);
	
	return "success";
}

}
    
	public String queryOrderStafforder(){
		
		HttpServletRequest request = ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
		staffOrderService = (IStaffOrderService) cxt.getBean("staffOrderService");
		ArrayList<staffOrder> orders = (ArrayList<staffOrder>) staffOrderService.findAll();
		for(int i=0;i<orders.size();i++){
			System.out.println("staff orders staffID:"+orders.get(i).getStaffId());
		}
		request.setAttribute("satfforder", orders);
		
		return "success";
}
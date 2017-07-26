package com.hotel.action;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.entity.Room;
import com.hotel.service.IRoomService;
import com.opensymphony.xwork2.ActionSupport;

public class ShowCheckinRoomAction extends ActionSupport{

	@Resource
	private IRoomService roomService;
	
	@Override
	public String execute(){
		
		HttpServletRequest request=ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");		
		roomService = (IRoomService) cxt.getBean("roomService");
		ArrayList<Room> rooms = (ArrayList) roomService.findByStaus("checkin");
		System.out.println(rooms.size());
		for(int i=0;i<rooms.size();i++){
			System.out.println(rooms.get(i));
		}
		request.setAttribute("showRoom", rooms);
		return "success";
	}
}

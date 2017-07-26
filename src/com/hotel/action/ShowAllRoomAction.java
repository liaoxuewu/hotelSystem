package com.hotel.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import antlr.collections.List;

import com.hotel.entity.Room;
import com.hotel.service.IRoomService;
import com.hotel.service.IStaffService;
import com.opensymphony.xwork2.ActionSupport;

public class ShowAllRoomAction extends ActionSupport{
	
	@Resource
	private IRoomService roomService;
	
	@Override
	public String execute(){
		HttpServletRequest request=ServletActionContext.getRequest();
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");		
		roomService = (IRoomService) cxt.getBean("roomService");
		ArrayList<Room> rooms = (ArrayList) roomService.findAll();
		request.setAttribute("showRoom", rooms);
		return "success";
	}
}


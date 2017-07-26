package com.hotel.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.IStaffDAO;
import com.hotel.dao.impl.StaffDAO;
import com.hotel.entity.Staff;
import com.hotel.service.IStaffService;

public class LoginAction extends BaseAction{
	
	//private IStaffService staffService;
	@Resource
	private IStaffService staffService;
	
	
	public String save (){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		staffService = (IStaffService) ctx.getBean("staffService");

		//System.out.println("save");
		Staff s = new Staff();
		s.setWorkId(1003);
		s.setPassword("1003");
		s.setName("ÀîËÄ");
		s.setPosition("Manager");
		//staffService.save(s);
		staffService.save(s);
		
		return "success";
	}
	
	@Override
	public String execute(){
		
		HttpServletRequest request=ServletActionContext.getRequest();
		System.out.println(request.getParameter("position"));
		
		if("Manager".endsWith(request.getParameter("position"))){
			return this.judgeManager(request.getParameter("userName"),request.getParameter("userPassword"));
		}
		else if("Receptionist".endsWith(request.getParameter("position"))){
			return this.judgeReceptionist(request.getParameter("userName"),request.getParameter("userPassword"));
		}
		else 
			return "fail";
	}
	
	public String judgeManager(String userName,String userPassword){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		staffService = (IStaffService) ctx.getBean("staffService");
		
		System.out.println(userName+","+userPassword);
		System.out.println(Integer.parseInt(userName));
		Staff s = staffService.findById(Integer.parseInt(userName));
		System.out.println(staffService.findById(Integer.parseInt(userName)));
		if(s != null){
			if(userPassword.endsWith(s.getPassword())&&"Manager".endsWith(s.getPosition())){
				return "ManagerLoginSuccess";
			}
			else 
				return "fail";
		}
		return "fail";
	}
	public String  judgeReceptionist(String userName,String userPassword){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		staffService = (IStaffService) ctx.getBean("staffService");
		
		System.out.println(userName+","+userPassword);
		Staff s = staffService.findById(Integer.parseInt(userName));
		if(s==null){
			return "fail";
		}
		else{
			if(userPassword.endsWith(s.getPassword())&&"Receptionist".endsWith(s.getPosition())){
				return "ReceptionistLoginSuccess";
			}
			else 
				return "fail";
		}
	}
}

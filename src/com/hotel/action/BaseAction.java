package com.hotel.action;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BaseAction extends ActionSupport{
	protected Object getBean(String id){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
		return ctx.getBean(id);
	}
}

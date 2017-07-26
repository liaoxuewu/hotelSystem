package com.hotel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.hotel.dao.IReserveOrderDAO;
import com.hotel.entity.ReserveOrder;
import com.hotel.service.IReserveOrderService;

public class ReserveOrderService implements IReserveOrderService{
	
	@Resource
	private IReserveOrderDAO reserveOrder;
	
	public IReserveOrderDAO getReserveOrder() {
		return reserveOrder;
	}

	public void setReserveOrder(IReserveOrderDAO reserveOrder) {
		this.reserveOrder = reserveOrder;
	}

	public void save(ReserveOrder transientInstance) {
		// TODO Auto-generated method stub
		reserveOrder.save(transientInstance);
	}

	public void delete(ReserveOrder persistentInstance) {
		reserveOrder.delete(persistentInstance);
	}

	public ReserveOrder findById(Integer id) {
		// TODO Auto-generated method stub
		return reserveOrder.findById(id);
	}

	public List findByExample(ReserveOrder instance) {
		// TODO Auto-generated method stub
		return reserveOrder.findByExample(instance);
	}

	
	public List findAll() {
		// TODO Auto-generated method stub
		return reserveOrder.findAll();
	}

	public List findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return reserveOrder.findByProperty(propertyName, value);
	}

	public List findByCustomerName(Object customerName) {
		// TODO Auto-generated method stub
		return reserveOrder.findByCustomerName(customerName);
	}

	public List findByCustomerPhoneNumber(Object customerPhoneNumber) {
		// TODO Auto-generated method stub
		return reserveOrder.findByCustomerPhoneNumber(customerPhoneNumber);
	}

	public List findByRoomId(Object roomId) {
		// TODO Auto-generated method stub
		return reserveOrder.findByRoomId(roomId);
	}

	public List findByDate(Object date) {
		// TODO Auto-generated method stub
		return reserveOrder.findByDate(date);
	}

	public List findByDays(Object days) {
		// TODO Auto-generated method stub
		return reserveOrder.findByDays(days);
	}
	
}

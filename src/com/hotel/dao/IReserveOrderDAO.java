package com.hotel.dao;

import com.hotel.entity.ReserveOrder;
import java.util.List;
public interface IReserveOrderDAO {
	public void save(ReserveOrder transientInstance);
	public void delete(ReserveOrder persistentInstance);
	public ReserveOrder findById(java.lang.Integer id);
	public List findByExample(ReserveOrder instance);
	public List findByProperty(String propertyName, Object value);
	public List findByCustomerName(Object customerName);
	public List findByCustomerPhoneNumber(Object customerPhoneNumber);
	public List findByRoomId(Object roomId);
	public List findByDate(Object date);
	public List findByDays(Object days);
	public List findAll();
}

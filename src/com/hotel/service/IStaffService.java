package com.hotel.service;

import com.hotel.entity.Staff;

public interface IStaffService {
	public void save(Staff transientInstance);
	public void delete(Staff persistentInstance);
	public Staff findById(java.lang.Integer id);
}

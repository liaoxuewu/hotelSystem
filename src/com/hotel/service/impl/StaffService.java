package com.hotel.service.impl;

import javax.annotation.Resource;

import com.hotel.dao.IStaffDAO;
import com.hotel.entity.Staff;
import com.hotel.service.IStaffService;

public class StaffService implements IStaffService{

	@Resource
	private IStaffDAO staffDAO;
	public StaffService(){
		
	}
	
	public IStaffDAO getStaffDAO() {
		return staffDAO;
	}

	public void setStaffDAO(IStaffDAO staffDAO) {
		this.staffDAO = staffDAO;
	}

	public void save(Staff transientInstance) {
		// TODO Auto-generated method stub
		staffDAO.save(transientInstance);
	}

	public void delete(Staff persistentInstance) {
		// TODO Auto-generated method stub
		staffDAO.delete(persistentInstance);
		
	}

	public Staff findById(Integer id) {
		// TODO Auto-generated method stub
		return staffDAO.findById(id);
	}

}

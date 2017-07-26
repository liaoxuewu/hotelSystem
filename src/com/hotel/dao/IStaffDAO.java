package com.hotel.dao;

import antlr.collections.List;

import com.hotel.entity.Staff;

public interface IStaffDAO {

	public void save(Staff transientInstance);
	public void delete(Staff persistentInstance);
	public Staff findById(java.lang.Integer id);
	/*
	public List findByExample(Staff instance);
	public List findByProperty(String propertyName, Object value);
	public List findByPassword(Object password);
	public List findByName(Object name);
	public List findByPosition(Object position);
	public List findAll();
	public Staff merge(Staff detachedInstance);
	public void attachDirty(Staff instance);
	public void attachClean(Staff instance);
	*/
}

package com.hotel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.hotel.dao.IHistoryorderDAO;
import com.hotel.service.IHistoryorderService;

public class HistoryorderService implements IHistoryorderService{
		
	@Resource
	private IHistoryorderDAO historyorderDAO;
	
	public IHistoryorderDAO getHistoryorderDAO() {
		return historyorderDAO;
	}

	public void setHistoryorderDAO(IHistoryorderDAO historyorderDAO) {
		this.historyorderDAO = historyorderDAO;
	}

	public void save(com.hotel.entity.Historyorder transientInstance) {
		// TODO Auto-generated method stub
		historyorderDAO.save(transientInstance);
	}

	public void delete(com.hotel.entity.Historyorder persistentInstance) {
		// TODO Auto-generated method stub
		historyorderDAO.delete(persistentInstance);
	}

	public List findAll() {
		// TODO Auto-generated method stub
		return historyorderDAO.findAll();
	}

	public com.hotel.entity.Historyorder merge(
			com.hotel.entity.Historyorder detachedInstance) {
		// TODO Auto-generated method stub
		return historyorderDAO.merge(detachedInstance);
	}

}

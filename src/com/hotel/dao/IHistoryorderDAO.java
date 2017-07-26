package com.hotel.dao;

import java.util.List;

import com.hotel.entity.Historyorder;

public interface IHistoryorderDAO {

	public void save(Historyorder transientInstance);
	public void delete(Historyorder persistentInstance);
	public List findAll();
	public Historyorder merge(Historyorder detachedInstance);
	
}

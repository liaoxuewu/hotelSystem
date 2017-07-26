package com.hotel.service;

import java.util.List;

import com.hotel.entity.Historyorder;

public interface IHistoryorderService {
	public void save(Historyorder transientInstance);
	public void delete(Historyorder persistentInstance);
	public List findAll();
	public Historyorder merge(Historyorder detachedInstance);
	
}

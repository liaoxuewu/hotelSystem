package com.hotel.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.jms.Session;
import javax.transaction.Transaction;

import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hotel.dao.IRoomDAO;
import com.hotel.entity.Room;
import com.hotel.entity.Staff;

import freemarker.template.Configuration;

/**
 * A data access object (DAO) providing persistence and search support for Room
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.hotel.entity.Room
 * @author MyEclipse Persistence Tools
 */
public class RoomDAO extends HibernateDaoSupport implements IRoomDAO{
	private static final Logger log = LoggerFactory.getLogger(RoomDAO.class);
	// property constants
	public static final String LEVEL = "level";
	public static final String TYPE = "type";
	public static final String STAUS = "staus";
	public static final String PRICE = "price";
	public static final String LOCATION = "location";

	protected void initDao() {
		// do nothing
	}

	public void save(Room transientInstance) {
		log.debug("saving Room instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Room persistentInstance) {
		log.debug("deleting Room instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Room findById(java.lang.Integer id) {
		log.debug("getting Room instance with id: " + id);
		try {
			Room instance = (Room) getHibernateTemplate().get(
					"com.hotel.entity.Room", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Room instance) {
		log.debug("finding Room instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByLevel(Object level) {
		List<Room> all = findAll();
		List<Room> result = new  ArrayList<Room>();
		for(int i=0;i<all.size();i++){
			if(all.get(i).getLevel().equals(level)){
				result.add(all.get(i));
			}
		}
		return result;
	}

	public List findByType(Object type) {
		List<Room> all = findAll();
		List<Room> result = new  ArrayList<Room>();
		for(int i=0;i<all.size();i++){
			if(all.get(i).getType().equals(type)){
				result.add(all.get(i));
			}
		}
		return result;
	}

	public List findByStaus(Object staus) {
		List<Room> all = findAll();
		List<Room> result = new  ArrayList<Room>();
		for(int i=0;i<all.size();i++){
			if(all.get(i).getStaus().equals(staus)){
				result.add(all.get(i));
			}
		}
		return result;
	}

	public List findByPrice(Object price) {
		List<Room> all = findAll();
		List<Room> result = new  ArrayList<Room>();
		for(int i=0;i<all.size();i++){
			if(all.get(i).getPrice().equals(price)){
				result.add(all.get(i));
			}
		}
		return result;
	}

	public List findByLocation(Object location) {
		List<Room> all = findAll();
		List<Room> result = new  ArrayList<Room>();
		for(int i=0;i<all.size();i++){
			if(all.get(i).getLocation().equals(location)){
				result.add(all.get(i));
			}
		}
		return result;
	}

	public List findAll() {
		log.debug("finding all Room instances");
		try {
			String queryString = "from Room";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Room merge(Room detachedInstance) {
		log.debug("merging Room instance");
		try {
			Room result = (Room) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	/*
	public void attachDirty(Room instance) {
		log.debug("attaching dirty Room instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Room instance) {
		log.debug("attaching clean Room instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static RoomDAO getFromApplicationContext(ApplicationContext ctx) {
		return (RoomDAO) ctx.getBean("RoomDAO");
	}
	*/
}
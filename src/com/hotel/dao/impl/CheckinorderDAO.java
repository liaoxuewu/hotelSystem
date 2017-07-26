package com.hotel.dao.impl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hotel.dao.ICheckinorderDAO;
import com.hotel.entity.Checkinorder;
import com.hotel.entity.ReserveOrder;

/**
 * A data access object (DAO) providing persistence and search support for
 * Checkinorder entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.hotel.entity.Checkinorder
 * @author MyEclipse Persistence Tools
 */
public class CheckinorderDAO extends HibernateDaoSupport implements ICheckinorderDAO{
	private static final Logger log = LoggerFactory
			.getLogger(CheckinorderDAO.class);
	// property constants
	public static final String ROOM_ID = "roomId";
	public static final String CUSTOME_NAME = "customeName";
	public static final String CUSTOMER_ID = "customerId";
	public static final String CUSTOME_PHONE_NUMBER = "customePhoneNumber";
	public static final String DAYS = "days";
	public static final String PAYMENT = "payment";

	protected void initDao() {
		// do nothing
	}

	public void save(Checkinorder transientInstance) {
		log.debug("saving Checkinorder instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Checkinorder persistentInstance) {
		log.debug("deleting Checkinorder instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Checkinorder findById(java.lang.Integer id) {
		
		log.debug("getting Checkinorder instance with id: " + id);
		try {
			Checkinorder instance = (Checkinorder) getHibernateTemplate().get(
					"com.hotel.entity.Checkinorder", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Checkinorder instance) {
		log.debug("finding Checkinorder instance by example");
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

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Checkinorder instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Checkinorder as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByRoomId(Object roomId) {
		List<Checkinorder> all = findAll();
		List<Checkinorder> result = new  ArrayList<Checkinorder>();
		for(int i=0;i<all.size();i++){
			if(all.get(i).getRoomId().equals(roomId.toString())){
				result.add(all.get(i));
			}
		}
		return result;
	}

	public List findByCustomeName(Object customeName) {
		return findByProperty(CUSTOME_NAME, customeName);
	}

	public List findByCustomerId(Object customerId) {
		return findByProperty(CUSTOMER_ID, customerId);
	}

	public List findByCustomePhoneNumber(Object customePhoneNumber) {
		return findByProperty(CUSTOME_PHONE_NUMBER, customePhoneNumber);
	}

	public List findAll() {
		log.debug("finding all Checkinorder instances");
		try {
			String queryString = "from Checkinorder";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Checkinorder merge(Checkinorder detachedInstance) {
		log.debug("merging Checkinorder instance");
		try {
			Checkinorder result = (Checkinorder) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	/*
	public void attachDirty(Checkinorder instance) {
		log.debug("attaching dirty Checkinorder instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Checkinorder instance) {
		log.debug("attaching clean Checkinorder instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static CheckinorderDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (CheckinorderDAO) ctx.getBean("CheckinorderDAO");
	}
	*/
}
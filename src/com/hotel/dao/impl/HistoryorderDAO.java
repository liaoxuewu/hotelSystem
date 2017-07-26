package com.hotel.dao.impl;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hotel.dao.IHistoryorderDAO;
import com.hotel.entity.Historyorder;

/**
 * A data access object (DAO) providing persistence and search support for
 * Historyorder entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.hotel.entity.Historyorder
 * @author MyEclipse Persistence Tools
 */
public class HistoryorderDAO extends HibernateDaoSupport implements IHistoryorderDAO{
	private static final Logger log = LoggerFactory
			.getLogger(HistoryorderDAO.class);
	// property constants
	public static final String CUSTOMER_NAME = "customerName";
	public static final String CUSTOMER_ID = "customerId";
	public static final String ROOM_ID = "roomId";
	public static final String DAYS = "days";
	public static final String CHECKOUTTIME = "checkouttime";
	public static final String INCOME = "income";

	protected void initDao() {
		// do nothing
	}

	public void save(Historyorder transientInstance) {
		log.debug("saving Historyorder instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Historyorder persistentInstance) {
		log.debug("deleting Historyorder instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}
/*
	public Historyorder findById(java.lang.Integer id) {
		log.debug("getting Historyorder instance with id: " + id);
		try {
			Historyorder instance = (Historyorder) getHibernateTemplate().get(
					"com.hotel.entity.Historyorder", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Historyorder instance) {
		log.debug("finding Historyorder instance by example");
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
		log.debug("finding Historyorder instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Historyorder as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByCustomerName(Object customerName) {
		return findByProperty(CUSTOMER_NAME, customerName);
	}

	public List findByCustomerId(Object customerId) {
		return findByProperty(CUSTOMER_ID, customerId);
	}

	public List findByRoomId(Object roomId) {
		return findByProperty(ROOM_ID, roomId);
	}

	public List findByDays(Object days) {
		return findByProperty(DAYS, days);
	}

	public List findByCheckouttime(Object checkouttime) {
		return findByProperty(CHECKOUTTIME, checkouttime);
	}

	public List findByIncome(Object income) {
		return findByProperty(INCOME, income);
	}
*/
	public List findAll() {
		log.debug("finding all Historyorder instances");
		try {
			String queryString = "from Historyorder";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Historyorder merge(Historyorder detachedInstance) {
		log.debug("merging Historyorder instance");
		try {
			Historyorder result = (Historyorder) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

}
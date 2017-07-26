package com.hotel.entity;

/**
 * Checkinorder entity. @author MyEclipse Persistence Tools
 */

public class Checkinorder implements java.io.Serializable {

	// Fields

	private Integer checkinOrderId;
	private String roomId;
	private String customeName;
	private String customerId;
	private String customePhoneNumber;
	private Integer days;
	private Double payment;

	// Constructors

	/** default constructor */
	public Checkinorder() {
	}

	/** full constructor */
	public Checkinorder(String roomId, String customeName, String customerId,
			String customePhoneNumber, Integer days, Double payment) {
		this.roomId = roomId;
		this.customeName = customeName;
		this.customerId = customerId;
		this.customePhoneNumber = customePhoneNumber;
		this.days = days;
		this.payment = payment;
	}

	// Property accessors

	public Integer getCheckinOrderId() {
		return this.checkinOrderId;
	}

	public void setCheckinOrderId(Integer checkinOrderId) {
		this.checkinOrderId = checkinOrderId;
	}

	public String getRoomId() {
		return this.roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String getCustomeName() {
		return this.customeName;
	}

	public void setCustomeName(String customeName) {
		this.customeName = customeName;
	}

	public String getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getCustomePhoneNumber() {
		return this.customePhoneNumber;
	}

	public void setCustomePhoneNumber(String customePhoneNumber) {
		this.customePhoneNumber = customePhoneNumber;
	}

	public Integer getDays() {
		return this.days;
	}

	public void setDays(Integer days) {
		this.days = days;
	}

	public Double getPayment() {
		return this.payment;
	}

	public void setPayment(Double payment) {
		this.payment = payment;
	}

}
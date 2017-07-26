package com.hotel.entity;

/**
 * Reserveorder entity. @author MyEclipse Persistence Tools
 */

public class ReserveOrder implements java.io.Serializable {

	// Fields

	private Integer id;
	private String customerName;
	private String customerPhoneNumber;
	private String roomId;
	private String date;
	private String days;

	// Constructors

	/** default constructor */
	public ReserveOrder() {
	}

	/** full constructor */
	public ReserveOrder(String customerName, String customerPhoneNumber,
			String roomId, String date, String days) {
		this.customerName = customerName;
		this.customerPhoneNumber = customerPhoneNumber;
		this.roomId = roomId;
		this.date = date;
		this.days = days;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerPhoneNumber() {
		return this.customerPhoneNumber;
	}

	public void setCustomerPhoneNumber(String customerPhoneNumber) {
		this.customerPhoneNumber = customerPhoneNumber;
	}

	public String getRoomId() {
		return this.roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDays() {
		return this.days;
	}

	public void setDays(String days) {
		this.days = days;
	}

}
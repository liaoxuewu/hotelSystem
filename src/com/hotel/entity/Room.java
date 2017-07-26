package com.hotel.entity;

/**
 * Room entity. @author MyEclipse Persistence Tools
 */

public class Room implements java.io.Serializable {

	// Fields

	private Integer roomId;
	private String level;
	private String type;
	private String staus;
	private Double price;
	private String location;

	// Constructors

	/** default constructor */
	public Room() {
	}

	/** full constructor */
	public Room(String level, String type, String staus, Double price,
			String location) {
		this.level = level;
		this.type = type;
		this.staus = staus;
		this.price = price;
		this.location = location;
	}

	// Property accessors

	public Integer getRoomId() {
		return this.roomId;
	}

	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}

	public String getLevel() {
		return this.level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStaus() {
		return this.staus;
	}

	public void setStaus(String staus) {
		this.staus = staus;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

}
package com.hotel.entity;

/**
 * Staff entity. @author MyEclipse Persistence Tools
 */

public class Staff implements java.io.Serializable {

	// Fields

	private Integer workId;
	private String password;
	private String name;
	private String position;

	// Constructors

	/** default constructor */
	public Staff() {
	}

	/** full constructor */
	public Staff(String password, String name, String position) {
		this.password = password;
		this.name = name;
		this.position = position;
	}

	// Property accessors

	public Integer getWorkId() {
		return this.workId;
	}

	public void setWorkId(Integer workId) {
		this.workId = workId;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

}
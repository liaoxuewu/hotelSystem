package com.hotel.entity;



/**
 * Historyorder entity. @author MyEclipse Persistence Tools
 */

public class Historyorder  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String customerName;
     private String customerId;
     private String roomId;
     private String days;
     private String checkouttime;
     private Double income;
     private String customePhoneNumber;


    // Constructors

    /** default constructor */
    public Historyorder() {
    }

    
    /** full constructor */
    public Historyorder(String customerName, String customerId, String roomId, String days, String checkouttime, Double income, String customePhoneNumber) {
        this.customerName = customerName;
        this.customerId = customerId;
        this.roomId = roomId;
        this.days = days;
        this.checkouttime = checkouttime;
        this.income = income;
        this.customePhoneNumber = customePhoneNumber;
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

    public String getCustomerId() {
        return this.customerId;
    }
    
    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getRoomId() {
        return this.roomId;
    }
    
    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getDays() {
        return this.days;
    }
    
    public void setDays(String days) {
        this.days = days;
    }

    public String getCheckouttime() {
        return this.checkouttime;
    }
    
    public void setCheckouttime(String checkouttime) {
        this.checkouttime = checkouttime;
    }

    public Double getIncome() {
        return this.income;
    }
    
    public void setIncome(Double income) {
        this.income = income;
    }

    public String getCustomePhoneNumber() {
        return this.customePhoneNumber;
    }
    
    public void setCustomePhoneNumber(String customePhoneNumber) {
        this.customePhoneNumber = customePhoneNumber;
    }
   








}
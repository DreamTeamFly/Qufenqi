package com.htl.domain;

import java.util.Date;


public class CustomerTable {

	private int id;
	private String name;
	private String sex;
	private int age;
	private String pwd;
	private String phone;
	private String IDnumber;
	private String email;
	private java.util.Date registerTime;
	
	public CustomerTable()
	{}
	public CustomerTable(String phone,String name,String pwd,int age,String sex,String IDnumber,
			String email)
	{
		this.name=name;
		this.sex=sex;
		this.age=age;
		this.pwd=pwd;
		this.phone=phone;
		this.IDnumber=IDnumber;
		this.email=email;
		this.registerTime=new Date();
	}
	public java.util.Date getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(java.util.Date registerTime) {
		this.registerTime = registerTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getIDnumber() {
		return IDnumber;
	}
	public void setIDnumber(String iDnumber) {
		IDnumber = iDnumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}

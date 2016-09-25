package com.htl.domain;

import java.util.Date;

public class ShopTable {
	private int id;
	private String name;
	private String type;
	private String bossName;
	private String bossPhone;
	private String address;
	private Date enterTime;
	private String state;
	private int rank;
	
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBossName() {
		return bossName;
	}
	public void setBossName(String bossName) {
		this.bossName = bossName;
	}
	public String getBossPhone() {
		return bossPhone;
	}
	public void setBossPhone(String bossPhone) {
		this.bossPhone = bossPhone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getEnterTime() {
		return enterTime;
	}
	public void setEnterTime(Date enterTime) {
		this.enterTime = enterTime;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}

}

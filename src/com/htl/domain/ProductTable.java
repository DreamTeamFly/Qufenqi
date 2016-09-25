package com.htl.domain;

public class ProductTable {
	private int id;
	private String name;
	private double price;
	private String type;//基本类型
	private String materia;//材质
	private String suitable;//适用人群
	private int shop_id;
	private int stock;//库存
	private String imagePath1;
	private String imagePath2;
	private String imagePath3;
	private String imagePath4;
	private String imagePath5;
	private int rank;
	private String state;
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMateria() {
		return materia;
	}
	public void setMateria(String materia) {
		this.materia = materia;
	}
	public String getSuitable() {
		return suitable;
	}
	public void setSuitable(String suitable) {
		this.suitable = suitable;
	}
	public int getShop_id() {
		return shop_id;
	}
	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getImagePath1() {
		return imagePath1;
	}
	public void setImagePath1(String imagePath1) {
		this.imagePath1 = imagePath1;
	}
	public String getImagePath2() {
		return imagePath2;
	}
	public void setImagePath2(String imagePath2) {
		this.imagePath2 = imagePath2;
	}
	public String getImagePath3() {
		return imagePath3;
	}
	public void setImagePath3(String imagePath3) {
		this.imagePath3 = imagePath3;
	}
	public String getImagePath4() {
		return imagePath4;
	}
	public void setImagePath4(String imagePath4) {
		this.imagePath4 = imagePath4;
	}
	public String getImagePath5() {
		return imagePath5;
	}
	public void setImagePath5(String imagePath5) {
		this.imagePath5 = imagePath5;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}

}

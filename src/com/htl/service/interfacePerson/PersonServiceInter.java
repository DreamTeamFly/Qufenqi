package com.htl.service.interfacePerson;

import java.util.List;

import com.htl.basic.BasicServiceInter;
import com.htl.domain.CustomerTable;

public interface PersonServiceInter extends BasicServiceInter {
	/***************店铺与雇员信息********************/
	//添加店铺信息
	//public void addShop(ShopTable shop);
	//显示店铺信息
	//public List<ShopTable> showShop();
	
	//检测雇员是否存在
	//public EmployeeTable checkEmployee(EmployeeTable employee);
	
	
	//添加雇员信息
	//public void addEmployee(EmployeeTable employee);
	//显示雇员信息
	//public List<EmployeeTable> showEmployee();
	
	/***************客户信息********************/
	//添加客户信息
	//public void addCustomer(CustomerTable customer);
	//显示客户信息
	//public List<CustomerTable> showCustomer();
	//检测客户是否存在
	public CustomerTable checkCustomer(CustomerTable customer);
	
	
}

package com.htl.service.interfacePerson;

import java.util.List;

import com.htl.basic.BasicServiceInter;
import com.htl.domain.CustomerTable;

public interface PersonServiceInter extends BasicServiceInter {
	/***************�������Ա��Ϣ********************/
	//��ӵ�����Ϣ
	//public void addShop(ShopTable shop);
	//��ʾ������Ϣ
	//public List<ShopTable> showShop();
	
	//����Ա�Ƿ����
	//public EmployeeTable checkEmployee(EmployeeTable employee);
	
	
	//��ӹ�Ա��Ϣ
	//public void addEmployee(EmployeeTable employee);
	//��ʾ��Ա��Ϣ
	//public List<EmployeeTable> showEmployee();
	
	/***************�ͻ���Ϣ********************/
	//��ӿͻ���Ϣ
	//public void addCustomer(CustomerTable customer);
	//��ʾ�ͻ���Ϣ
	//public List<CustomerTable> showCustomer();
	//���ͻ��Ƿ����
	public CustomerTable checkCustomer(CustomerTable customer);
	
	
}

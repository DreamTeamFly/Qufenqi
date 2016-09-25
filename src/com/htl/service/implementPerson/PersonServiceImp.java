package com.htl.service.implementPerson;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.htl.basic.BasicServiceImp;
import com.htl.service.interfacePerson.PersonServiceInter;
import com.htl.domain.CustomerTable;

@Transactional
public class PersonServiceImp extends BasicServiceImp implements PersonServiceInter {

	
	/***************�������Ա��Ϣ********************/
	


	/***************�ͻ���Ϣ********************/
	

	@Override
	public CustomerTable checkCustomer(CustomerTable customer) {
		
		String hql="from CustomerTable where phone=? and pwd=?";
		//List<CustomerTable> list=sessionFactory.getCurrentSession().createQuery(hql).setString(0, customer.getPhone()+"").setString(1, customer.getPwd()+"").list();

		Object[] parameters={customer.getPhone(),customer.getPwd()};
		List list=this.executeQuery(hql, parameters);
		
		if(list.size()==1)
		{
			System.out.println("����PersonServiceImp��У���½��Ϣ");
			return (CustomerTable)list.get(0);
		}
		else {
			return null;
		}
	}

}

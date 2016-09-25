package test;


import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.htl.domain.CustomerTable;

public class testMain {

	public static void main(String[] args) {
		ApplicationContext aContext=new ClassPathXmlApplicationContext("applicationContext.xml");
		//customerTable customer=(customerTable)aContext.getBean("customer");
		//System.out.println(customer.getName()+"À´·Ã¡£¡£¡£¡£");
		
		SessionFactory sFactory=(SessionFactory)aContext.getBean("sessionFactory");
		Session s=sFactory.openSession();
		CustomerTable customer=new CustomerTable("15180249022","Ìì¿Õ","123",  23,"ÄÐ", "3607820041","wheuif@qq.com" );
		
		Transaction tx=s.beginTransaction();
		s.save(customer);
		tx.commit();
		System.out.println(customer.getId()+" "+customer.getPhone());
	}

}

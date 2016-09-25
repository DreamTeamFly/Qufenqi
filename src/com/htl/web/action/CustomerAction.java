package com.htl.web.action;


import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.htl.domain.CustomerTable;
import com.htl.service.interfacePerson.PersonServiceInter;
import com.htl.web.forms.customerForm;

public class CustomerAction extends DispatchAction {

	private PersonServiceInter inter;
	
	public PersonServiceInter getInter() {
		return inter;
	}
	public void setInter(PersonServiceInter inter) {
		this.inter = inter;
	}
	
	//登陆
	public ActionForward login(ActionMapping mapping,ActionForm form,
				HttpServletRequest request,HttpServletResponse response)throws Exception
	{
		System.out.println("登陆，已经进入CustomerAction.java");
		
		String phone=request.getParameter("account");
		String pwd=request.getParameter("pwd");
		System.out.println("account:"+phone+" "+"pwd"+pwd);
		
		CustomerTable customer=new CustomerTable();
		customer.setPhone(phone);
		customer.setPwd(pwd);
		
		customer=inter.checkCustomer(customer);
		if(customer != null)
		{
			String loginUserName=customer.getName();
			System.out.println(loginUserName+"已经登陆");
			request.getSession().setAttribute("loginUser", customer);
			return mapping.findForward("ok");
		}
		else {
			System.out.println("账户和密码错误，请重新输入");
			return mapping.findForward("err");
		}
		
	}
	
	//注册 
	public ActionForward register(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)throws Exception
	{
		CustomerTable customer=new CustomerTable();
		//数据已存储在表单对象form里
		customerForm cForm=(customerForm)form;
		
		customer.setName(cForm.getName());
		customer.setPhone(cForm.getPhone());
		customer.setAge(cForm.getAge());
		customer.setPwd(cForm.getPwd());
		customer.setSex(cForm.getSex());
		customer.setEmail(cForm.getEmail());
		customer.setRegisterTime(getThisDate());
		
		System.out.println(cForm.getName()+"  "+cForm.getEmail());
		inter.add(customer);
		return mapping.findForward("ok");
	}
	
	//页面跳转
	public ActionForward showPage(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)throws Exception
	{
		String where=request.getParameter("where");
		if("mainframe".equals(where))
			return mapping.findForward("mainframe");
		else if("myShoppingCart".equals(where))
			return mapping.findForward("myShoppingCart");
		else if("Myaccount".equals(where))
			return mapping.findForward("Myaccount");
		else if("Shop".equals(where))
			return mapping.findForward("Shop");
		else if("yourService".equals(where))
			return mapping.findForward("yourService");
		else {
			return mapping.findForward("mainframe");
		}

	}
	//获取当前时间
	public Date getThisDate()
	{
		java.util.Date date = new java.util.Date();
		//SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		//String d=df.format(date);
		//date=df.parse(d);

		System.out.println("当前时间为 "+date);
		return date;
		
	}
	
}

package com.htl.web.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.htl.domain.ProductTable;
import com.htl.service.interfacePerson.PersonServiceInter;

public class ShopCenterAction extends DispatchAction {
	@Resource
	private PersonServiceInter inter;
	
	public PersonServiceInter getInter() {
		return inter;
	}
	public void setInter(PersonServiceInter inter) {
		this.inter = inter;
	}
	
	//跳转页面
	public ActionForward showPage(ActionMapping mapping,ActionForm form,
				HttpServletRequest request,HttpServletResponse response)throws Exception
	{
		String where=request.getParameter("where");
		if("mainframe".equals(where))
			return mapping.findForward("mainframe");
		else if("ruleCenter".equals(where))
			return mapping.findForward("ruleCenter");
		else if("safetyCenter".equals(where))
			return mapping.findForward("safetyCenter");
		else if("serviceCenter".equals(where))
			return mapping.findForward("serviceCenter");
		else if("shopBBS".equals(where))
			return mapping.findForward("shopBBS");
		else if("shopFeedback".equals(where))
			return mapping.findForward("shopFeedback");
		else if("employeeManager".equals(where))
			return mapping.findForward("employeeManager");
		
		else {
			return mapping.findForward("mainframe");
		}
		
	}
	//宝贝管理
	public ActionForward managerProduct(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)throws Exception
	{
		String where=request.getParameter("where");
		
		if("productManager".equals(where))//发布宝贝
			return mapping.findForward("productManager");
		else if("storageManager".equals(where))//仓库中的宝贝
		{
			String what=request.getParameter("what");
			
			if("1".equals(what))//仓库中的宝贝，搜索全部
			{
				List<ProductTable> list=QueryStorageProductAll();//返回查询结果
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println(list.get(0).getName()+" , "+request.getSession().getAttribute("StorageProduct").toString());
			}
			else if("2".equals(what))//仓库中的宝贝，搜索售完下架的
			{
				
				List<ProductTable> list=QueryStorageProduct("售完下架");//返回查询结果
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println("仓库中的宝贝，搜索售完下架的"+request.getSession().getAttribute("StorageProduct")+"  测试");
			}
			else if("3".equals(what))//仓库中的宝贝，搜索我下架的
			{
				List<ProductTable> list=QueryStorageProduct("已下架");//返回查询结果
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println("仓库中的宝贝，搜索我下架的");
			}
			else if("4".equals(what))//仓库中的宝贝，搜索从未上架的
			{
				List<ProductTable> list=QueryStorageProduct("0");//返回查询结果
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println("仓库中的宝贝，搜索从未上架的");
			}
			else if("5".equals(what))//仓库中的宝贝，搜索被下架的违规商品
			{
				List<ProductTable> list=QueryStorageProduct("违规");//返回查询结果
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println("仓库中的宝贝，搜索被下架的违规商品");
			}
			
			return mapping.findForward("storageManager");	
		}
		
		else {
			return mapping.findForward("storageManager");
		}
		
		
	}
	//查询仓库中所有的宝贝
	public List<ProductTable> QueryStorageProductAll()
	{
		String hql="from ProductTable where state not like '正常' or state not like '%热销%' ";
		
		//调用basic中的查询方法即可
		List<ProductTable> list=inter.executeQuery(hql, null);
		return list;
	}
	//按条件查询仓库中的宝贝
	public List<ProductTable> QueryStorageProduct(String state)
	{
		String hql="select * from ProductTable where state=?";
		Object[] parameters={state};
		//调用basic中的查询方法即可
		
		return null;
	}

}

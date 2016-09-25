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
	
	//��תҳ��
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
	//��������
	public ActionForward managerProduct(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)throws Exception
	{
		String where=request.getParameter("where");
		
		if("productManager".equals(where))//��������
			return mapping.findForward("productManager");
		else if("storageManager".equals(where))//�ֿ��еı���
		{
			String what=request.getParameter("what");
			
			if("1".equals(what))//�ֿ��еı���������ȫ��
			{
				List<ProductTable> list=QueryStorageProductAll();//���ز�ѯ���
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println(list.get(0).getName()+" , "+request.getSession().getAttribute("StorageProduct").toString());
			}
			else if("2".equals(what))//�ֿ��еı��������������¼ܵ�
			{
				
				List<ProductTable> list=QueryStorageProduct("�����¼�");//���ز�ѯ���
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println("�ֿ��еı��������������¼ܵ�"+request.getSession().getAttribute("StorageProduct")+"  ����");
			}
			else if("3".equals(what))//�ֿ��еı������������¼ܵ�
			{
				List<ProductTable> list=QueryStorageProduct("���¼�");//���ز�ѯ���
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println("�ֿ��еı������������¼ܵ�");
			}
			else if("4".equals(what))//�ֿ��еı�����������δ�ϼܵ�
			{
				List<ProductTable> list=QueryStorageProduct("0");//���ز�ѯ���
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println("�ֿ��еı�����������δ�ϼܵ�");
			}
			else if("5".equals(what))//�ֿ��еı������������¼ܵ�Υ����Ʒ
			{
				List<ProductTable> list=QueryStorageProduct("Υ��");//���ز�ѯ���
				request.getSession().setAttribute("StorageProduct", list);
				System.out.println("�ֿ��еı������������¼ܵ�Υ����Ʒ");
			}
			
			return mapping.findForward("storageManager");	
		}
		
		else {
			return mapping.findForward("storageManager");
		}
		
		
	}
	//��ѯ�ֿ������еı���
	public List<ProductTable> QueryStorageProductAll()
	{
		String hql="from ProductTable where state not like '����' or state not like '%����%' ";
		
		//����basic�еĲ�ѯ��������
		List<ProductTable> list=inter.executeQuery(hql, null);
		return list;
	}
	//��������ѯ�ֿ��еı���
	public List<ProductTable> QueryStorageProduct(String state)
	{
		String hql="select * from ProductTable where state=?";
		Object[] parameters={state};
		//����basic�еĲ�ѯ��������
		
		return null;
	}

}

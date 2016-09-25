package com.htl.basic;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class BasicServiceImp implements BasicServiceInter {

	@Resource
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Object findById(Class clazz, Serializable id) {
		return this.sessionFactory.getCurrentSession().get(clazz, id);
	}

	@Override
	public List executeQuery(String hql, Object[] parameters) {
		Query query=this.sessionFactory.getCurrentSession().createQuery(hql);

		//ע��?ֵ
		if(parameters!=null && parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i, parameters[i]);
				
			}
		}
		
		return query.list();
	}

	
	@Override
	public void add(Object obj) {
		this.sessionFactory.getCurrentSession().save(obj);

	}

	@Override
	public List executeUpdate(String hql, Object[] parameters) {
		//Session session=this.sessionFactory.getCurrentSession();
		//session.update(hql, parameters);
		return null;
	}

	@Override
	public Object uniqueQuery(String hql, Object[] parameters) {
		Query query=this.sessionFactory.getCurrentSession().createQuery(hql);
		//��?��ֵ
		if(parameters!=null && parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i, parameters[i]);
			}
		}
		return query.uniqueResult();
	}

	@Override
	public int queryPageCount(String hql, Object[] parameters, int pageSize) {
		//��ȡrowCount
		/*	List list=this.executeQuery(hql, parameters);
			Iterator iteator=list.iterator();
			if(iteator.hasNext()){
				
			}*/
			Object obj=this.uniqueQuery(hql, parameters);
			//System.out.println("obj value= "+ obj);//obj�������rowConunt
			int rowCount=Integer.parseInt(obj.toString());
			
			
			return (rowCount-1)/pageSize+1;
	}

	@Override
	public void delById(Class clazz, Serializable id) {
		Session session=this.sessionFactory.getCurrentSession();
		session.delete(this.findById(clazz, id));
	}

	@Override
	public void update(Object object) {//ͨ���������޸�
		System.out.println("������׼������************");
		this.sessionFactory.getCurrentSession().update(object);

	}
//��ҳ��ѯ
	@Override
	public List executeQueryByPage(String hql, Object[] parameters,
			int pageNow, int PagesSize) {
		
		Query query=this.sessionFactory.getCurrentSession().createQuery(hql);
		
		if(parameters!=null && parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i, parameters[i]);
				
			}
		}
	
		//���ַ�ҳ
		return query.setFirstResult((pageNow-1)*PagesSize).setMaxResults(PagesSize).list();
	
	}

}

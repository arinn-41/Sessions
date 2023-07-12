package com.session;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.mysql.cj.Query;

public class Daodata 
{
	static EntityManagerFactory emf=Persistence.createEntityManagerFactory("wolf");
	static EntityManager em=emf.createEntityManager();
	static EntityTransaction et=em.getTransaction();
	
	public static void car(HttpServletRequest req)
	{
		
		Dtodata d1=new Dtodata();
		d1.setCarno(Integer.parseInt(req.getParameter("carno")));
		d1.setCarname(req.getParameter("carname"));
		d1.setCarprice(Integer.parseInt(req.getParameter("carprice")));
		
		et.begin();
		em.persist(d1);
		et.commit();
	}
	public static List<Dtodata> hero()
	{
		javax.persistence.Query q=em.createQuery("select s from Dtodata s");
		return q.getResultList();
	}
	

}

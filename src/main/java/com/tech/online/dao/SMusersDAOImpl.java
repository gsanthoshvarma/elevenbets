package com.tech.online.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.tech.online.po.SMusersPO;
import com.tech.online.poimpl.SMusersPOlmpl;

public class SMusersDAOImpl implements SMusersDAO {

	public static void main(String[] args) {
		AnnotationConfiguration config = new AnnotationConfiguration().configure();
		SessionFactory sessFacty = config.buildSessionFactory();
		Session session = sessFacty.openSession();
		Transaction tnx = session.beginTransaction();
		SMusersPOlmpl impl = new SMusersPOlmpl();
		impl.setId(7l);
		impl.setUserId("1002");
		impl.setName("admin");
		impl.setPassword("admin");
		impl.setRoleId(1);
		session.save(impl);
		tnx.commit();
	}
	@Override
	public SMusersPO getUserDetails() {
		
		
		return null;
	}

}

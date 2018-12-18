package com.tech.online.util;

import java.io.ObjectStreamException;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
/**
 * 
 * @author GVS
 * Singleton class to get one SeesionFactory object per one application/jvm
 */
public class HibernateUtil {

	private static volatile SessionFactory sessionFactory = null;
	
	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			synchronized(HibernateUtil.class) {
				if(sessionFactory == null) 
					return sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
			}
		}
			return sessionFactory;
	}
	
	private Object readResolve() throws ObjectStreamException {
		return sessionFactory;
	}
	
	private HibernateUtil() {
		super();
		if(sessionFactory != null) {
			throw new RuntimeException("to create SessionFactory please use getInstance() method");
		}
	}
}

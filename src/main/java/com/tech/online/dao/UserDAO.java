package com.tech.online.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.tech.online.poimpl.SMUsersDetailsPOImpl;
import com.tech.online.poimpl.TeamListPOImpl;
import com.tech.online.poimpl.TeamsSMUsersTaggingPOImpl;

public class UserDAO {
	AnnotationConfiguration config;
	SessionFactory sessFacty;
	Session session;

	public UserDAO() {
		config = new AnnotationConfiguration().configure();
		sessFacty = config.buildSessionFactory();
	}

	public Boolean verifyUserAthentication(String user, String pwd) {
		boolean userFound = false;
		try {
			Session session = sessFacty.openSession();
			String SQL_QUERY = " FROM SMUsersDetailsPOImpl s WHERE s.username=:name AND s.passwd=:pwd";
			Query query = session.createQuery(SQL_QUERY);
			query.setParameter("name", user);
			query.setParameter("pwd", pwd);
			List list = query.list();
			if ((list != null) && (list.size() > 0)) {
				userFound = true;
			}
			session.close();

		} catch (Exception e) {
		}
		return userFound;
	}

	public Boolean saveNewRegistrationForm(String user, String pwd, String fname, String lname, String mobile,
			String gender, String gmail, String bday) {
		boolean userFound = false;
		try {

			Session session = sessFacty.openSession();
			Transaction tnx = session.beginTransaction();
			SMUsersDetailsPOImpl userDetailsObj = new SMUsersDetailsPOImpl();
			userDetailsObj.setId(12l);
			userDetailsObj.setUserId("1003");
			userDetailsObj.setUsername(user);
			userDetailsObj.setPasswd(pwd);
			userDetailsObj.setGmail(gmail);
			userDetailsObj.setFirstName(fname);
			userDetailsObj.setLastName(lname);
			userDetailsObj.setMobile(mobile);
			userDetailsObj.setBday(bday);
			userDetailsObj.setGender(gender);
			session.save(userDetailsObj);
			tnx.commit();
			session.close();
			userFound = true;

		} catch (Exception e) {
		}
		return userFound;
	}

	public List<SMUsersDetailsPOImpl> getUserDetails(String user, String pwd) {

		List<SMUsersDetailsPOImpl> userList = null;
		try {
			Session session = sessFacty.openSession();
			String SQL_QUERY1 = " FROM SMUsersDetailsPOImpl  WHERE username=:name AND passwd=:pwd";

			Query query1 = session.createQuery(SQL_QUERY1);
			query1.setParameter("name", user);
			query1.setParameter("pwd", pwd);
			List<SMUsersDetailsPOImpl> list = query1.list();

			if ((list != null) && (list.size() > 0)) {

				userList = list;
			}
			session.close();

		} catch (Exception e) {
			// TODO: handle exception
		}
		return userList;

	}

	public List getMatchesList() {
		List matchList = null;
		try {
			Session session = sessFacty.openSession();
			String SQL_QUERY1 = " FROM MatchesListPOImpl";

			Query matchquery = session.createQuery(SQL_QUERY1);
			List matchlist = matchquery.list();

			if ((matchlist != null) && (matchlist.size() > 0)) {

				matchList = matchlist;
			}
			session.close();

		} catch (Exception e) {
			// TODO: handle exception
		}
		return matchList;

	}

	public List<TeamListPOImpl> getTeamsList() {
		List<TeamListPOImpl> result = null;
		try {
			Session session = sessFacty.openSession();
			String SQL_QUERY1 = " FROM TeamListPOImpl";

			Query teamquery = session.createQuery(SQL_QUERY1);
			List teamlist = teamquery.list();

			if ((teamlist != null) && (teamlist.size() > 0)) {

				result = teamlist;
			}
			session.close();

		} catch (Exception e) {
		}
		return result;

	}

	public List<TeamsSMUsersTaggingPOImpl> getTaggedTeams() {
		List<TeamsSMUsersTaggingPOImpl> result = null;
		try {
			Session session = sessFacty.openSession();
			String SQL_QUERY1 = " FROM TeamsSMUsersTaggingPOImpl";

			Query teamquery = session.createQuery(SQL_QUERY1);
			List teamlist = teamquery.list();

			if ((teamlist != null) && (teamlist.size() > 0)) {

				result = teamlist;
			}
			session.close();

		} catch (Exception e) {
		}
		return result;

	}

}

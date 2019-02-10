package com.tech.online.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.tech.online.controller.GmailExternalController;
import com.tech.online.poimpl.SMUsersDetailsPOImpl;
import com.tech.online.poimpl.TeamsSMUsersTaggingPOImpl;

public class TeamsSMUsersTaggingDAO {
	AnnotationConfiguration config;
	SessionFactory sessFacty;
	Session session;

	public TeamsSMUsersTaggingDAO() {
		config = new AnnotationConfiguration().configure();
		sessFacty = config.buildSessionFactory();
	}

	public Boolean saveSMUsersTaggingTeam(String teamId, String userId,String matchNo) {
		boolean checkTaggingTeam = false;
		try {
			Session session = sessFacty.openSession();
			Transaction tnx = session.beginTransaction();
			TeamsSMUsersTaggingPOImpl smUserTaggingTeams = new TeamsSMUsersTaggingPOImpl();
			smUserTaggingTeams.setTeamId(teamId);
			smUserTaggingTeams.setIsActive(1);
			smUserTaggingTeams.setUsername(userId);
			smUserTaggingTeams.setMatchNo(Integer.parseInt(matchNo));
			session.save(smUserTaggingTeams);
			tnx.commit();
			session.close();
			checkTaggingTeam = true;
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return checkTaggingTeam;
	}
	
	public Boolean checkingSMUsersTaggingTeam(String userId,String matchNo) {
		boolean result=false;
 		 try
          {
 			 Session session = sessFacty.openSession();
 			 Transaction tnx = session.beginTransaction();
 			 tnx = session.beginTransaction();       
             String SQL_QUERY1 =" FROM TeamsSMUsersTaggingPOImpl  WHERE username= :UserId and matchNo=:matchno  ";           
 			Query query1 = session.createQuery(SQL_QUERY1);
 			query1.setParameter("UserId",userId);	
 			query1.setInteger("matchno", Integer.parseInt(matchNo));
 			
 			List<TeamsSMUsersTaggingPOImpl> list = query1.list();
 			if ((list != null) && (list.size() > 0)) {				
 				result=true;
 			}else{
 				result=false;
 			}
 			session.close();				
 	     }
 		 catch (Exception e) {
 			
 		}
 		 return result; 	
	}
	
	public int deleteSMUsersTaggingTeam(String userId,String matchNo) {
		int deleted=0;
 		 try
          {
 			 Session session = sessFacty.openSession();
 			 Transaction tnx = session.beginTransaction();
 			 tnx = session.beginTransaction();       
             String SQL_QUERY1 =" DELETE FROM TeamsSMUsersTaggingPOImpl  WHERE username= :UserId and matchNo=:matchno  ";           
 			Query query1 = session.createQuery(SQL_QUERY1);
 			query1.setParameter("UserId",userId);	
 			query1.setInteger("matchno", Integer.parseInt(matchNo));
 			deleted = query1.executeUpdate();
 			System.out.println("Deleted SM UserTagged"+matchNo+"Username"+userId);
 			session.close();				
 	     }
 		 catch (Exception e) {
 			
 		}
 		 return deleted; 	
	}

}

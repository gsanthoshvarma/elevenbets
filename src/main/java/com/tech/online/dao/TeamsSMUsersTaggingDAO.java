package com.tech.online.dao;

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
	public TeamsSMUsersTaggingDAO(){
	     config = new AnnotationConfiguration().configure();
		 sessFacty = config.buildSessionFactory();		
	}
	
	public Boolean saveSMUsersTaggingTeam(String userId,String teamId) {
		boolean checkTaggingTeam =false;
		 try
         {
			 Session session = sessFacty.openSession();
			 Transaction tnx = session.beginTransaction();
			 TeamsSMUsersTaggingPOImpl smUserTaggingTeams = new  TeamsSMUsersTaggingPOImpl();
			 smUserTaggingTeams.setId(1);
			 smUserTaggingTeams.setTeamId(teamId.substring(1, teamId.length()-1));
			 smUserTaggingTeams.setIsActive(1);
             session.save(smUserTaggingTeams);
     		tnx.commit();
     		session.close();
     		GmailExternalController gmail = new GmailExternalController();
     		String mailID="asudheer.sai@gmail.com";
     		gmail.sendMessageTOExternalGmail("demo1", mailID);
     		checkTaggingTeam = true;
			
				
	}
		 catch (Exception e) {
			// TODO: handle exception
		}
		 return checkTaggingTeam; 	
	}
	

}

package com.tech.online.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tech.online.dao.UserDAO;
import com.tech.online.poimpl.MatchesListPOImpl;
import com.tech.online.poimpl.SMUsersDetailsPOImpl;
import com.tech.online.poimpl.TeamListPOImpl;
import com.tech.online.poimpl.TeamsSMUsersTaggingPOImpl;
@Controller
public class UserController {
	
	@RequestMapping("/UserAthentication")
	public ModelAndView CheckUserAthenticationDetails(@RequestParam("user") String name,@RequestParam("pwd") String password ) {
		
		ModelAndView modelView =null;
		String correspondingJspView = null;
		UserDAO userDao = new UserDAO();
		SMUsersDetailsPOImpl userDetails =null;
		TeamListPOImpl teamDetails =null;
		
		Boolean verifiedUserId = userDao.verifyUserAthentication(name,password);
		System.out.println("Username"+name);
		System.out.println("Password"+password);
		
		if(verifiedUserId==true) {
			List<SMUsersDetailsPOImpl> list =userDao.getUserDetails(name, password);
			List<MatchesListPOImpl>matchDataList = userDao.getMatchesList();
			List<TeamListPOImpl> teamDataList = userDao.getTeamsList();
			List<TeamsSMUsersTaggingPOImpl> teamTaggedList = userDao.getTaggedTeams();
			
			
			userDetails =list.get(0);
			//teamDetails =teamData.get(0);
			modelView = new ModelAndView("productList");
			modelView.addObject("userdetails", userDetails);
			modelView.addObject("matchData",matchDataList);
			modelView.addObject("teamData",teamDataList);
			modelView.addObject("teamTaggedData",teamTaggedList);
			//modelView = new ModelAndView("action_page", AuthenticationMessage, name+"  "+password+"Authentication Successfull");
		}
		else {
			//AuthenticationMessage="Invalid Credental";
			correspondingJspView="Login2";
			
			
		}				
		//modelView = new ModelAndView("AuthenticationMessage",userDetails );
		System.out.println("AuthenticationMethod1");
		System.out.println("AuthenticationMethod2");
	    return modelView;
	    
	}
	
	@RequestMapping("/NewRegistrationForm")
	public ModelAndView saveNewUserDetails(@RequestParam("username") String username,
			@RequestParam("passwd") String password,@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName ,@RequestParam("gender") String gender,
			@RequestParam("bday") String bday,
			@RequestParam("gmail") String gmail,
			@RequestParam("mobile") String mobile ) {
		//String AuthenticationMessage= null;
		ModelAndView modelView =null;
		String correspondingJspView = null;
		UserDAO userDao = new UserDAO();
		
		Boolean verifiedUserId = userDao.saveNewRegistrationForm(username, password,firstName,lastName,mobile,gender,gmail,bday);
		if(verifiedUserId==true) {
			//AuthenticationMessage="Authentication Successfull";
			correspondingJspView="Login2";
			String message ="Congratulations "+username+ " You have successfully registered..!!";
			//modelView = new ModelAndView("action_page", AuthenticationMessage, name+"  "+password+"Authentication Successfull");
			modelView = new ModelAndView(correspondingJspView, "AuthenticationMessage", message);	
		}
		else {
			//AuthenticationMessage="Invalid Credental";
			correspondingJspView="Login2";			
			
		}				
			
	    return modelView;
	    
	}
	
	
	@RequestMapping(value="/UserAthentication1",method =RequestMethod.POST)
	@ResponseBody
	public String CheckUserAthenticationDetails1(@RequestBody String id) {
		//String AuthenticationMessage= null;
//		TeamsSMUsersTaggingDAO smusertagged = new TeamsSMUsersTaggingDAO();
//		smusertagged.saveSMUsersTaggingTeam("preetam", id);
		String message="Successfully saved values";			
	    return message;
	    
	}
	@RequestMapping(value="/SendOtpToMail",method =RequestMethod.POST)
	@ResponseBody
	public String sendingOTP(@RequestBody String id,HttpServletRequest request1) {
		String AuthenticationMessage= null;
		GmailExternalController smusertagged = new GmailExternalController();
		smusertagged.sendOTPExternalGmail("1234", "sandeep.sm541@gmail.com");
		
		String message="Successfully sent OTP to mail";			
	    return message;
	}
	@RequestMapping(value="/varifyOTP",method =RequestMethod.POST)
	@ResponseBody
	public String verifyOTP(@RequestBody String code,HttpServletRequest request) {
		System.out.println("Verify OTP controller");
		try {
			Thread.currentThread().sleep(10000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}finally {
			
		}
		return "";
	}
	

}

package com.tech.online.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.tech.online.dao.TeamsSMUsersTaggingDAO;
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
			List<TeamsSMUsersTaggingPOImpl> teamTaggedList = userDao.getTaggedTeams(name);			
			userDetails =list.get(0);			
			modelView = new ModelAndView("productList");
			modelView.addObject("userdetails", userDetails);
			modelView.addObject("matchData",matchDataList);
			modelView.addObject("teamData",teamDataList);
			modelView.addObject("teamTaggedData",teamTaggedList);			
		}
		else {			
			correspondingJspView="Login2";			
		}		
	    System.out.println("AuthenticationMethod1");
		System.out.println("AuthenticationMethod2");
	    return modelView;	    
	}
	
	
	@RequestMapping(value = "/NewRegistrationForm", method = RequestMethod.POST)
	public ModelAndView saveNewUserDetails(@RequestParam("username") String username,
			@RequestParam("passwd") String password,@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName ,@RequestParam("gender") String gender,
			@RequestParam("bday") String bday,
			@RequestParam(value="gmail",required=false) String gmail,
			@RequestParam("mobile") String mobile) { 
		ModelAndView modelView =null;
		String correspondingJspView = null;
		UserDAO userDao = new UserDAO();		
		Boolean verifiedUserId = userDao.saveNewRegistrationForm(username, password,firstName,lastName,mobile,gender,gmail,bday);
		if(verifiedUserId==true) {			
			correspondingJspView="Login2";
			String message ="Congratulations "+username+ "..! You have successfully registered..!!";			
			modelView = new ModelAndView(correspondingJspView, "AuthenticationMessage", message);	
		}
		else {			
			correspondingJspView="Login2";			
		}			
	    return modelView;
	    
	}	
	
	@RequestMapping(value="/SavingBettingMatchesByUsers",method =RequestMethod.POST)
	@ResponseBody
	public String SaveBettingDetails(String id, String username) {		
		TeamsSMUsersTaggingDAO smusertagged = new TeamsSMUsersTaggingDAO();
		smusertagged.saveSMUsersTaggingTeam(id,username);
		String message="Successfully saved values";			
	    return message;
	    
	}
	
	@RequestMapping(value="/checkExistingUser",method =RequestMethod.POST)
	@ResponseBody
	public String checkingExistingUser(String id) {
		boolean result=false;
		UserDAO userDao = new UserDAO();
		result=userDao.checkExistingUser(id);
		if(result)
		return "true";	
	    return "false";
	    
	}
	
	@RequestMapping(value="/checkingExistingMail",method =RequestMethod.POST)
	@ResponseBody
	public String checkingExistingMail(String mail) {
		boolean result=false;
		UserDAO userDao = new UserDAO();
		result=userDao.checkExistingMail(mail);
		if(result)
		return "true";	
	    return "false";
	    
	}
	
	@RequestMapping(value="/SendOtpToMail",method =RequestMethod.POST)
	@ResponseBody
	public String sendingOTP(@RequestBody String id,HttpServletRequest request1) {		
		Random rnd = new Random();
		int n = 100000 + rnd.nextInt(900000);
		String OTP =String.valueOf(n);
		GmailExternalController smusertagged = new GmailExternalController();
		smusertagged.sendOTPExternalGmail(n, id);							
	    return OTP;
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

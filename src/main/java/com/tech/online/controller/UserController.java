package com.tech.online.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tech.online.dao.ProductDAO;
import com.tech.online.dao.TeamsSMUsersTaggingDAO;
import com.tech.online.dao.UserDAO;
import com.tech.online.poimpl.MatchesListPOImpl;
import com.tech.online.poimpl.SMUsersBettingHistoryPOImpl;
import com.tech.online.poimpl.SMUsersDetailsPOImpl;
import com.tech.online.poimpl.TeamListPOImpl;
import com.tech.online.poimpl.TeamsSMUsersTaggingPOImpl;
@Controller
public class UserController {
	
	@Autowired
	private UserDAO userDao;
	
	@RequestMapping("/UserAthentication")
	public ModelAndView CheckUserAthenticationDetails(@RequestParam("user") String name,@RequestParam("pwd") String password ) {
		
		ModelAndView modelView =null;
		String correspondingJspView = null;		
		SMUsersDetailsPOImpl userDetails =null;
		TeamListPOImpl teamDetails =null;		
		System.out.println("userDao "+userDao);
		Boolean verifiedUserId = userDao.verifyUserAthentication(name,password);
		System.out.println("Username"+name);
		System.out.println("Password"+password);		
		if(verifiedUserId==true) {
			List<SMUsersDetailsPOImpl> list =userDao.getUserDetails(name, password);
			List<MatchesListPOImpl>matchDataList = userDao.getMatchesList();
			
			List<SMUsersBettingHistoryPOImpl> teamDataList = userDao.getTeamsList();
			/*JSONObject responseDetailsJson = new JSONObject();
		    JSONArray jsonArray = new JSONArray();
		    
		    List<Product> teamDataList = new Vector<Product>(cartMap.keySet().size());
		    for(Product p : ) {
		        cartList.add(p);
		        JSONObject formDetailsJson = new JSONObject();
		        formDetailsJson.put("id", "1");
		        formDetailsJson.put("name", "name1");
		       jsonArray.add(formDetailsJson);
		    }
		    responseDetailsJson.put("forms", jsonArray);/
		    */
            Object[] outerObject=new Object[6];
            /*outerObject[0]={'1','sai','CHN','CHN VS BNG','10 Feb 2019','Won'};
            outerObject.push(['2','sandeep','BNG','MI VS BNG','11 MAR 2019',"Progress <span class='glyphicon glyphicon-flag' style='color:yellow'></span>"]);
            outerObject.push(['3','santosh','HYD','DEL VS HYD','19 FEB 2019',"Won <span class='glyphicon glyphicon-flag' style='color:green'></span>"]);
            outerObject.push(['4','santosh','HYD','DEL VS HYD','19 FEB 2019',"Lost <span class='glyphicon glyphicon-flag' style='color:red'></span>"]);
            outerObject.push(['5','sambaiah','HYD','DEL VS HYD','19 FEB 2019',"Progress"]);
            outerObject.push(['6','venkanna','HYD','DEL VS HYD','19 FEB 2019',"Lost <span class='glyphicon glyphicon-flag' style='color:red'></span>"]);
            outerObject.push(['7','chary','HYD','DEL VS HYD','19 FEB 2019',"Progress <span class='glyphicon glyphicon-flag' style='color:yellow'></span>"]);
            outerObject.push(['8','bharat','HYD','DEL VS HYD','19 FEB 2019',"Lost <span class='glyphicon glyphicon-flag' style='color:red'></span>"]);
            outerObject.push(['9','bharat','HYD','DEL VS HYD','19 FEB 2019',"Progress <span class='glyphicon glyphicon-flag' style='color:yellow'></span>"]);
            outerObject.push(['10','bharat','HYD','DEL VS HYD','19 FEB 2019','Progress']);
            outerObject.push(['11','bharat','HYD','DEL VS HYD','19 FEB 2019','Progress']);
            outerObject.push(['12','bharat','HYD','DEL VS HYD','19 FEB 2019','Progress']); */ 
            //Generic Method to implement above structure
			List<Object> namesList = new ArrayList<Object>();
			Object[] objOuter = null;
			if (teamDataList != null && !teamDataList.isEmpty()) {
				objOuter=new Object[teamDataList.size()];
				Iterator itr = teamDataList.iterator();	
				int count=0;
			    while (itr.hasNext()) {
			    	StringBuffer internalData =new StringBuffer();
					Object[] obj = (Object[]) itr.next();
					Object[] obj2 =new Object[obj.length];					
					for(int i=0;i<obj.length;i++){
						String s=obj[i].toString();
						internalData.append("\""+obj[i]+"\"");
						internalData.append(",");						
					}					
					namesList.add(internalData.substring(0,internalData.length()-1));
					count++;				
				}
			    
			}
			//Object[] objects = namesList.toArray();
			//data = (Object[][]) list.toArray(new Object[list.size()][]);
			//Object[][] teamData =(Object[][]) namesList.toArray(new Object[namesList.size()][]);
			
			List<TeamsSMUsersTaggingPOImpl> teamTaggedList = userDao.getTaggedTeams(name);			
			userDetails =list.get(0);			
			modelView = new ModelAndView("productList");
			modelView.addObject("userdetails", userDetails);
			modelView.addObject("matchData",matchDataList);
			modelView.addObject("teamData",namesList);
			modelView.addObject("teamTaggedData",teamTaggedList);			
		}
		else {			
			
			correspondingJspView="Login2";
			String message ="Entered UserName ("+name+") and Password ("+password+")Wrong. Please enter correct UserName.";			
			modelView = new ModelAndView(correspondingJspView, "AuthenticationMessage", message);	
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
			@RequestParam("test") String gmail,
			@RequestParam("mobile") String mobile) { 		
		ModelAndView modelView =null;
		String correspondingJspView = null;
			
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
		String matchNo = id.substring(id.indexOf("id")+2, id.length());
		boolean result =smusertagged.checkingSMUsersTaggingTeam(username, matchNo);
		if(result){
			int a =smusertagged.deleteSMUsersTaggingTeam(username,matchNo);
		}
		smusertagged.saveSMUsersTaggingTeam(id,username,matchNo);
		String message="Successfully saved values";			
	    return message;
	    
	}
	@RequestMapping(value="/sendingJsonFormat",method =RequestMethod.POST)
	@ResponseBody
	public JSONArray sendingJsonFormat(){
		
		List<SMUsersBettingHistoryPOImpl> teamDataList = userDao.getTeamsList();
		JSONObject responseDetailsJson = new JSONObject();
	    JSONArray jsonArray = new JSONArray();

		List<Object> namesList = new ArrayList<Object>();
		if (teamDataList != null && !teamDataList.isEmpty()) {
			Iterator itr = teamDataList.iterator();				
		    while (itr.hasNext()) {				 
				Object[] obj = (Object[]) itr.next();
				String[] col={"Match Number","UserName","Bet","Match","MatchDate","Status"};
				JSONObject formDetailsJson = new JSONObject();
				for(int i=0;i<obj.length;i++){						 
				formDetailsJson.put(col[i], obj[i]);						
				}
				jsonArray.put(formDetailsJson);
			}
		    
		}
		return jsonArray;
	}
	
	@RequestMapping(value="/checkExistingUser",method =RequestMethod.POST)
	@ResponseBody
	public String checkingExistingUser(String id) {
		boolean result=false;		
		result=userDao.checkExistingUser(id);
		if(result)
		return "true";	
	    return "false";
	    
	}
	
	@RequestMapping(value="/checkingExistingMail",method =RequestMethod.POST)
	@ResponseBody
	public String checkingExistingMail(String mail,HttpServletRequest request1) {
		boolean result=false;	
		result=userDao.checkExistingMail(mail);
		if(result)
		return "true";	
	    return "false";
	    
	}
	
	@RequestMapping(value="/SendOtpToMail",method =RequestMethod.POST)
	@ResponseBody
	public String sendingOTP(@RequestBody String id,HttpServletRequest request1) {		
		String OTP =userDao.getOTP(id);
		/*Random rnd = new Random();
		int n = 100000 + rnd.nextInt(900000);
		String OTP =String.valueOf(n);
		GmailExternalController smusertagged = new GmailExternalController();
		smusertagged.sendOTPExternalGmail(n, id);	*/						
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
	
	@RequestMapping(value="/Logout",method =RequestMethod.GET)	
	public ModelAndView logoutApplication() {
		ModelAndView modelView = new ModelAndView("redirect:/");
		return modelView;
	}


	public UserDAO getUserDao() {
		return userDao;
	}


	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}





	
	

}

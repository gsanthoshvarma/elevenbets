<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/css-toggle-switch/latest/toggle-switch.css" rel="stylesheet" />
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>smsoft.com</title>
</head>
<body>
<div id="FirstForm" class="jumbotron banner text-center" >
<div class="container">
   <h1 style="font-family: sans-serif;color:##1abc9c;font-weight: bolder;"><span style="color:#b22f27">T@Lent</span><span style="color:#fdbf48">99</span> BetT!n9</h1>
  <p>The best way to BeT for a lovely TeaM is to enjoy it..!</p>
  <div class="form-group">
     <div class="col-sm-offset-3 col-sm-5">
	    <button id="signin_id" type="submit" class="btn btn-success">Sign In</button>
	    <button id="signup_id" type="submit" class="btn btn-success" onclick="ClickRegistration(this)">Sign Up Form</button>
	    <!-- <a href="#demo" class="btn btn-info" data-toggle="collapse">Term & conditions</a> -->
    </div>
    <!-- <div id="demo" class="collapse">
    Please read the following terms and conditions carefully.
    We welcome users to register our service. 
    Registration process is offered for individual Users and in registration A process you have deposited some little bit amount.
     User can bet any team if user got won. he will get 50/- if lost he lost 50/-.
     This proccess conducting SM Soft Pvt Ltd @Banglore. 
     for any query please call Customer care Number:080445598
    </div> -->
    
    <div><h5 style="font-family: sans-serif;"><span style="color:#b22f27">${AuthenticationMessage}</span></h5></div>
 </div>  
</div>
</div>   
<div id="mainForm" class="jumbotron banner text-center" >
<div class="container">  
  <h1 style="font-family: sans-serif;color:##1abc9c;font-weight: bolder;"><span style="color:#b22f27">T@Lent</span><span style="color:#fdbf48">99</span> BetT!n9</h1>
  <p>The best way to BeT for a lovely TeaM is to enjoy it..!</p>
  <form class="form-horizontal" action='<c:url value="/UserAthentication"/>' >
		    <div class="form-group">
				     <label class="control-label col-sm-5" for="user">UserName:</label>
				      <div class="col-sm-2">
				      <input type="username" class="form-control" id="user" placeholder="Enter Username" name="user"  pattern="[A-Za-z]{1,15}"  required>
				    </div>
		    </div>
		    <div class="form-group">
			      <label class="control-label col-sm-5" for="pwd">Password:</label>
			      <div class="col-sm-2">
			      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
			      </div>
		    </div>
		    <div class="form-group">
		    <div class="col-sm-offset-3 col-sm-5">
			    <button id="submit_id" type="submit" class="btn btn-success">Submit</button>
			    <!-- <button type="submit" class="btn btn-danger">Reset</button>	 -->		      
			    <button id="cancel_btn" class="btn btn-danger"  type="button" >Cancel</button> 
		    </div>		     
		    </div>			    
  </form>    
  </div>
</div>
<div id ="registration" class="jumbotron banner text-center" >
<div class="container">
  <h1 style="font-family: sans-serif;color:##1abc9c;font-weight: bolder;"><span style="color:#b22f27">T@Lent</span><span style="color:#fdbf48">99</span> BetT!n9</h1>
  <p>The best way to BeT for a lovely TeaM is to enjoy it..!</p> 
<h4>smsoft.com</h4>

<form class="form-horizontal" role="form" method="post" action='<c:url value="/NewRegistrationForm"/>' >


<div class="form-group">
<label for="userName" class="control-label col-sm-5 text-success">User Name:</label>
<div class="col-sm-3">
<input type="text" name="username" class="form-control" id="username" placeholder="User Name" onblur="checkingExistingUser(this)" pattern="[A-Za-z]{1,15}"  required>
</div>
</div>
 
<div class="form-group">
<label for="firstName" class="control-label col-sm-5">First Name:</label>
<div class="col-sm-3">
<input type="text" name="firstName" class="form-control" id="firstName" placeholder="First Name" required>
</div>
</div>
 
<div class="form-group">
<label for="lastName" class="control-label col-sm-5">Last Name:</label>
<div class="col-sm-3">
<input type="text" name="lastName" class="form-control" id="lastName" placeholder="Last Name" required>
</div>
</div>
 
<div class="form-group">
<label for="" class="control-label col-sm-5">Gender:</label>
<div class="col-sm-2">
<label class="radio-inline">
<input type="radio" name="gender" id="male" value="male" required>Male
</label>
<label class="radio-inline">
<input type="radio" name="gender" id="female" value="female" required>Female
</label>
 
</div>
</div>
 
 <div class="form-group">
    <label for="bday" class="control-label col-sm-5">Enter your birthday:</label>
    <div class="col-sm-3">
    <input type="date" id="bday" name="bday" required>
    </div>
  </div>
  
 <div class="form-group" >
<label for="gmail" class="control-label col-sm-5">Gmail-Id:</label>
<div class="col-sm-4">
<input type="text"  name="gmail2" class="form-control" id="gmail" required>
<input type="hidden" name="test" id="testing" />
</div>
</div>
<div class="form-group" >
<div class="col-sm-12">
<button type="button" class="btn btn-primary" id="validId" onclick="sendingOTP(this)" >Sending OTP</button>
</div>
<div id="msgID" class="col-sm-21"></div>
</div>

<div class="form-group" id="otp"style="margin-left: 350px;">
<div class="col-sm-2">
<label for="passwd" class="control-label col-sm-5 text-danger">OTP:</label>
</div>
<div class="col-sm-2">
<input type="text" name="otp" class="form-control" id="otp3" placeholder="XXXX" required>
</div>
<div class="col-sm-1">
<img src="http://icons.iconarchive.com/icons/paomedia/small-n-flat/24/sign-check-icon.png" id="otpCodeGreen" style="display:none;padding-top: 5px;">
<img src="http://icons.iconarchive.com/icons/hopstarter/button/24/Button-Close-icon.png" id="otpCodeRed" style="display:none;padding-top: 5px;">
<img src="https://upload.wikimedia.org/wikipedia/commons/b/b9/Youtube_loading_symbol_1_(wobbly).gif" id="otpCodeBusy" style="display:none;padding-top: 5px;">
</div>

<div id="msgID1" class="col-sm-2">
<span>
<input type="button" id="codeVerfication" class="btn btn-primary" value="Verify OTP Code" style="margin-top:5px" onClick="checkingOTP($('#otp3').val())"> 
</span>
</div>

</div>

<div class="form-group">
<label for="passwd" class="control-label col-sm-5">Contact No:</label>
<div class="col-sm-3">
<input type="text" name="mobile" class="form-control" id="mobile" placeholder="XXXXXXXX" required >
</div>
</div>
 
<div class="form-group">
<label for="passwd" class="control-label col-sm-5 text-danger">Password:</label>
<div class="col-sm-3">
<input type="password" name="passwd" class="form-control" id="passwd" placeholder="Password" required>
</div>
<div class="col-sm-3">
<small id="passwordHelp" class="text-danger">
Must be 8-20 characters long.
</small>      
</div>
</div>

<div class="form-group">
<label for="passwd" class="control-label col-sm-5">Confirm Password:</label>
<div class="col-sm-3">
<input type="password" name="confrmpasswd" class="form-control" id="confrmpasswd" placeholder="Confirm Password" required>
</div>
</div>
 
<div class="form-group">
<div class="col-sm-offset-3 col-sm-5">
<button type="submit" class="btn btn-success" id="register" onclick="checkingConfirmPasswords(this)" disabled>Register</button>
<button type="button" class="btn btn-danger" id="register_cancel_btn">Cancel</button>
</div>
</div>
 
</form>
</div>
 
</div><!-- end for class "row" -->
</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	var otp;
	var tempgmail;
	debugger;	
	$("#submit_id").click(function() {
	var name = $("#user").val();
	
	var pwd = $("#pwd").val();
	if(name == '' || pwd !=='')
		{
		$('input[type="submit"]').attr('disabled','disabled');
		}
		/* if (name != pwd) {
			alert("Please provide proper credentails..!");
			return false;
			} */
	})	
	   
	   $("#mainForm").hide();
	   $("#registration").hide();
	   $("#signin_id").click(function(){
		   $("#FirstForm").hide();
		   $("#mainForm").show();
	   })
	   $("#signup_id").click(function(){
		     $("#FirstForm").hide();
		      $("#registration").show();
	  })
	  $("#cancel_btn").click(function(){
		  $("#mainForm").hide();
		   $("#registration").hide();
		  $("#FirstForm").show();
      })
      $("#register_cancel_btn").click(function(){
    	  $("#registration").hide();
		  $("#mainForm").hide();		   
		  $("#FirstForm").show();
      })
      
       
      
      
});
function ClickRegistration(id){	
	$("#otp").hide();
	$("#validId").click(function(){	
	$("#validId").prop('disabled', true);
	$("#gmail").prop('disabled', true);	
  	  $("#otp").show();
		    
	})
	
}
function sendingOTP(id){
	$("#otpCodeGreen","#otpCodeRed","#otpCodeBusy").hide();
	debugger;
	var mail=$("#gmail").val();	
	tempgmail =$("#gmail").val();
	console.log(mail);
	var status=mail;
	var resultCallback;
	
	$.ajax({
		   type : "POST",			
			url : "${home}checkingExistingMail?mail="+status,			
			contentType: "application/json; charset=utf-8",
			data: status,			
            cache: false,           
			success : function(data) {
				console.log("SUCCESS1 "+data);
			if(data==="true"){
				resultCallback=true;
			checkingExistingEmail();
			$("#validId").prop('disabled', false);
			$("#gmail").prop('disabled', false);	
		  	$("#otp").hide();
		  	$("#register").prop('disabled', true);
			
			}
			else{
				resultCallback=false;
				$("#validId").prop('disabled', true);
				$("#gmail").prop('disabled', true);	
			  	$("#otp").show();
			  	$("#register").prop('disabled', false);
				}
			
			},error:function(data) {
				console.log("error "+data);
			}
	   });
	if(!resultCallback){		
		debugger;
	$.ajax({
		   type : "POST",			
			url : "${home}SendOtpToMail?id="+status,			
			contentType: "application/json; charset=utf-8",
			data: status,			
            cache: false,           
			success : function(data) {
			console.log("SUCCESS: "+data);
		        otp=data;
				 $("#msgID").html("Successfully sent OTP..!"); 					
			},error:function(data) {
				console.log("error "+data);
			}
	   });
	}

}

function checkingExistingUser(id){
	debugger;
	var username=$("#username").val();
	if(username != ''){
	var status=username;
	$.ajax({
		   type : "POST",			
			url : "${home}checkExistingUser?id="+username,			
			contentType: "application/json; charset=utf-8",
			data: status,			
            cache: false,           
			success : function(data) {
				if(data=="true"){
				ValidateEmail1();
				$("#register").prop('disabled', true);
				}
				else{
					$("#register").prop('disabled', false);		
				}
			},error:function(data) {
				
			}
	   });
	}

}

function checkingConfirmPasswords(){
	debugger
	var tesing11 =tempgmail;
	$("#testing").attr('value', $("#gmail").val());
	//$("#testing").html();
	//document.getElementById("testing").value = $("#gmail").val();
	var password=$("#passwd").val();
	var confimpassword =$("#confrmpasswd").val();
	if(password != confimpassword)
		alert("Confirm Password should be same as Password.");
}

function ValidateEmail(inputText)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(inputText.value.match(mailformat))
{
document.form1.text1.focus();
return true;
}
else
{
alert("You have entered an invalid email address!");
document.form1.text1.focus();
return false;
}
}

function checkingOTP(code){
	debugger
	$("#otpCodeGreen","#otpCodeRed","#otpCodeBusy").hide();
	if(otp === code){
		$("#otpCodeGreen").show();
		$("#otp").prop('disabled', true);
		$("#register").prop('disabled', false);
		$("#otpCodeRed").hide();
		$("#otpmsg").html("");
	}
	else{
		$("#otpCodeRed").show();
		$("#otpmsg").html("Invalid OTP Please try again..!")
		$("#validId").show();
		$("#register").prop('disabled',true);
	}
		
}

function ValidateEmail1(){
	debugger;
	alert("User is already used.Please use another userid..!");
	return false;
}
function checkingExistingEmail(){
	debugger;
	alert("Email is already used.Please use another gmail..!");
	return false;
}




     
</script></html>
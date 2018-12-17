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
<title>Insert title here</title>
</head>
<body>
<div id="FirstForm" class="jumbotron banner text-center" >
<div class="container">
  <h1>Online Betting Game</h1>
  <p>The best way to pay for a lovely moment is to enjoy it..!</p> 
  <div class="form-group">
     <div class="col-sm-offset-3 col-sm-5">
	    <button id="signin_id" type="submit" class="btn btn-success">Sign In</button>
	    <button id="signup_id" type="submit" class="btn btn-success" onclick="ClickRegistration(this)">Sign Up Form</button>
    </div>
 </div>  
</div>
</div>   
<div id="mainForm" class="jumbotron banner text-center" >
<div class="container">
  <h1>Online Betting Game</h1>
  <p>The best way to pay for a lovely moment is to enjoy it..!</p> 
  <form class="form-horizontal" action="/ElevenBets/UserAthentication">
		    <div class="form-group">
				     <label class="control-label col-sm-5" for="user">UserName:</label>
				      <div class="col-sm-2">
				      <input type="username" class="form-control" id="user" placeholder="Enter Username" name="user"  pattern="[a-z]{1,15}"  required>
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
			    <button type="submit" class="btn btn-danger">Reset</button>
			    <a href="#demo" class="btn btn-info" data-toggle="collapse">Term & conditions</a>  
			    <button id="cancel_btn" class="btn btn-danger"  type="button" >Cancel</button> 
		    </div>
		    <div id="review" class="alert alert-warning">
		    	<strong>Warning!</strong> You should <a href="action_page.jsp" class="alert-link">read this message</a>.
		    </div>   
		    </div>
			    <ul class="pagination">
			    <li class="page-item"><a class="page-link" href="#">Previous</a></li>t
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>    
			  </ul>
  </form>
  <div id="demo" class="collapse">
    The purpose of these Terms & Conditions and Betting Rules is to detail the conditions under 
    which bets are accepted by the Betting SM service. These include the types of bets available, 
    the betting markets, maximum winnings, settlement of any winnings and statutory requirements
     that Betting SM service are required to adhere to. It is the customer's responsibility to ensure 
     that they are fully acquainted and familiar with the rules, terms and conditions under which bets are transacted
  </div>  
  </div>
</div>
<div id ="registration" class="jumbotron banner text-center" >
<div class="container">
  <h1>Online Betting Game</h1>
  <p>The best way to pay for a lovely moment is to enjoy it..!</p> 
<h4>Registration Form With Bootstrap</h4>
<div class="middle  col-md-40 " style="padding: 28px;padding-left: 378px;">
<form class="form-horizontal" role="form" method="post" action="/ElevenBets/NewRegistrationForm">
 
<div class="form-group">
<label for="firstName" class="col-sm-2 control-label">First Name:</label>
<div class="col-sm-6">
<input type="text" name="firstName" class="form-control" id="firstName" placeholder="First Name">
</div>
</div>
 
<div class="form-group">
<label for="lastName" class="col-sm-2 control-label">Last Name:</label>
<div class="col-sm-6">
<input type="text" name="lastName" class="form-control" id="lastName" placeholder="Last Name">
</div>
</div>
 
<div class="form-group">
<label for="" class="col-sm-2 control-label">Gender:</label>
<div class="col-sm-3">
<label class="radio-inline">
<input type="radio" name="gender" id="male" value="male">Male
</label>
<label class="radio-inline">
<input type="radio" name="gender" id="female" value="female">Female
</label>
 
</div>
</div>
 
 <div class="form-group">
    <label for="bday" class="col-sm-2 control-label">Enter your birthday:</label>
    <div class="col-sm-3">
    <input type="date" id="bday" name="bday">
    </div>
  </div>
  
  <div class="form-group">
<label for="passwd" class="col-sm-2 control-label">Gmail-Id:</label>
<div class="col-sm-4">
<input type="text" name="gmail" class="form-control" id="gmail" placeholder="gmailId">
</div>
<div class="col-sm-3">
<button type="button" class="btn btn-primary" id="validId" onclick="sendingOTP(this)" >Valid OTP</button>
</div>
<div id="msgID" class="col-sm-3"></div>
</div>

<div class="form-group" id="otp">
<div class="col-sm-2">
<label for="passwd" class="col-sm-2 control-label">OTP:</label>
</div>
<div class="col-sm-2">
<input type="text" name="otp" class="form-control" id="otp3" placeholder="XXXX">
</div>
<div class="col-sm-1">
<img src="http://icons.iconarchive.com/icons/paomedia/small-n-flat/24/sign-check-icon.png" id="otpCodeGreen" style="display:none;padding-top: 5px;">
<img src="http://icons.iconarchive.com/icons/hopstarter/button/24/Button-Close-icon.png" id="otpCodeRed" style="display:none;padding-top: 5px;">
<img src="https://upload.wikimedia.org/wikipedia/commons/b/b9/Youtube_loading_symbol_1_(wobbly).gif" id="otpCodeBusy" style="display:none;padding-top: 5px;">
</div>

<div id="msgID1" class="col-sm-4">
<span>
<input type="button" id="codeVerfication" class="btn btn-primary" value="Please Verify OTP Code" style="margin-top:5px" onClick="checkingOTP($('#otp3').val())"> 
</span>
</div>

</div>

<div class="form-group">
<label for="passwd" class="col-sm-2 control-label">Contact No:</label>
<div class="col-sm-6">
<input type="text" name="mobile" class="form-control" id="mobile" placeholder="XXXXXXXXXX" >
</div>
</div>
 
<div class="form-group">
<label for="userName" class="col-sm-2 control-label">User Name:</label>
<div class="col-sm-6">
<input type="text" name="username" class="form-control" id="username" placeholder="User Name">
</div>
</div>
 
<div class="form-group">
<label for="passwd" class="col-sm-2 control-label">Password:</label>
<div class="col-sm-6">
<input type="password" name="passwd" class="form-control" id="passwd" placeholder="Password">
</div>
</div>

<div class="form-group">
<label for="passwd" class="col-sm-2 control-label">Confirm Password:</label>
<div class="col-sm-6">
<input type="password" name="confrmpasswd" class="form-control" id="confrmpasswd" placeholder="Confirm Password">
</div>
</div>
 
<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button type="submit" class="btn btn-primary" id="register">Register</button>
<button type="submit" class="btn btn-danger" id="cancel_btn">Cancel</button>
</div>
</div>
 
</form>
</div>
 
</div><!-- end for class "row" -->
</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
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
	debugger
	var mail=$("#gmail").val();
	
	console.log(mail);
	var data=mail;
	$.ajax({
		   type : "POST",			
			url : "${home}SendOtpToMail?mail="+data,			
			data: JSON.stringify(data),
			success : function(data) {
				console.log("SUCCESS: "+data);
				$("#msgID").html(data);					  
			},error:function(data) {
				console.log("error "+data);
			}
	   });

}

function checkingOTP(code){
	debugger
	$("#otpCodeGreen","#otpCodeRed","#otpCodeBusy").hide();
	//$("#otpCodeGreen").show();
	$("#otpCodeRed").show();	
	
	$.ajax({
		   type : "POST",			
			url : "${home}varifyOTP?code="+code,			
			data: JSON.stringify(data),
			success : function(data) {
				$("#otpCodeBusy").hide();
				console.log("SUCCESS: "+data);
				$("#msgID").html(data);					  
			},error:function(data) {
				console.log("error "+data);
			}
	   });
	//$("#msgID1").html("jjjj");	
}

     
</script></html>
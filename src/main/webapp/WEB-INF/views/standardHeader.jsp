<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link type="text/css" href="css/modules/model-pop-up.css" rel="stylesheet"/>

<script src="js/noty/jquery.noty.js" type="text/javascript" ></script>
<script type="text/javascript" src="js/noty/layouts/bottom.js"></script>
  <script type="text/javascript" src="js/noty/layouts/bottomCenter.js"></script>
  <script type="text/javascript" src="js/noty/layouts/bottomLeft.js"></script>
  <script type="text/javascript" src="js/noty/layouts/bottomRight.js"></script>
  <script type="text/javascript" src="js/noty/layouts/center.js"></script>
  <script type="text/javascript" src="js/noty/layouts/centerLeft.js"></script>
  <script type="text/javascript" src="js/noty/layouts/centerRight.js"></script>
  <script type="text/javascript" src="js/noty/layouts/inline.js"></script>
  <script type="text/javascript" src="js/noty/layouts/top.js"></script>
  <script type="text/javascript" src="js/noty/layouts/topCenter.js"></script>
  <script type="text/javascript" src="js/noty/layouts/topLeft.js"></script>
  <script type="text/javascript" src="js/noty/layouts/topRight.js"></script>
<script type="text/javascript" src="js/noty/themes/default.js"></script>	


<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/DWRUtil.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>

<%        
response.setDateHeader("Expires", 0);
response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
/* response.addHeader("Cache-Control", "post-check=0, pre-check=0"); */
response.addHeader("X-Frame-Options", "SAMEORIGIN");
response.addHeader("X-XSS-Protection", "1; mode=block");
response.setHeader("Pragma", "no-cache");
String url=request.getServerName().trim();
%>
<%
	String firstLogin = (String) session.getAttribute("isFirstLogin");
%>
<input type="hidden" name="formAction" id="formAction" value="" />
<input type="hidden" name="entityId" id="entityId" value="" />
<input type="hidden" name="qNo" id="qNo" value="" />
<input type="hidden" name="sqNo" id="sqNo" value="" />
<input type="hidden" name="csrfPreventionToken" id="csrfPreventionToken" value="${csrfPreventionToken}" />
<input type="hidden" name="initiating_url" id="initiating_url" value=""/>
<c:set var="url" value='<%=url %>' />
<div class="page-header gi-no-line header gi-m-n gi-p-b-none" style="background-color: 1abc9c;margin:0px 0 20px; padding-bottom:0px;">
	<div class="row gi-m-n header-bg">
		<div class="col-xs-2 col-sm-2 col-md-2"><div id="magma-logo gi-m-l-sm"><img src="resources/images/talent_logo.png" class="img-rounded" alt="Cinque Terre" width="238" height="121" /></div></div>
		<div class="col-xs-2 col-sm-2 col-md-2"><div id="magma-logo gi-m-l-sm"><img src="resources/images/99_logo.png" class="img-rounded" alt="Cinque Terre" width="105" height="101" /></div></div>
		
		<div class="col-xs-4 col-sm-4 col-md-4  gi-text-center gi-p-t-xs">
			<!-- <div class="body-head-title"> --><h1 style="font-family: sans-serif;color:#f6f2f3;font-weight: bolder;"><span style="color:#b22f27">T@Lent</span><span style="color:#fdbf48">99*</span> CrIckEt BetTin9</h1><br /><h5 style="font-family: sans-serif;color:#f6f2f3;font-weight: bolder;">The best way to bet for a lovely team to enjoy it</h5><!-- </div> -->

		</div>
		<div class="col-xs-1 col-sm-1 col-md-1"><div id="magma-logo gi-m-l-sm"><img src="resources/images/developer2.png" class="img-rounded" alt="Cinque Terre" width="105" height="101" /></div></div>
		<div class="col-xs-2 col-sm-2 col-md-2 gi-text-right gi-p-t-xs">
			UserName : ${userdetails.username}<br />
			Last Login : 2019:02:09 14:00:12<br />
			Change Password<br/>
			<br>
			<button type="button" class="btn btn-default" style="height: 27px;" disabled>Total Amount INR : 500.00 <i class="fa fa-rupee"></i></button>	
			
		</div>
		
		<div class="col-xs-1 col-sm-1 col-md-1 gi-p-t">
			<div class="row">
				<%-- <c:if test="${userProfile.activeDirectoryEnable=='false'}">
					<c:if test="${userProfile.ssoEnabled=='false'}">
					<div class="col-xs-5 col-sm-5 col-md-5 gi-no-padder border-light">			
						<div class="border-dark gi-padder">
							<img src="http://keyhomelimited.co.uk/wp-content/uploads/2014/11/landlords-in-northampton.png" title="Change Password" alt="" onclick="doPasswordChange()"  />
						</div>
					</div>
					</c:if> 
				</c:if> --%>
				
      
				<div class="col-xs-5 col-sm-5 col-md-5 gi-no-padder border-light">
					<div class="border-dark gi-padder"><a href='<c:url value="/Logout/"/>' class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out"></span>Log out</a>
						
					</div>
				</div>
			<!-- <div class="col-xs-4 col-sm-4 col-md-4 gi-no-padder border-light">
					<div class="border-dark gi-padder"><img style="width: 17px; height: 22px; margin-top: -2px;" src="images/navigation.png" alt="" title="" onclick="navigateTo();"/></div>
				</div>
			</div> -->
		</div>
	</div>
</div>
<!-- <!-- Generic modal start -->
<div class="modal fade generic-modal">
  <div class="modal-dialog" id="modalDialog">
    <div class="modal-content">
      <div class="modal-header gi-p-b-xs">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 id="modalTitle" class="modal-title"></h4>
      </div>
      <div class="modal-body gi-p-t-none gi-p-b-none" id="modalBody">
        <iframe src="" style="width:100%;height:100%;background-color:transparent;" scrolling="auto" frameborder="0" allowtransparency="true" id="genericPopupFrame" name="genericPopupFrame" width="100%" height="100%"></iframe>
        <div id="normalContent"></div>
      </div>
    </div>
  </div>
</div> -->
<!-- Generic modal end -->
<!--
<script type='text/javascript'> 


$(document).keydown(function(event){
    if(event.keyCode==123){
    return false;
   }
else if(event.ctrlKey && event.shiftKey && event.keyCode==73){        
      return false;  
   }
});


$(document).on("contextmenu",function(e){        
	   e.preventDefault();
	});

</script>
-->

<!-- Button trigger modal -->
<!-- <div type="button" id="mymodal" data-toggle="modal" data-target="#myModal">
</div> -->

<!-- Modal --> 
<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"  >
  <div class="modal-dialog" role="document">
    <div class="modal-content" >
   <div class="modal-header">
        <h4 class="modal-title text-center" id="myModalLabel">Activity List</h4>
      </div>
      <div class="modal-body">
<table class="table">
  <thead class="thead-inverse table-heaber-css">
    <tr>
      <th class="pop-up-th1">You need to do the following</th>
      <th class="pop-up-th2">Activities you earn</th>
      <th class="pop-up-th3">Bread / Butter</th>
      <th class="pop-up-pop-up-th4"> </th>
    </tr>
  </thead>
   <tbody>
    <tr>
      <td class="pop-up-th1">FI</td>
      <td class="pop-up-th2">1</td>
      <td class="pop-up-th3">Sales</td>
      <td class="pop-up-th4"> </td>
    </tr>
    <tr>
      <td class="pop-up-th1">Enquiry generation</td>
      <td class="pop-up-th2">1</td>
      <td class="pop-up-th3">Sales</td>
      <td class="pop-up-th4"> </td>
    </tr >
    <tr>
      <td class="pop-up-th1">Channel Visit</td>
      <td class="pop-up-th2">1.5</td>
      <td class="pop-up-th3">Sales</td>
      <td class="pop-up-th4"> </td>
    </tr>
     <tr>
      <td class="pop-up-th1">Pre- Sanction Submission Partial</td>
      <td class="pop-up-th2">4</td>
      <td class="pop-up-th3">Sales</td>
      <td class="pop-up-th4"> You should try to collect all documents in one visit, only 1 such entry is allowed in any enquiry, 2nd entry in the same enquiry will not be counted as activity </td>
    </tr>
      <tr>
      <td class="pop-up-th1">Pre Sanction Submission Complete</td>
      <td class="pop-up-th2">10</td>
      <td class="pop-up-th3">Sales</td>
      <td class="pop-up-th4">  </td>
    </tr>
      <tr>
      <td class="pop-up-th1">Post Sanction Submission Partial</td>
      <td class="pop-up-th2">4</td>
      <td class="pop-up-th3">Sales</td>
      <td class="pop-up-th4">You should try to collect all documents in one visit, only 1 such entry is allowed in any enquiry, 2nd entry in the same enquiry will not be counted as activity</td>
    </tr>
        <tr>
      <td class="pop-up-th1">Post Sanct
      ion Submission Complete</td>
      <td class="pop-up-th2">12</td
      >
      <td class="pop-up-th3">Sales</td>
      <td class="pop-up-th4"> </td>
    </tr>
        <tr>
      <td class="pop-up-th1">Collection Visit</td>
      <td class="th2">1</td>
      <td class="pop-up-th3">Collection</td>
      <td class="pop-up-th4"> </td>
    </tr>
  </tbody>
</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">CONTINUE</button>
        
      </div>
    </div>
  </div>
</div>  -->



<script type="text/javascript">		
	$(document).ready(function(){
		
		<%-- var popUpLoad=false;
		popUpLoad = <%=session.getAttribute("showPopupMessage") %>
		    if(popUpLoad){
			jQuery('#mymodal').trigger('click');
			<%session.setAttribute("showPopupMessage",false); %>
		    }
	
		$(".generic-modal").on("hide.bs.modal", function(e) {
			var url = "loading.html";
			document.getElementById("genericPopupFrame").src = url;
			$("#normalContent").html(" ");
		});
		
		if (typeof(Storage) !== "undefined") {
			localStorage.setItem("pos-uid", '${userProfile.userID}');
		}
		 $("#initiating_url").val(window.location.href);
	});
	window.closeModal = function() {
		$('.generic-modal').modal('hide');
	}; --%>
	function doLogout() {	
		//localStorage.removeItem("pos-uid");		
		document.forms[0].method = "POST";
		document.forms[0].formAction= "Logout";
		document.forms[0].action = "UserController.do";
		document.forms[0].submit();
	}
	<%-- function showPopWin(URL,headingText,winWidth, winHeight){
		document.getElementById("modalTitle").innerHTML=headingText;
		if(URL.indexOf(".do")!=-1){
			$("#genericPopupFrame").show();
			document.getElementById("genericPopupFrame").src=URL;
		}
		else{
			$("#genericPopupFrame").hide();
			$("#normalContent").html(URL);
		}
		$("#modalDialog").css({"width":winWidth});
		$("#modalBody").css({"height":winHeight});
		$('.generic-modal').modal('show');
	}
	function doPasswordChange(){
		showPopWin("passwordChangeController.do", "Change Password","50%","350px");
	}
	function navigateTo(){
		var str = "<div class=\"container-fluid\" style=\"padding-right:0px\"><div class=\"search-panel gi-m-n gi-m-t-sm\"><div class=\"row\"><div class=\"col-xs-12 col-sm-12 col-md-12 gi-text-center\"><div class=\"gi-text-md i-font-bold\">Do you want to use the Old UI ? </div><br /> <input class=\"btn btn-submit\" type=\"button\" value=\"Ok\" onclick=\"navigateSubmit();\" />   <input class=\"btn btn-reset\" type=\"button\" value=\"Cancel\" onclick=\"closeModal()\" /></div></div></div></div>";
		showPopWin(str, "Confirmation Alert","30%","110px");
	}
	function navigateSubmit(){
		window.location.href = 'https://sales.magma.co.in:2003/magmasales_old/';
	}
	var firstLogin = '<%=firstLogin%>';
	var ssoEnabled = '${userProfile.ssoEnabled}';
		if (firstLogin == "true" && ssoEnabled=="false") {
			$('.change-password-modal').modal('show');
		}
		//};
		//} 
		function displayAlertMessage(data) {
			var stateName = '${userProfile.stateName}';
			if (stateName == null || stateName == '')
				alert("Your state information is not available. Please contact your Sales helpdesk.");
			else
				alert(data
						+ " is disable for "
						+ stateName
						+ ". Please contact your Sales helpdesk team if you don't belong to "
						+ stateName);
			return;
		} --%>
</script>


<script type="text/javascript">
// JS global varaible to store count of reports requested
/* var reportsRequestCountJS=0;

function generate(type,txt) {
  	var n = noty({
  		text: txt,
  		type: type,
        dismissQueue: true,
  		layout: 'topRight',
  		theme: 'defaultTheme'
  	});
  	
    return n;
  }


$(document).ready(function() {
	if ('${sessionScope.reportsRequestCount}' != 0)
		  {
	  DWRUtil.getNotification('${sessionScope.userProfile.userID}',{
			callback : notificationCallback,
			errorHandler : function(message) {
			},
			exceptionHandler : function(errorString, exception) {
			}
		});
	  
		  }
  }
  );
  
function notificationCallback(data)
{
	
	if(data!=null)
	{
		 var len=data.length;
		 reportsRequestCountJS = data[len-1];
		 for(var i=0;i<len-1;i++)
		 {
		 	generate('information',data[i]+' Downloaded ');
		 }
	}
}
function notificationCall()
{
	
	if(reportsRequestCountJS ==null || reportsRequestCountJS !=0 || '${sessionScope.reportsRequestCount}' != 0)
		{
	DWRUtil.getNotification('${sessionScope.userProfile.userID}',{
			callback : notificationCallback,
			errorHandler : function(message) {
			},
			exceptionHandler : function(errorString, exception) {
			}
		});
		}
} */

</script>


  
  
  
  
  
  
  
  
  
  
  


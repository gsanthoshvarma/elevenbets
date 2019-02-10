<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/2/2016
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
   <title>smsoft.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/css-toggle-switch/latest/toggle-switch.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
  <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css" />
  <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/css/jquery.dataTables.css"/>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>  
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>  
 



 <style> 
.content .content-footer p {
	color: #6d6d6d;
    font-size: 12px;
    text-align: center;
}
.content .content-footer p a {
	color: inherit;
	font-weight: bold;
}
/*	--------------------------------------------------
	:: Table Filter
	-------------------------------------------------- */
.panel {
	border: 1px solid #ddd;
	background-color: #fcfcfc;
}
.panel .btn-group {
	margin: 8px 0 30px;
}
.panel .btn-group .btn {
	transition: background-color .3s ease;
}
.table-filter {
	background-color: #fff;
	border-bottom: 1px solid #eee;
}
.table-filter tbody tr:hover {
	cursor: pointer;
	background-color: #eee;
}
.table-filter tbody tr td {
	padding: 10px;
	vertical-align: middle;
	border-top-color: #eee;
}
.table-filter tbody tr.selected td {
	background-color: #eee;
}
.table-filter tr td:first-child {
	width: 38px;
}
.table-filter tr td:nth-child(2) {
	width: 35px;
}
.ckbox {
	position: relative;
}
.ckbox input[type="checkbox"] {
	opacity: 0;
}
.ckbox label {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
.ckbox label:before {
	content: '';
	top: 1px;
	left: 0;
	width: 18px;
	height: 18px;
	display: block;
	position: absolute;
	border-radius: 2px;
	border: 1px solid #bbb;
	background-color: #fff;
}
.ckbox input[type="checkbox"]:checked + label:before {
	border-color: #2BBCDE;
	background-color: #2BBCDE;
}
.ckbox input[type="checkbox"]:checked + label:after {
	top: 3px;
	left: 3.5px;
	content: '\e013';
	color: #fff;
	font-size: 11px;
	font-family: 'Glyphicons Halflings';
	position: absolute;
}
.table-filter .star {
	color: #ccc;
	text-align: center;
	display: block;
}
.table-filter .star.star-checked {
	color: #F0AD4E;
}
.table-filter .star:hover {
	color: #ccc;
}
.table-filter .star.star-checked:hover {
	color: #F0AD4E;
}
.table-filter .media-photo {
	width: 35px;
}
.table-filter .media-body {
    display: block;
    width: 500;
}
.table-filter .media-meta {
	font-size: 11px;
	color: #999;
}
.table-filter .media .title {
	color: #2BBCDE;
	font-size: 14px;
	font-weight: bold;
	line-height: normal;
	margin: 0;
}
.table-filter .media .title span {
	font-size: .8em;
	margin-right: 20px;
}
.table-filter .media .title span.pagado {
	color: #5cb85c;
}
.table-filter .media .title span.pendiente {
	color: #f0ad4e;
}
.table-filter .media .title span.cancelado {
	color: #d9534f;
}
.table-filter .media .summary {
	font-size: 14px;
}
  </style> 
  <script type="text/javascript">
  $(document).ready(function(){

		$('.star').on('click', function () {
	      $(this).toggleClass('star-checked');
	    });

	    $('.ckbox label').on('click', function () {
	      $(this).parents('tr').toggleClass('selected');
	    });

	    $('.btn-filter').on('click', function () {
	      var $target = $(this).data('target');
	      if ($target != 'all') {
	        $('.table tr').css('display', 'none');
	        $('.table tr[data-status="' + $target + '"]').fadeIn('slow');
	      } else {
	        $('.table tr').css('display', 'none').fadeIn('slow');
	      }
	    });
	});
  </script> 
  <script type="text/javascript">
  $(document).ready(function(){
	  debugger;
	  //var data="${teamData}"
	  var countt = 0;
	  <c:forEach items="${matchData}" var="element" varStatus="loop" >	
	      var team1="${element.teamLogo1}";
	      var team2="${element.teamLogo2}";
	      var date="${element.matchDate}";
	      var loopCounter="${loop.count}";
	      
	      countt= countt + 1;
	      $('#foo').append('<div  class="col-sm-12" style="color:blue;size:35px;font-size:20;font-family: cursive;font-variant:ordinal">&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</div><div class="container-fluid" style="border-bottom:1px solid #cecece;"><div class="col-sm-12" style="color:blue;size:35px;font-size:20;font-family: cursive;font-variant:ordinal;style="color: chocolate;size:35px;font-size: 20;font-family: cursive;font-variant:ordinal;">'+loopCounter+'# Match Date ----- '+date+'</div><div class="row" style="margin-right: 108px;margin-top:30px;"><div id="Ateam" class="col"><img src='+ team1 +' class="img-rounded" alt="Cinque Terre" width="304" height="236"></div>'
	    		  +'<div class="col" style="margin-top:47px margin-right:43px;"><img src="https://thumbs.dreamstime.com/b/versus-sign-comic-style-vector-illustration-89437295.jpg" class="img-rounded" alt="Cinque Terre" width="220" height="121"/></div><div id="Bteam" class="column" style="margin-left:-55px;"><img src=' +team2 +' class="img-rounded" alt="Cinque Terre" width="304" height="236"></div></div>'
	    		  +' <div class="col btn-group btn-toggle" style="margin-right:78px"><button id="team1_id'+loopCounter+'" type="submit" class="btn btn-default" data-toggle="collapse" data-target="#collapsibleteam1_id'+loopCounter+'" onclick="callBack_Team1(this)" value="sub">Team1</button>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;'
	    		  +'<button id="vs_id'+loopCounter+'" type="submit" class="btn btn-danger">VS</button>'
	    		  +'<button id="team2_id'+loopCounter+'" type="submit" class="btn btn-default" data-toggle="collapse" data-target="#collapsibleteam2_id'+loopCounter+'" onclick="callBack_Team2(this)">Team2</button><div class="collapse" id="collapsibleteam1_id'+loopCounter+'" style="color:red;"><p>&nbsp; &nbsp;YOU HAVE SUCCESSFULLY BETTED ON Team1 '+'<img src='+team1+' alt="Smiley face" width="70" height="70">'+'</p></div><div class="collapse" id="collapsibleteam2_id'+loopCounter+'" style="color:red;"><p>&nbsp; &nbsp;YOU HAVE SUCCESSFULLY BETTED ON Team2 '+'<img src='+team2+' alt="Smiley face" width="70" height="70">'+'</p></div>'	    		
	    		  +'</div><div  class="col-sm-12" style="color:blue;size:35px;font-size:20;font-family: cursive;font-variant:ordinal">&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</div></div>');
	    
	      /* var teamA='team1_id'.concat(countt);	   
		   var teamB ='team2_id'.concat(countt);
		   var collapsibleTeamA='collapsibleTeam1_id'.concat(countt);
		   var collapsibleTeamB='collapsibleTeam2_id'.concat(countt);
		   $("#"+teamA).click(function(event) {
			   $("#"+collapsibleTeamA).show();
			   $("#"+teamA).prop('disabled', true);
			 
			 });
		   $("#"+teamB).click(function(event) {
			   $("#"+collapsibleTeamA).hide();
			   $("#"+collapsibleTeamB).show();
			   $("#"+teamB).prop('disabled', true);
			   $("#"+teamA).prop('enabled', true); */
			  
			// });
	   </c:forEach> 
	    
	   <c:forEach items="${teamTaggedData}" var="element1" varStatus="loop" >
	   var selectedTeam ="${element1.teamId}";
	   var collapsible='collapsible'.concat(selectedTeam);
	   $('#'+selectedTeam).prop('disabled', true);
	   $('#'+selectedTeam).removeClass( "btn-default" ).addClass("btn btn-success");
	   $('#'+selectedTeam).text("Bet On");
	    $('#'+collapsible).show();
	    </c:forEach>
	    
	    var cfmHeaders = ['Match No','User Name','Bet','Match','Match Date','Status'], rows=[];		
		var data=[];
		var smiti=${teamData};
		var smitiData=[];
		
		<c:forEach var="listValue" items="${teamData}">
		smitiData.push([${listValue}])
	    </c:forEach>
		    //;
		data.push(["1,sai,CHN,CHN VS BNG,10 Feb 2019,Won"]);
		data.push(['2','sandeep','BNG','MI VS BNG','11 MAR 2019',"Progress <span class='glyphicon glyphicon-flag' style='color:yellow'></span>"]);
		data.push(['3','santosh','HYD','DEL VS HYD','19 FEB 2019',"Won <span class='glyphicon glyphicon-flag' style='color:green'></span>"]);
		data.push(['4','santosh','HYD','DEL VS HYD','19 FEB 2019',"Lost <span class='glyphicon glyphicon-flag' style='color:red'></span>"]);
		data.push(['5','sambaiah','HYD','DEL VS HYD','19 FEB 2019',"Progress"]);
		data.push(['6','venkanna','HYD','DEL VS HYD','19 FEB 2019',"Lost <span class='glyphicon glyphicon-flag' style='color:red'></span>"]);
		data.push(['7','chary','HYD','DEL VS HYD','19 FEB 2019',"Progress <span class='glyphicon glyphicon-flag' style='color:yellow'></span>"]);
		data.push(['8','bharat','HYD','DEL VS HYD','19 FEB 2019',"Lost <span class='glyphicon glyphicon-flag' style='color:red'></span>"]);
		data.push(['9','bharat','HYD','DEL VS HYD','19 FEB 2019',"Progress <span class='glyphicon glyphicon-flag' style='color:yellow'></span>"]);
		data.push(['10','bharat','HYD','DEL VS HYD','19 FEB 2019','Progress']);
		data.push(['11','bharat','HYD','DEL VS HYD','19 FEB 2019','Progress']);
		data.push(['12','bharat','HYD','DEL VS HYD','19 FEB 2019','Progress']);  
		
		var columns = generateHeader(cfmHeaders);
		if(smitiData!=null){
			mainData = smitiData;
			for(var i=0;i<data.length;i++){
				var rowArray = [];
				for (j = 0; j < data[i].length ; j++) {
					rowArray[j] = data[i][j];
				}
				rows.push(rowArray);
			}
		}
		
		/*  $.ajax({
			 debugger
				url : "${home}sendingJsonFormat,
				method: 'post',
	            datatype: 'json',
				contentType: "application/json; charset=utf-8",			          
				success : function(data) {			
					 $('#mastersTable').dataTable({
	                        data: data,
	                        "columns": [
	                        { "data": "Match Number" },
	                        { "data": "UserName" },
	                        { "data": "Bet" },
	                        { "data": "Match" },
	                        { "data": "MatchDate" },
	                        { "data": "Status" }
	                        ]
	                    });
	                },error:function(data) {
					console.log("error "+data);
				}
		   }); */
		var table = $("#mastersTable").DataTable({			      
			"columns" : columns,
			"data" : smitiData,			
			"paging" : true,
			"scrollY" : 500,
			"scrollX" : 200,
			"searching" : true,
			dom : 'Zlfrtip',
			"colResize": {
	            "tableWidthFixed": false
	        },
			"bAutoWidth" : false,
			"bDestroy" : true,
			"columnDefs": [{ "searchable": false, "targets": [0,3,4] }],
			language: { searchPlaceholder: "Username or Bet"} 
		}); 
	    
	    
	});
  
  function generateHeader(columnNames){
		var columns = [], columnNamesLength = columnNames.length;
		for (i = 0; i < columnNamesLength; i++) {
			localColumnName = columnNames[i];
			columns.push({
				title : columnNames[i]
			});
		}
		return columns;
	}
    
    function callBack_Team1(butn){
    	debugger;
	   console.log("Team A id--"+butn.id);
	   var id=butn.id;	  
	   var currentId=id.split("team1_id");
	   var finalId=currentId[1];
	   var teamB ='team2_id'.concat(finalId);
	   var collapsibleTeamA='collapsibleteam1_id'.concat(finalId);
	   var collapsibleTeamB='collapsibleteam2_id'.concat(finalId);
	   $('#'+collapsibleTeamB).hide();
	   $('#'+collapsibleTeamA).show();
	   $('#'+teamB).prop('disabled',false);	  
	   $('#'+teamB).removeClass("btn btn-success").addClass("btn btn-default");
	   $('#'+teamB).text("Team2");
	   $('#'+id).prop('disabled', true);
	   $('#'+id).removeClass( "btn-default" ).addClass("btn btn-success");
	   $("#"+id).text("Bet On");	   
	   var username='${userdetails.username}';	   
	   $.ajax({
			type : "POST",			
			url : "${home}SavingBettingMatchesByUsers?id="+id+"&username="+username,
			contentType: "application/json; charset=utf-8",			          
			success : function(data) {			
				console.log("SUCCESS: "+data);		        				
			},error:function(data) {
				console.log("error "+data);
			}
	   });
	   
   }
    function callBack_Team2(butn){
    	debugger
	   console.log("Team B id--"+butn.id);
	   var id=butn.id;	  
	   var currentId=id.split("team2_id");
	   var finalId=currentId[1];
	   var teamA='team1_id'.concat(finalId);
	   var collapsibleTeamA='collapsibleteam1_id'.concat(finalId);
	   var collapsibleTeamB='collapsibleteam2_id'.concat(finalId);
	   $('#'+collapsibleTeamA).hide();
	   $('#'+collapsibleTeamB).show();
	   $('#'+teamA).prop('disabled', false);
	   $('#'+teamA).removeClass("btn btn-success").addClass("btn btn-default");
	   $('#'+teamA).text("Team1");
	   $('#'+id).prop('disabled', true);
	   $('#'+id).removeClass( "btn-default" ).addClass("btn btn-success");
	   $("#"+id).text("Bet On");	   
       var username='${userdetails.username}';
	   
	   $.ajax({
			type : "POST",			
			url : "${home}SavingBettingMatchesByUsers?id="+id+"&username="+username,
			contentType: "application/json; charset=utf-8",			          
			success : function(data) {			
				console.log("SUCCESS: "+data);		        				
			},error:function(data) {
				console.log("error "+data);
			}
	   });
	   
   } 
  </script>
</head>
</head>
<style>
* {
    box-sizing: border-box;
}

.column {
    float: left;
    width: 33.33%;
    padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
    content: "";
    clear: both;
    display: table;
}
</style>
<body>
<div class="header">
		<%@include file="./standardHeader.jsp"%>
		</div>


<div class="container">
<ul class="nav nav-tabs ">
    <li class="active"><a data-toggle="tab" href="#home" style="background-color:#b22f27; color:#efebec;  border-radius:40px 0px 0 0"><span class="glyphicon glyphicon-home"></span>Betting Activity History</a></li>
    <li><a data-toggle="tab" href="#menu1" style="background-color:#fdbf48; color:#b12f26;; border-radius:40px 0px 0 0" ><span class="glyphicon glyphicon-flag"></span> Match Dashboard</a></li>
    <li><a data-toggle="tab" href="#menu2" style="background-color:#b22f27; color:#efebec;  border-radius:40px 0px 0 0"><span class="glyphicon glyphicon-time"></span> Betting Dashboard</a></li>
    <li><a data-toggle="tab" href="#menu4" style="background-color:#fdbf48; color:#b12f26; border-radius:40px 0px 0 0"><span class="glyphicon glyphicon-user"></span> Transaction Dashboard</a></li>
    <li><a data-toggle="tab" href="#menu3" style="background-color:#b22f27; color:#efebec;  border-radius:40px 0px 0 0"><span class="glyphicon glyphicon-user"></span> Profile Dashboard</a></li>
     <li><a data-toggle="tab" href="#menu3" style="background-color:#fdbf48; color:#b12f26;  border-radius:40px 0px 0 0"><span class="glyphicon glyphicon-user"></span> Ranking Dashboard</a></li>
  </ul>
 <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>SM Users Betting History</h3>
      <p>Betting History for all who registered and match betted</p>     
      <table class="table table-bordered table-striped table-sm" role="grid" style="margin-left: 0px; width: 935.333px;" id="mastersTable" >
     
      </table>
     
    </div>
    <div id="menu1" class="tab-pane fade">
      <div class="container">
	<div class="row">
		<section class="content">
			<h2>Betted SM Users::</h2>
			<div class="col-md-12 col-md-offset-0">					
						<div class="pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-success btn-filter" data-target="won">Won</button>
								<button type="button" class="btn btn-warning btn-filter" data-target="inprogress">InProgress</button>
								<button type="button" class="btn btn-danger btn-filter" data-target="lost">Lost</button>
								<button type="button" class="btn btn-default btn-filter" data-target="all">All</button>
							</div>
						</div>
						<div class="table-responsive">
							<table class="table table-filter">
								<tbody>
									<tr data-status="won">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox1">
												<label for="checkbox1"></label>
											</div>
										</td>
										<td>
											<a href="javascript:;" class="star">
												<i class="glyphicon glyphicon-star"></i>
											</a>
										</td>
										<td>
											<div class="media">
												<a href="#" class="pull-left">
													<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Febrero 13, 2018</span>
													<h4 class="title">
														Narsimha chary(U.S.A)
														<span class="pull-right pagado">(won)</span>
													</h4>
													<p class="summary">Hyderbad vs Bangalore</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="inprogress">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox3">
												<label for="checkbox3"></label>
											</div>
										</td>
										<td>
											<a href="javascript:;" class="star">
												<i class="glyphicon glyphicon-star"></i>
											</a>
										</td>
										<td>
											<div>
												<a href="#" class="pull-left">
													<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Febrero 13, 2016</span>
													<h4 class="title">
														Santosh Varma
														<span class="pull-right pendiente">(inprogress)</span>
													</h4>
													<p class="summary">Delhi vs Chennai</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="lost">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox2">
												<label for="checkbox2"></label>
											</div>
										</td>
										<td>
											<a href="javascript:;" class="star">
												<i class="glyphicon glyphicon-star"></i>
											</a>
										</td>
										<td>
											<div class="media">
												<a href="#" class="pull-left">
													<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Febrero 13, 2016</span>
													<h4 class="title">
														Raju
														<span class="pull-right cancelado">(lost)</span>
													</h4>
													<p class="summary">Chennai vs Hyderabad</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="won" class="selected">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox4" checked>
												<label for="checkbox4"></label>
											</div>
										</td>
										<td>
											<a href="javascript:;" class="star star-checked">
												<i class="glyphicon glyphicon-star"></i>
											</a>
										</td>
										<td>
											<div class="media">
												<a href="#" class="pull-left">
													<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Febrero 13, 2016</span>
													<h4 class="title">
														Sambaiah
														<span class="pull-right pagado">(won)</span>
													</h4>
													<p class="summary">Bangalore vs Chennai</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="inprogress">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox5">
												<label for="checkbox5"></label>
											</div>
										</td>
										<td>
											<a href="javascript:;" class="star">
												<i class="glyphicon glyphicon-star"></i>
											</a>
										</td>
										<td>
											<div class="media">
												<a href="#" class="pull-left">
													<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Febrero 13, 2016</span>
													<h4 class="title">
														Sandeep G
														<span class="pull-right pendiente">(inProgress)</span>
													</h4>
													<p class="summary">Kalkatha vs Mumbai</p>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>				
				<div class="content-footer">
					<p>
						Page © - 2016 <br>
						Powered By <a href="https://www.facebook.com/tavo.qiqe.lucero" target="_blank">TavoQiqe</a>
					</p>
				</div>
			</div>
		</section>		
	</div>
</div>
    </div>
    <div id="menu2" class="tab-pane fade">
    <div id="foo" class="row">  
    </div>
    </div>
    <div id="menu3" class="tab-pane fade">
    <div class="row">
    <div class="middle  col-md-40 " style="padding: 28px;padding-left: 378px;">   
          
   <table class="table table-bordered" style="margin-left: -220px;width: 557.992px;">
    <thead>
      <tr class="success">
        <th>UserName - </th>
        <td>${userdetails.username}</td>        
      </tr>
      <tr class="danger">
        <th>First Name - </th>
        <td>${userdetails.firstName}</td>        
      </tr>
      
      <tr class="active">
        <th>Last Name - </th>
        <td>${userdetails.lastName}</td>        
      </tr><tr class="success">
        <th>Gmail Id - </th>
        <td>${userdetails.gmail}</td>        
      </tr>
      
      <tr class="info">
        <th>Gender - </th>
        <td>${userdetails.gender}</td>        
      </tr>
      <tr class="active">
        <th>Date of Birth - </th>
        <td>${userdetails.bday}</td>        
      </tr>
      <tr class="danger">
        <th>Contact No - </th>
        <td>${userdetails.mobile}</td>        
      </tr>
    </thead>
    </table>        
  
    
    </div>
    </div>
    </div>
  </div>
  

</div> 
<div class="footer">
		<%@include file="./standardFooter.jsp"%>
	</div>		
   
</body>
</html>

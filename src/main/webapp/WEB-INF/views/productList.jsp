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
   <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/css-toggle-switch/latest/toggle-switch.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
  <script type="text/javascript">
  $(document).ready(function(){
	  debugger;
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
	    /* <c:forEach var="j" begin="1" end="4"> 
	   debugger;
	   var i="${j}";
	  
	   </c:forEach> */
	   <c:forEach items="${teamTaggedData}" var="element1" varStatus="loop" >
	   var selectedTeam ="${element1.teamId}";
	   var collapsible='collapsible'.concat(selectedTeam);
	   $('#'+selectedTeam).prop('disabled', true);
	   $('#'+selectedTeam).removeClass( "btn-default" ).addClass("btn btn-success");
	   $('#'+selectedTeam).text("Bet On");
	    $('#'+collapsible).show();
	    </c:forEach>
	    
	});
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
   
   
   /* $("#"+id).click(function(){
	  
	        $("#div1").html(result);
	    }});
	}); */

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

<!-- <div class="jumbotron text-center">

  <h1>Online Betting Game</h1>
  <p>The best way to pay for a lovely moment is to enjoy it..!</p>
  </div> -->
   <!-- <div class="container">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Users</h3>
                <div class="pull-right">
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
            </div>
            <table class="table">
                <thead>
                    <tr class="filters">                    
                        <th><input type="text" class="form-control" placeholder="#" disabled></th>
                        <th><input type="text" class="form-control" placeholder="First Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Last Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Username" disabled></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div> -->
<div class="container">
<ul class="nav nav-tabs ">
    <li class="active"><a data-toggle="tab" href="#home" style="background-color:#f74364"><span class="glyphicon glyphicon-home"></span> Home</a></li>
    <li><a data-toggle="tab" href="#menu1" style="background-color:#22e00c" ><span class="glyphicon glyphicon-flag"></span> Match Dashboard</a></li>
    <li><a data-toggle="tab" href="#menu2" style="background-color:#efd20a"><span class="glyphicon glyphicon-time"></span> Betting Dashboard</a></li>
    <li><a data-toggle="tab" href="#menu3" style="background-color:#9ee2c3"><span class="glyphicon glyphicon-user"></span> Profile Dashboard</a></li>
     <li><a data-toggle="tab" href="#menu3" style="background-color:#9ee2c3"><span class="glyphicon glyphicon-user"></span> Ranking Dashboard</a></li>
  </ul>
 <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor it amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
      <div class="table-wrapper-scroll-y">
      <table id="dtVerticalScrollExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th class="th-sm">Name
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Position
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Office
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Age
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Start date
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Salary
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Tiger Nixon</td>
      <td>System Architect</td>
      <td>Edinburgh</td>
      <td>61</td>
      <td>2011/04/25</td>
      <td>$320,800</td>
    </tr>
    <tr>
      <td>Garrett Winters</td>
      <td>Accountant</td>
      <td>Tokyo</td>
      <td>63</td>
      <td>2011/07/25</td>
      <td>$170,750</td>
    </tr>
    <tr>
      <td>Ashton Cox</td>
      <td>Junior Technical Author</td>
      <td>San Francisco</td>
      <td>66</td>
      <td>2009/01/12</td>
      <td>$86,000</td>
    </tr>
    <tr>
      <td>Cedric Kelly</td>
      <td>Senior Javascript Developer</td>
      <td>Edinburgh</td>
      <td>22</td>
      <td>2012/03/29</td>
      <td>$433,060</td>
    </tr>
    <tr>
      <td>Airi Satou</td>
      <td>Accountant</td>
      <td>Tokyo</td>
      <td>33</td>
      <td>2008/11/28</td>
      <td>$162,700</td>
    </tr>
    <tr>
      <td>Brielle Williamson</td>
      <td>Integration Specialist</td>
      <td>New York</td>
      <td>61</td>
      <td>2012/12/02</td>
      <td>$372,000</td>
    </tr>
    <tr>
      <td>Herrod Chandler</td>
      <td>Sales Assistant</td>
      <td>San Francisco</td>
      <td>59</td>
      <td>2012/08/06</td>
      <td>$137,500</td>
    </tr>
    <tr>
      <td>Rhona Davidson</td>
      <td>Integration Specialist</td>
      <td>Tokyo</td>
      <td>55</td>
      <td>2010/10/14</td>
      <td>$327,900</td>
    </tr>
    <tr>
      <td>Colleen Hurst</td>
      <td>Javascript Developer</td>
      <td>San Francisco</td>
      <td>39</td>
      <td>2009/09/15</td>
      <td>$205,500</td>
    </tr>
    <tr>
      <td>Sonya Frost</td>
      <td>Software Engineer</td>
      <td>Edinburgh</td>
      <td>23</td>
      <td>2008/12/13</td>
      <td>$103,600</td>
    </tr>
    <tr>
      <td>Jena Gaines</td>
      <td>Office Manager</td>
      <td>London</td>
      <td>30</td>
      <td>2008/12/19</td>
      <td>$90,560</td>
    </tr>
    <tr>
      <td>Quinn Flynn</td>
      <td>Support Lead</td>
      <td>Edinburgh</td>
      <td>22</td>
      <td>2013/03/03</td>
      <td>$342,000</td>
    </tr>
    <tr>
      <td>Charde Marshall</td>
      <td>Regional Director</td>
      <td>San Francisco</td>
      <td>36</td>
      <td>2008/10/16</td>
      <td>$470,600</td>
    </tr>
    <tr>
      <td>Haley Kennedy</td>
      <td>Senior Marketing Designer</td>
      <td>London</td>
      <td>43</td>
      <td>2012/12/18</td>
      <td>$313,500</td>
    </tr>
    <tr>
      <td>Tatyana Fitzpatrick</td>
      <td>Regional Director</td>
      <td>London</td>
      <td>19</td>
      <td>2010/03/17</td>
      <td>$385,750</td>
    </tr>
    <tr>
      <td>Michael Silva</td>
      <td>Marketing Designer</td>
      <td>London</td>
      <td>66</td>
      <td>2012/11/27</td>
      <td>$198,500</td>
    </tr>
    <tr>
      <td>Paul Byrd</td>
      <td>Chief Financial Officer (CFO)</td>
      <td>New York</td>
      <td>64</td>
      <td>2010/06/09</td>
      <td>$725,000</td>
    </tr>
    <tr>
      <td>Gloria Little</td>
      <td>Systems Administrator</td>
      <td>New York</td>
      <td>59</td>
      <td>2009/04/10</td>
      <td>$237,500</td>
    </tr>
    <tr>
      <td>Bradley Greer</td>
      <td>Software Engineer</td>
      <td>London</td>
      <td>41</td>
      <td>2012/10/13</td>
      <td>$132,000</td>
    </tr>
    <tr>
      <td>Dai Rios</td>
      <td>Personnel Lead</td>
      <td>Edinburgh</td>
      <td>35</td>
      <td>2012/09/26</td>
      <td>$217,500</td>
    </tr>
    <tr>
      <td>Jenette Caldwell</td>
      <td>Development Lead</td>
      <td>New York</td>
      <td>30</td>
      <td>2011/09/03</td>
      <td>$345,000</td>
    </tr>
    <tr>
      <td>Yuri Berry</td>
      <td>Chief Marketing Officer (CMO)</td>
      <td>New York</td>
      <td>40</td>
      <td>2009/06/25</td>
      <td>$675,000</td>
    </tr>
    <tr>
      <td>Caesar Vance</td>
      <td>Pre-Sales Support</td>
      <td>New York</td>
      <td>21</td>
      <td>2011/12/12</td>
      <td>$106,450</td>
    </tr>
    <tr>
      <td>Doris Wilder</td>
      <td>Sales Assistant</td>
      <td>Sidney</td>
      <td>23</td>
      <td>2010/09/20</td>
      <td>$85,600</td>
    </tr>
    <tr>
      <td>Angelica Ramos</td>
      <td>Chief Executive Officer (CEO)</td>
      <td>London</td>
      <td>47</td>
      <td>2009/10/09</td>
      <td>$1,200,000</td>
    </tr>
    <tr>
      <td>Gavin Joyce</td>
      <td>Developer</td>
      <td>Edinburgh</td>
      <td>42</td>
      <td>2010/12/22</td>
      <td>$92,575</td>
    </tr>
    <tr>
      <td>Jennifer Chang</td>
      <td>Regional Director</td>
      <td>Singapore</td>
      <td>28</td>
      <td>2010/11/14</td>
      <td>$357,650</td>
    </tr>
    <tr>
      <td>Brenden Wagner</td>
      <td>Software Engineer</td>
      <td>San Francisco</td>
      <td>28</td>
      <td>2011/06/07</td>
      <td>$206,850</td>
    </tr>
    <tr>
      <td>Fiona Green</td>
      <td>Chief Operating Officer (COO)</td>
      <td>San Francisco</td>
      <td>48</td>
      <td>2010/03/11</td>
      <td>$850,000</td>
    </tr>
    <tr>
      <td>Shou Itou</td>
      <td>Regional Marketing</td>
      <td>Tokyo</td>
      <td>20</td>
      <td>2011/08/14</td>
      <td>$163,000</td>
    </tr>
    <tr>
      <td>Michelle House</td>
      <td>Integration Specialist</td>
      <td>Sidney</td>
      <td>37</td>
      <td>2011/06/02</td>
      <td>$95,400</td>
    </tr>
    <tr>
      <td>Suki Burks</td>
      <td>Developer</td>
      <td>London</td>
      <td>53</td>
      <td>2009/10/22</td>
      <td>$114,500</td>
    </tr>
    <tr>
      <td>Prescott Bartlett</td>
      <td>Technical Author</td>
      <td>London</td>
      <td>27</td>
      <td>2011/05/07</td>
      <td>$145,000</td>
    </tr>
    <tr>
      <td>Gavin Cortez</td>
      <td>Team Leader</td>
      <td>San Francisco</td>
      <td>22</td>
      <td>2008/10/26</td>
      <td>$235,500</td>
    </tr>
    <tr>
      <td>Martena Mccray</td>
      <td>Post-Sales support</td>
      <td>Edinburgh</td>
      <td>46</td>
      <td>2011/03/09</td>
      <td>$324,050</td>
    </tr>
    <tr>
      <td>Unity Butler</td>
      <td>Marketing Designer</td>
      <td>San Francisco</td>
      <td>47</td>
      <td>2009/12/09</td>
      <td>$85,675</td>
    </tr>
    <tr>
      <td>Howard Hatfield</td>
      <td>Office Manager</td>
      <td>San Francisco</td>
      <td>51</td>
      <td>2008/12/16</td>
      <td>$164,500</td>
    </tr>
    <tr>
      <td>Hope Fuentes</td>
      <td>Secretary</td>
      <td>San Francisco</td>
      <td>41</td>
      <td>2010/02/12</td>
      <td>$109,850</td>
    </tr>
    <tr>
      <td>Vivian Harrell</td>
      <td>Financial Controller</td>
      <td>San Francisco</td>
      <td>62</td>
      <td>2009/02/14</td>
      <td>$452,500</td>
    </tr>
    <tr>
      <td>Timothy Mooney</td>
      <td>Office Manager</td>
      <td>London</td>
      <td>37</td>
      <td>2008/12/11</td>
      <td>$136,200</td>
    </tr>
    <tr>
      <td>Jackson Bradshaw</td>
      <td>Director</td>
      <td>New York</td>
      <td>65</td>
      <td>2008/09/26</td>
      <td>$645,750</td>
    </tr>
    <tr>
      <td>Olivia Liang</td>
      <td>Support Engineer</td>
      <td>Singapore</td>
      <td>64</td>
      <td>2011/02/03</td>
      <td>$234,500</td>
    </tr>
    <tr>
      <td>Bruno Nash</td>
      <td>Software Engineer</td>
      <td>London</td>
      <td>38</td>
      <td>2011/05/03</td>
      <td>$163,500</td>
    </tr>
    <tr>
      <td>Sakura Yamamoto</td>
      <td>Support Engineer</td>
      <td>Tokyo</td>
      <td>37</td>
      <td>2009/08/19</td>
      <td>$139,575</td>
    </tr>
    <tr>
      <td>Thor Walton</td>
      <td>Developer</td>
      <td>New York</td>
      <td>61</td>
      <td>2013/08/11</td>
      <td>$98,540</td>
    </tr>
    <tr>
      <td>Finn Camacho</td>
      <td>Support Engineer</td>
      <td>San Francisco</td>
      <td>47</td>
      <td>2009/07/07</td>
      <td>$87,500</td>
    </tr>
    <tr>
      <td>Serge Baldwin</td>
      <td>Data Coordinator</td>
      <td>Singapore</td>
      <td>64</td>
      <td>2012/04/09</td>
      <td>$138,575</td>
    </tr>
    <tr>
      <td>Zenaida Frank</td>
      <td>Software Engineer</td>
      <td>New York</td>
      <td>63</td>
      <td>2010/01/04</td>
      <td>$125,250</td>
    </tr>
    <tr>
      <td>Zorita Serrano</td>
      <td>Software Engineer</td>
      <td>San Francisco</td>
      <td>56</td>
      <td>2012/06/01</td>
      <td>$115,000</td>
    </tr>
    <tr>
      <td>Jennifer Acosta</td>
      <td>Junior Javascript Developer</td>
      <td>Edinburgh</td>
      <td>43</td>
      <td>2013/02/01</td>
      <td>$75,650</td>
    </tr>
    <tr>
      <td>Cara Stevens</td>
      <td>Sales Assistant</td>
      <td>New York</td>
      <td>46</td>
      <td>2011/12/06</td>
      <td>$145,600</td>
    </tr>
    <tr>
      <td>Hermione Butler</td>
      <td>Regional Director</td>
      <td>London</td>
      <td>47</td>
      <td>2011/03/21</td>
      <td>$356,250</td>
    </tr>
    <tr>
      <td>Lael Greer</td>
      <td>Systems Administrator</td>
      <td>London</td>
      <td>21</td>
      <td>2009/02/27</td>
      <td>$103,500</td>
    </tr>
    <tr>
      <td>Jonas Alexander</td>
      <td>Developer</td>
      <td>San Francisco</td>
      <td>30</td>
      <td>2010/07/14</td>
      <td>$86,500</td>
    </tr>
    <tr>
      <td>Shad Decker</td>
      <td>Regional Director</td>
      <td>Edinburgh</td>
      <td>51</td>
      <td>2008/11/13</td>
      <td>$183,000</td>
    </tr>
    <tr>
      <td>Michael Bruce</td>
      <td>Javascript Developer</td>
      <td>Singapore</td>
      <td>29</td>
      <td>2011/06/27</td>
      <td>$183,000</td>
    </tr>
    <tr>
      <td>Donna Snider</td>
      <td>Customer Support</td>
      <td>New York</td>
      <td>27</td>
      <td>2011/01/25</td>
      <td>$112,000</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>Name</i>
      </th>
      <th>Position</i>
      </th>
      <th>Office</i>
      </th>
      <th>Age</i>
      </th>
      <th>Start date</i>
      </th>
      <th>Salary</i>
      </th>
    </tr>
  </tfoot>
</table>
</div>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <h2>Contextual Classes</h2>
  <p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>
  <table class="table">
   <table class="table table-striped table-bordered table-sm">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
        <th>Match</th>
        <th>Date</th>
        <th>Betting</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>sandeep</td>
        <td>gottimukkula</td>
        <td>sandeep.sm541@gmail.com</td>
        <td>Sunrises vs Mumbai</td>
        <td>21-09-2018</td>
        <td>Sunrises</td>
        <td>Won</td>
      </tr>
      <tr>
        <td>srujju</td>
        <td>Kandukuri</td>
        <td>srujju.deep5@gmail.com</td>
        <td>Sunrises vs Mumbai</td>
        <td>26-10-2018</td>
        <td>Mumbai</td>
        <td>Won<span class="glyphicon glyphicon-ok" style="color:green"></span></td>
      </tr>
      <tr>
        <td>Sudheer</td>
        <td>Akoju</td>
        <td>asudheer.sai@gmal</td>
        <td>Sunrises vs Bangalore</td>       
        <td>27-11-2018</td>
        <td>Bangalore</td>
        <td>Lost<span class="glyphicon glyphicon-remove" style="color:red"></span></td>
      </tr>
    </tbody>
  </table>
    </div>
    <div id="menu2" class="tab-pane fade">
<div id="foo" class="row">

  <!-- <div class="column">
  <p>Sunrises:</p>            
  <img src="https://cricbot.com/wp-content/uploads/2015/04/sunrisers-hyderabad-logo-srh.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236">
  </div>   
  <div class="column">
  <p>Mumbai Indians:</p>            
  <img src="http://s3.india.com/wp-content/uploads/2017/03/mumbai.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236"> 
  </div>  -->
</div>
<!-- <div class="row">
<div class="column">
<button id="signin_id" type="submit" class="btn btn-success">Bet1</button>
</div>
<div class="column">
<button id="signin_id" type="submit" class="btn btn-success">Bet2</button>
</div>
</div> -->
<!-- <div class="row">
<div class="column">
  <p>Bangalore:</p>            
  <img src="https://images.indianexpress.com/2018/01/rcb-logo-759.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236">
  </div>   
  <div class="column">
  <p>Chennai Super Kings:</p>            
  <img src="https://upload.wikimedia.org/wikipedia/en/thumb/2/2b/Chennai_Super_Kings_Logo.svg/1200px-Chennai_Super_Kings_Logo.svg.png" class="img-rounded" alt="Cinque Terre" width="304" height="236"> 
</div> 
</div>
<div class="row">
<div class="column">
<button id="signin_id" type="submit" class="btn btn-success">Bet1</button>
</div>
<div class="column">
<button id="signin_id" type="submit" class="btn btn-success">Bet2</button>
</div> -->

    </div>
    <div id="menu3" class="tab-pane fade">
    <div class="row">
    <div class="middle  col-md-40 " style="padding: 28px;padding-left: 378px;">
              <div class="form-horizontal">
      <form class="form-horizontal" action="/examples/actions/confirmation.php" method="post">
      
      <table class="table">
   <table class="table table-dark table-striped">
    <thead>
      <tr>
        <th>UserName - </th>
        <td>${userdetails.username}</td>        
      </tr>
      <tr>
        <th>First Name - </th>
        <td>${userdetails.firstName}</td>        
      </tr>
      
      <tr>
        <th>Last Name - </th>
        <td>${userdetails.lastName}</td>        
      </tr><tr>
        <th>Gmail Id - </th>
        <td>${userdetails.gmail}</td>        
      </tr>
      
      <tr>
        <th>Gender - </th>
        <td>${userdetails.gender}</td>        
      </tr>
      <tr>
        <th>Date of Birth - </th>
        <td>${userdetails.bday}</td>        
      </tr>
      <tr>
        <th>Contact No - </th>
        <td>${userdetails.mobile}</td>        
      </tr>
    </thead>
    </table>
    </table>
    
  <%--     <tr>
        <td>sandeep</td>
        <td>gottimukkula</td>
        <td>sandeep.sm541@gmail.com</td>
        <td>Sunrises vs Mumbai</td>
        <td>21-09-2018</td>
        <td>Sunrises</td>
        <td>Won</td>
      </tr>
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">UserName::</label>
            <div class="col-md-10">
                <p class="form-control-static">${userdetails.username}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Email::</label>
            <div class="col-md-10">
                <p class="form-control-static">${userdetails.gmail}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">First Name::</label>
            <div class="col-md-10">
                <p class="form-control-static">${userdetails.firstName}</p>
            </div>
        </div> 
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Last Name::</label>
            <div class="col-md-10">
                <p class="form-control-static">${userdetails.lastName}</p>
            </div>
        </div> 
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Gender::</label>
            <div class="col-md-10">
                <p class="form-control-static">${userdetails.gender}</p>
            </div>
        </div> 
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Contact::</label>
            <div class="col-md-10">
                <p class="form-control-static">${userdetails.mobile}</p>
            </div>
        </div>         
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Birth Day Date::</label>
            <div class="col-md-10">
                <p class="form-control-static">${userdetails.bday}</p>
            </div>
        </div>  --%>       
    </form>
    </div>
    </div>
    </div>
    </div>
  </div>
  
<form align="right" name="form1" method="post" action="/RetailKart">
  <label>
  <input name="submit2" type="submit" id="submit2" value="log out">
  </label>
</form> 
</div>    
</body>
</html>

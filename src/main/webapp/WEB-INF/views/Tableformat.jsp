<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>M-POS</title>
<link rel="SHORTCUT ICON" href="images/magma.ico" type="image/x-icon" />
<link type="text/css" href="css/lib/bootstrap.css" rel="stylesheet"/>
<link type="text/css" href="css/gi-components/gi-utils-style.css" rel="stylesheet"/>
<link type="text/css" href="css/gi-components/gi-header-footer.css" rel="stylesheet"/>
<link type="text/css" href="css/gi-components/gi-sidebar.css" rel="stylesheet"/>
<link type="text/css" href="css/lib/bootstrap-datepicker.css" rel="stylesheet"/>
<link type="text/css" href="css/app-styles.css" rel="stylesheet"/>	

<script type="text/javascript" src="js/lib/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/lib/jquery-migrate.js"></script>
<script type="text/javascript" src="js/lib/bootstrap.min.js"></script>
<script type="text/javascript" src="js/lib/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/gi-components/gi-utils-script.js"></script>
<script type="text/javascript" src="js/gi-components/gi-sidebar.js"></script>
</head>

<body>
<form id="hierarchyMappingForm" onsubmit="return doSearch()">
<input type ='hidden' id = 'dlCode'name ='dlCode' value = ''/>
<input type ='hidden' id = 'dlName'name ='dlName' value = ''/>
<input type ='hidden' id = 'hierarchy'name ='hierarchy' value = ''/>
<spring:bind path="product.name"> 
<input type="hidden" class="textfield" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>"/>	
</spring:bind>
<spring:bind path="product.name">
<input type="hidden" class="textfield" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>"/>	
</spring:bind>
<spring:bind path="product.name">
<input type="hidden" class="textfield" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>"/>	
</spring:bind>
<spring:bind path="product.name">
<input type="hidden" class="textfield" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>"/>	
</spring:bind>
<spring:bind path="product.name">
<input type="hidden" class="textfield" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>"/>	
</spring:bind>
<spring:bind path="product.name">
<input type="hidden" class="textfield" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>"/>	
</spring:bind>
<spring:bind path="product.name">
<input type="hidden" class="textfield" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>"/>	
</spring:bind>
<spring:bind path="product.name">
<input type="hidden" class="textfield" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>"/>	
</spring:bind>
<div class="container-fluid gi-no-padder">
	<!-- header start -->
	
	<!-- header end -->
	<!-- middle Container start -->
	<div class="row gi-m-n simple">
		
		<div class="right-container col-xs-11 col-sm-11 col-md-11">
			<!-- page header start -->
			<div class="body-head row">
				
			<!-- page header end -->
			<!-- filter start -->
			<%-- <div class="search-panel">
				<div class="row">
				
				<div class="col-xs-2 col-sm-2 col-md-2">
					<div class="textbox-label">Division</div><br />
					<spring:bind path="commandObject.dataObject.criteria[hcm.division_code].value">
						<div>
						<c:set var="selectedValue" value="${status.value}" />
						<select class="textbox divisionCl" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}' />"  >
							<option value="">Select</option>
							<c:forEach items="${commandObject.divisions}" var="row" varStatus="status">
							<option <c:if test="${selectedValue==row.code}">selected</c:if> value="<c:out value='${row.code}'/>"> <c:out value="${row.name}" /> </option>
							</c:forEach>
						</select>
						</div>
					</spring:bind>
				</div> --%>
				
			<%-- 	<div class="col-xs-2 col-sm-2 col-md-2">
					<div class="textbox-label">Location </div><br />
					<spring:bind path="commandObject.dataObject.criteria[hcm.location_code].value">
						<div>
						<c:set var="selectedValue" value="${status.value}" />
						<select class="textbox locationCl" name="<c:out value='${status.expression}'/>" id="<c:out value='${status.expression}' />"  >
							<option value="">Select</option>
							<c:forEach items="${commandObject.locations}" var="row" varStatus="status">
							<option <c:if test="${selectedValue==row.code}">selected</c:if> value="<c:out value='${row.code}'/>"> <c:out value="${row.name}" /> </option>
							</c:forEach>
						</select>
						</div>
					</spring:bind>
				</div> --%>
				
				<div class="col-xs-2 col-sm-2 col-md-2">
					<div class="gi-m-t-lg"><input type="submit" class="btn-submit" value="Go" />
					<!--<input type="button" class="btn-reset" value="Reset" onclick="javascript:resetValues();" />-->
					</div>
				</div>
				</div>
				</div>
			<!-- filter end -->
			<!-- search grid start -->
			<div id="gridboxcontainer" class="row" style="width:100%">
					>
					
				</div>
			<!-- search grid end -->
	</div>
	<!-- middle Container end -->
	<!-- footer start -->
	
	<!-- footer end -->
</div>
<!-- mainContainer end -->
</div>

<!-- <script type="text/javascript">
function doSearch() {
	document.forms[0].formAction.value = "SEARCH";
	document.forms[0].method = "POST";
	document.forms[0].action = "hierarchyMappingListController.do";
	document.forms[0].submit();
}
function doDelete(dlCode,hierarchy,dlName) {
	var res = dlCode.split(',');
	var hieRes = hierarchy.split(',');
	var resName  = dlName.split(',');
	var r = confirm("Hierarchy mapping for divison code:"+resName[0]+" and location code:"+resName[1]+"  will be deleted .Do you want to proceed?");
	if (r == true) {
		document.forms[0].divisionCode.value= res[0];
		document.forms[0].locationCode.value = res[1];
		document.forms[0].e1.value = hieRes[0];
		document.forms[0].e2.value = hieRes[1];
		document.forms[0].e3.value = hieRes[2];
		document.forms[0].e4.value = hieRes[3];
		document.forms[0].e5.value = hieRes[4];
		document.forms[0].caddApprover.value = hieRes[5];
		document.forms[0].hierarchy.value = hierarchy;
		document.forms[0].dlCode.value = dlCode;
		document.forms[0].formAction.value = "DELETE";
		document.forms[0].method = "POST";
		document.forms[0].action = "hierarchyMappingListController.do";
		document.forms[0].submit();
	}
}
function doEdit(dlCode,hierarchy,dlName) {
	var res = dlCode.split(',');
	var div_code = res[0];
	var loc_code = res[1];
	var hieRes = hierarchy.split(',');
	document.forms[0].dlCode.value = dlCode;
	document.forms[0].hierarchy.value = hierarchy;
	document.forms[0].dlName.value = dlName;
	document.forms[0].divisionCode.value= res[0];
	document.forms[0].locationCode.value = res[1];
	document.forms[0].e1.value = hieRes[0];
	document.forms[0].e2.value = hieRes[1];
	document.forms[0].e3.value = hieRes[2];
	document.forms[0].e4.value = hieRes[3];
	document.forms[0].e5.value = hieRes[4];
	document.forms[0].caddApprover.value = hieRes[5];
	document.forms[0].formAction.value = "EDIT";
	document.forms[0].method = "POST";
	document.forms[0].action = "hierarchyMappingListController.do";
	document.forms[0].submit();
}
</script> -->
</form>
</body>
</html>
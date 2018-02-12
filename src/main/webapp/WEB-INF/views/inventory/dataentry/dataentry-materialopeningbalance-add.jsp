<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
<%@ page import="com.innowave.mahaulb.web.inventory.controller.forms.InventoryMaterialOpBalForm, java.text.*" %>
<compress:html >
<html>
<%

String edit = request.getParameter("edit");
boolean ed = false;
	if(edit != null && edit.equals("true")){
		ed = true;
	}

System.out.println("edit "+edit+" ed is "+ed);
InventoryMaterialOpBalForm form = (InventoryMaterialOpBalForm)request.getSession().getAttribute("balForm");
String format = "yyyy-MM-dd";
DateFormat dateFormat = new SimpleDateFormat(format);
String asOnDate = "";
	if(form.getCurrent().getOpenQtyAsondate() != null){
		asOnDate = dateFormat.format(form.getCurrent().getOpenQtyAsondate());
	}
	
String expiryDate="";
	if(form.getCurrent().getExpiryDate() != null){
		expiryDate = dateFormat.format(form.getCurrent().getExpiryDate());
	}
	

%>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../../common/header.jsp" />

</head>


<body class="nav-md">
<form:form id="balFormAdd" action="savebalform" method="POST" commandName="balForm">

	<div class="container body">
		<div class="main_container">
			<jsp:include page="../../common/leftMenu.jsp" />
			<jsp:include page="../../common/headerTop.jsp" />


			<!-- page content -->
			<spring:message code="label.please.enter" var="pls" />

			<div class="right_col" role="main">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
										<spring:message code="label.inventory.dataentry.materialopeningblnc.add" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<div class="row">
											
											<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.materialname" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-12 col-xs-12">
												<form:input path="current.materialName" cssClass="form-control" disabled="true" />
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.storename" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-12 col-xs-12">
												 <form:input path="current.storeName" cssClass="form-control" disabled="true" />
											  </div>
											</div>
											
											 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.finacialyear" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-6 col-xs-12">
												  <form:select id="fins" path="finyear" name="finyear" cssClass="form-control" disabled="<%= ed %>"> 
											      <form:option value="" label="--Please Select"/>
											      <form:options items="${fins}" itemValue="finId" itemLabel="assessmentYear"/>
											 </form:select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.openquantity" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												  <form:input path="current.openQty" cssClass="form-control"   />
											  </div>
											</div>
											<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.asondateopening" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-6 col-xs-12">
												  <input type="date" name="asondateopening" id="asondateopening" class="form-control" value="<%= asOnDate %>" />
												  
												  
											  </div>

											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.lotno" />:	</label>
											  <div class="col-md-4 col-sm-12 col-xs-12">
												   <form:input path="current.lotNo" cssClass="form-control"   />
											  </div>
											</div>
											<div class="form-group">
												<label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.openingrate" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												  <form:input path="current.openRate" cssClass="form-control"   />
											  </div>
											  
											   <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.exprydate" />:	</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
<!-- 												 <div class='input-group date' id="exprydate"> -->
<%-- 														<input type='text' class="form-control" id="exprydate1"  name="exprydate1" placeholder="DD/MM/YYYY" value="<%= expiryDate %>"/> <span --%>
<!-- 														class="input-group-addon"> <span -->
<!-- 														class="glyphicon glyphicon-calendar"></span> -->
<!-- 														</span> -->

<!-- 													</div> -->
											<input type="date" name="exprydate1" id="exprydate1" class="form-control" value="<%= expiryDate %>" />
											  </div>
											</div>
									<div class="row">

										<div class="form-group ">
											<div class="actionBar">
												<input type="submit" id="submitBtn" class="btn" value="<spring:message code="label.btn.save" />">
												
												<a href="<c:url value="viewmaterialopeningbalance" />"><button class="btn" type="reset" onClick="javascript:goback()"><spring:message code="label.btn.close"  /></button></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					

				</div>
			</div>

	

			
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>
	</div>
	<jsp:include page="../../common/jsFooter.jsp" />
	<script>
	$('#exprydate').datetimepicker({
		format:"DD/MM/YYYY"
	});
	
	function goback(){
		window.location = "viewmaterialopeningbalance";
	}
	</script>
</form:form>
		
</body>
</html>
</compress:html>
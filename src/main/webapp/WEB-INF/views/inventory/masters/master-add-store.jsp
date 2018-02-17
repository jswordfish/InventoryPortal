<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
<compress:html >
<html>

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../../common/header.jsp" />

</head>
<body class="nav-md">

<form:form id="addForm" action="saveMasterStore" method="POST" modelAttribute="materialstoreform">
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
										<spring:message code="label.inventory.master.store.add" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
							              <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.storecode" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:input path="storeCode" cssClass="form-control" />
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.storename" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:input path="storeName" cssClass="form-control" />
											  </div>
											  
										 </div>
										 
										<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.deptname" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:select id="department" path="selectedDept" class="form-control" >
												 <%-- 	<form:option  value="0" label="--Please Select--"></form:option> --%>
    												<form:options items="${departments}" itemValue="depId" itemLabel="depNameEn" />
												 </form:select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.storedesc" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  <form:textarea path="storeDesc" class="form-control"/>
											  </div>
											  
										 </div>
										 <div class="form-group">
											  <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2">
												 <label class="checkbox-inline"><form:checkbox  path="centralStore" ></form:checkbox>
												 <spring:message code="label.inventory.master.store.checkbox.centralstore" /></label>
											  </div>
										</div>
										<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.billingaddress" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:textarea path="billingAddress" class="form-control"></form:textarea>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.deliveryaddress" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:textarea path="deliveryAddress" class="form-control"></form:textarea>
											  </div>
											  
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.storeinchargemp" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  	<form:select  id= "tmuser" path="selectedUser" class="form-control" disabled="${(editMaping!= null && editMaping == true) ? true: false}" >
												 	<%-- <form:option  value="0" label="--Please Select--"></form:option> --%>
    												<form:options items="${usersList}" itemValue="userId" itemLabel="userName" />
												 </form:select>
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.contact1" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="contact1" type="text" class="form-control"></form:input>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.contact2" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="contact2" type="text" class="form-control"></form:input>
											  </div>
										 </div>
										<div class="form-group">
											  <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2">
												 <label class="checkbox-inline"><form:checkbox id="active" path="active" ></form:checkbox>
												 <spring:message code="label.inventory.master.store.active" /></label>
											  </div>
										</div>
											  
									</div>
									
									<div class="row">
										<div class="form-group ">
											<div class="actionBar">
												<button type="submit" id="submitBtn" class="btn" type="submit" value="saveMaterialData" name="saveinstore"><spring:message code="label.btn.save" /></button>
												<button class="btn" type="submit" value="resetMaterialAdd" name="resetstore"><spring:message code="label.btn.reset" /></button>
												<button class="btn" type="submit" value="closeMaterialAdd" name="closestore"><spring:message code="label.btn.close" /></button></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					

				</div>
				
			

	

			
			<jsp:include page="../../common/footer.jsp" />
		</div>
</div>
	
	<jsp:include page="../../common/jsFooter.jsp" />
	 <script>	 
		/* function saveMaterialStore() {
		 var  selectedDepartment= $("#department").val();
		 var selectedStoreIncharge=$("#tmuser").val();
		 var active = $("#active").val();
		      window.location = "saveMasterStore?deptId="+selectedDepartment+"&userUid="+selectedStoreIncharge+"&active="+active;
		   } */
		
		/* function goback(){
			window.location = "searchstore";
		} */
		</script>
		
		<c:if test="${msgtype != null}">
		 <script>
	 var notification = '<spring:message code="label.common.notification" />';
	 $(function(){
		 new PNotify({
	         title: notification,
	         text: '${message}',
	         type: '${msgtype}',
	         styling: 'bootstrap3',
	         hide: true
	     });
	 }); 	 
      </script>
</c:if>
	</form:form>	
</body>
</html>
</compress:html>
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


<form:form id="materialadd" action="addsupplier" method="POST" modelAttribute="addForm">
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
										<spring:message code="label.inventory.master.supplier.add" />
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
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.suppliertype" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:select  id= "suppliertyp" path="selectedSupplier" class="form-control" >
												 	<%-- <form:option  value="0" label="--Please Select--"></form:option> --%>
    												<form:options items="${suppliertyp}" itemValue="lookupDetId" itemLabel="lookupDetDescEn" />
												 </form:select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.suppliercode" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="supplierCode" cssClass="form-control" />
											  </div>
											  
										 </div>
										 
										<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.parentsuppliercode" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:input path="parentSupplierCode" cssClass="form-control" />
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.suppliername" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:input path="supplierName" cssClass="form-control" />
											  </div>
											  
										 </div>
										<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.supplieraddres" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:input path="supplierAddress" cssClass="form-control" />
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.contactperson" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
													<form:input path="contactPerson" cssClass="form-control" />
											  </div>
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.contactno" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="contactNumber" cssClass="form-control" />
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.email" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="email" cssClass="form-control" />
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.website" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="website" cssClass="form-control" />
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.tinno" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												  <form:input path="tinNo" cssClass="form-control" />
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.panno" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="panNo" cssClass="form-control" />
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.cstno" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												  <form:input path="cstNo" cssClass="form-control" />
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.uatno" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="uatNo" cssClass="form-control" />
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.gstno" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="gstNo" cssClass="form-control" />
											  </div>
										 </div>
										 <div class="x_title">
											<h2>
												<%-- <spring:message code="label.treename" /> --%>
												<spring:message code="label.inventory.master.supplier.bankdetails" />
											</h2>
											<div class="clearfix"></div>
										</div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.bankname" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:input path="bankName" cssClass="form-control" />
											  </div>
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.ifsc" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:input path="ifsc" cssClass="form-control" />
											  </div>
										 </div>
										  <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.supplier.bankacc" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:input path="bankAcc" cssClass="form-control" />
											  </div>
										 </div>
									</div>
									
									<div class="row">
										<div class="form-group ">
											<div class="actionBar">
												<button type="submit" id="submitBtn" class="btn" value="savematerialSupplier" name="savematerialsupplierDetails"><spring:message code="label.btn.save" /></button>
												<button class="btn" type="submit" value="resetSupplierAdd" name="resetsupplier"><spring:message code="label.btn.reset" /></button>
												<button class="btn" type="submit" value="viewMaterialSupplier" name="closesupplier"><spring:message code="label.btn.close" /></button>
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
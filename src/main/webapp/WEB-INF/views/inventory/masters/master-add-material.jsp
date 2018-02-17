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

<form:form id="addmaterialform" action="saveMastermaterial" method="POST" modelAttribute="materialaddform">
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
										<spring:message code="label.inventory.master.material.add" />
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
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.materialcode" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:input path="materialCode" type="text" class="form-control"></form:input>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.materialoldcode" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											     <form:input path="materialOldCode" type="text" class="form-control"></form:input>
											  </div>
											  
										 </div>
										 
										<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.materialtype" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:select id="materialTypes" path="selectedMaterialTyp" cssClass="form-control"> 
											      <form:options items="${invMaterialTypes}" itemValue="materialTypeId" itemLabel="materialTypeName"/>
											 </form:select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.materialname" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:input path="materialName" type="text" class="form-control"></form:input>
											  </div>
											  
										 </div>
										<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.materialdesc" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:textarea path="materialDesc" class="form-control"></form:textarea>
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.baseuom" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:select id="materialumo" path="selectedUmo" cssClass="form-control"> 
											      <form:option value="0" label="--Please Select"/>
											      <form:options items="${baseuom}" itemValue="lookupDetHierId" itemLabel="lookupDetHierDescEn"/>
											 </form:select>
											  </div>
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.inventorytype" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:select id="materialinv" path="selectedInvType" cssClass="form-control"> 
											      <form:option value="0" label="--Please Select"/>
											      <form:options items="${inventoryTypes}" itemValue="lookupDetId" itemLabel="lookupDetDescEn"/>
											 </form:select>
												
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.materialstatus" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:input path="materialStatus" class="form-control"></form:input>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.rateperunit" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												   <form:input path="ratePerUnit" class="form-control"></form:input>
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.purchaseuom" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											    <form:select id="materialpurchase" path="selectedPurchaseUom" cssClass="form-control"> 
											      <form:option value="0" label="--Please Select"/>
											      <form:options items="${purchaseuom}" itemValue="lookupDetHierId" itemLabel="lookupDetHierDescEn"/>
												 </form:select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.accode" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="accCode" class="form-control"></form:input>
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.usageclass" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  <form:select id="materialusage" path="selectusage" cssClass="form-control"> 
											      <form:option value="0" label="--Please Select"/>
											      <form:options items="${usagelist}" itemValue="lookupDetId" itemLabel="lookupDetDescEn"/>
												 </form:select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.stockuom" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:select id="materialstock" path="selectedStockUom" cssClass="form-control"> 
											      <form:option value="0" label="--Please Select"/>
											      <form:options items="${stockuom}" itemValue="lookupDetHierId" itemLabel="lookupDetHierDescEn"/>
												 </form:select>
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.minqty" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  <form:input path="minQty" class="form-control"></form:input>
											  </div>
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.maxqty" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  <form:input path="maxQty" class="form-control"></form:input>
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.reorderlvl" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  <form:input path="reOrderlvl" class="form-control"></form:input>
											  </div>
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.reorderqty" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  <form:input path="reOrderQty" class="form-control"></form:input>
											  </div>
										 </div>
										 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.selflifecontrol" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												  <form:select class="form-control" path="selfLifeControl" >
												  <form:option value="Y" label="Yes"></form:option>
												  <form:option value="N" label="No"></form:option>
												 </form:select>
											  </div>
										 </div>
									</div>
									
									<div class="row">
										<div class="form-group ">
											<div class="actionBar">
												<button type="submit" id="submitBtn" class="btn" name="savematerialadd" value="saveMaterialAdd"><spring:message code="label.btn.save" /></button>
												<button class="btn" type="submit" value="resetMaterialAdd" name="resetmaterialadd"><spring:message code="label.btn.reset" /></button>
												<button class="btn" type="submit" value="closeMaterialAdd" name="closematerialadd"><spring:message code="label.btn.close" /></button>
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
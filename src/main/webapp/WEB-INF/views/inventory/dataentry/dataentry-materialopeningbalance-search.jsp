<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
<%@page import="com.innowave.mahaulb.web.inventory.controller.forms.*" %>
<compress:html >
<html>

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../../common/header.jsp" />

</head>
<%

System.out.println("balances is "+((InventoryMaterialOpBalForm)request.getSession().getAttribute("balForm")).getBalances());
%>
<body class="nav-md">

 <form:form id="balForm" action="fetchopeningbalances" method="GET" commandName="balForm">
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
										<spring:message code="label.inventory.dataentry.materialopeningblnc.search" />
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
							             <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.storename" />:<span class="required">*</span>	</label>
										  <div class="col-md-4 col-sm-12 col-xs-12">
											  <form:select id="stores" path="storeId" cssClass="form-control" > 
											      <form:option value="" label="--Please Select"/>
											      <form:options items="${stores}" itemValue="storeId" itemLabel="storeName"/>
											 </form:select>
										  </div>
										  
										   <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.materialname" />:<span class="required">*</span>	</label>
										  <div class="col-md-4 col-sm-12 col-xs-12">
											  <form:select id="materials" path="materialId" cssClass="form-control"> 
											      <form:option value="" label="--Please Select"/>
											      <form:options items="${materials}" itemValue="materialId" itemLabel="materialName"/>
											 </form:select>
										  </div>
										</div>
							            
							            
										 
										  
										 
									</div>
										
									<div class="row">

										<div class="form-group ">
											<div class="actionBar">
												<button class="btn btn-deanger" type="submit"  name="resetmaterialmapping"><spring:message code="label.btn.reset" /></button>
												<button type="submit" id="submitBtn" class="btn btn-success" name="fetchopeningbalances"><spring:message code="label.btn.search" /></button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<spring:message code="label.inventory.dataentry.materialopeningblnc.list" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     	<button type="submit" id="addBtn" class="btn" name="addopeningbalance"><spring:message code="label.btn.add" /></button>
				                     </li>	  
				                    </ul>
									<div class="clearfix"></div>
									
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									
									</div>
								<div class="x_content">
								   <div class="panel panel-sucess">
										<div class="panel-body">
			                    			<table id="metersearch" class="table dataTable table-striped table-bordered">
						                      <thead>
						                      	<tr>
						                      		<th><spring:message code="label.master.bank.search.tbl.sr" /></th>
						                      		<th><spring:message code="label.inventory.dataentry.materialopeningblnc.materialname" /></th>
						                      		<th><spring:message code="label.inventory.dataentry.materialopeningblnc.storename" /></th>
						                      		<th><spring:message code="label.inventory.dataentry.materialopeningblnc.finacialyear" /></th>
						                      		<th><spring:message code="label.inventory.dataentry.materialopeningblnc.openquantity" /></th>
						                      		<th><spring:message code="label.inventory.dataentry.materialopeningblnc.asondateopening" /></th>
						                      		<th><spring:message code="label.inventory.dataentry.materialopeningblnc.lotno" /></th>
													<th><spring:message code="label.btn.editview" /></th>
						                      	</tr>
						                      </thead>
						                      <tbody>
						                       <c:forEach items="${balances}" var="bal" >   
						                      	<tr>
						                      		<td><c:out value="${bal.serial}"></c:out></td>
						                      		<td><c:out value="${bal.materialOpbal.materialName}"></c:out>  </td>
						                      		<td><c:out value="${bal.materialOpbal.storeName}"></c:out>  </td>
						                      		<td><c:out value="${bal.materialOpbal.tmCmFinancialMas.assessmentYear}"></c:out>  </td>
						                      		<td><c:out value="${bal.materialOpbal.openQty}"></c:out>  </td>
						                      		<td><c:out value="${bal.materialOpbal.openQtyAsondate}"></c:out>  </td>
						                      		<td><c:out value="${bal.materialOpbal.lotNo}"></c:out>  </td>
						                      		<td>
														<a href="javascript:editMapping(${bal.materialOpbal.matOpbalId} )"><i class="fa fa-edit"></i></a> /
														 <a href="javascript:deleteMapping(${bal.materialOpbal.matOpbalId} )"><i class="fa fa-trash" aria-hidden="true"></i></a>
													</td>
						                      	</tr>
						                      	</c:forEach>   
						                      
						                      </tbody>
						                    </table>
										</div>
									</div> 
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

	

			
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>
	
	<jsp:include page="../../common/jsFooter.jsp" />
		<script type="text/javascript">
		$("#metersearch").DataTable();
			 
     </script>
     <script>
	$('#fromdate').datetimepicker({
		format:"DD/MM/YYYY"
	});
	$('#todate').datetimepicker({
		format:"DD/MM/YYYY"
	});
	
	function myFunc() {
	    var  selectedValue= $("#stores").val();
	   
	    window.location = "fetchmaterials?storeId="+selectedValue;
	   }
	
	function editMapping(matOpbalId) {
	      window.location = "editmaterialopbal?matOpbalId="+matOpbalId+"&edit=true";
	   }
	
	function deleteMapping(matOpbalId) {
	      window.location = "deletematerialopbal?matOpbalId="+matOpbalId+"&edit=true";
	   }
	
	
	</script>
</form:form>		
</body>
</html>
</compress:html>
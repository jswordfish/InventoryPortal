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
<form:form id="material" action="searchmaterial" method="POST" modelAttribute="materialform">
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
										<spring:message code="label.inventory.master.material.search" />
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
											      <form:option value="0" label="--Please Select"/>
											      <form:options items="${materialTypes}" itemValue="materialTypeId" itemLabel="materialTypeName"/>
											 </form:select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.material.materialname" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											   <form:input path="materialName" type="text" class="form-control"></form:input>
											  </div>
											  
										 </div>
											
									</div>
										
									<div class="row">

										<div class="form-group ">
											<div class="actionBar">
												<button class="btn btn-deanger" type="submit" name="resetmaterial" value="resetMaterial"><spring:message code="label.btn.reset" /></button>
												<button type="submit" id="submitBtn" name="searchmaterial" value="searchMaterial"
													class="btn btn-success"><spring:message code="label.btn.search" /></button>
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
										<spring:message code="label.inventory.master.material.list" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     	  <button type="submit" id="addBtn" class="btn" name="addmaterial" value="addmaterial"><spring:message code="label.btn.add" /></button></a>
				                     </li>	  
				                    </ul>
									<div class="clearfix"></div>
									
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									
									</div>
								<div class="x_content">
								   <div class="panel panel-sucess">
										<div class="panel-body">
			                    			<table id="vendortable" class="table dataTable table-striped table-bordered">
						                      <thead>
						                      	<tr>
						                      		<th><spring:message code="label.master.bank.search.tbl.sr" /></th>
						                      		<th><spring:message code="label.inventory.master.material.materialcode" /></th>
						                      		<th><spring:message code="label.inventory.master.material.materialoldcode" /></th>
						                      		<th><spring:message code="label.inventory.master.material.materialtype" /></th>
						                      		<th><spring:message code="label.inventory.master.material.materialname" /></th>
													<th><spring:message code="label.btn.editview" /></th>
						                      	</tr>
						                      </thead>
						                      <tbody>
						                       <c:forEach items="${dtos}" var="dto" >   
						                      	<tr>
						                      		<td><c:out value="${dto.sequence}"></c:out></td>
						                      		<td><c:out value="${dto.materialCode}"></c:out>  </td>
						                      		<td><c:out value="${dto.materialOldCode}"></c:out>  </td>
						                      		<td><c:out value="${dto.materialType}"></c:out>  </td>
						                      		<td><c:out value="${dto.materialName}"></c:out>  </td>
						                      		<td>
														<a href="javascript:editMaterialStore(${dto.materialId})"><i class="fa fa-edit"></i></a> /
														 <a href="javascript:deleteMapping(${dto.materialId} )"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
	 <script>
		$("#vendortable").DataTable();
		
		function editMaterialStore(materialId) {
		      window.location = "editmaterial?materialId="+materialId+"&edit=true";
		   }
		
		function deleteMapping(materialId) {
		      window.location = "deletematerial?materialId="+materialId+"&edit=true";
		   }
		
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
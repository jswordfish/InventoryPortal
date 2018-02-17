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
<form:form id="materialstore" action="search" method="POST" modelAttribute="storeForm">
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
										<spring:message code="label.inventory.master.store.search" />
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
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.storename" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  <form:select path="selectedInvStore" class="form-control" >
												 	<form:option id= "invStores" value="" label="--Please Select--"></form:option>
    												<form:options items="${stores}" itemValue="storeId" itemLabel="storeName" />
												 </form:select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.store.deptname" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:select id="deps" path="selectedDept" class="form-control" >
												 	<form:option id= "cmDepartments" value="" label="--Please Select--"></form:option>
    												<form:options items="${departments}" itemValue="depId" itemLabel="depNameEn"/>
												 </form:select>
											  </div>
											  
										 </div>
											
									</div>
										
									<div class="row">

										<div class="form-group ">
											<div class="actionBar">
												<button class="btn btn-deanger" type="submit" name="resetMaterial" value="resetMaterialSearch"><spring:message code="label.btn.reset" /></button>
												<button type="submit" id="submitBtn" name="searchmaterial" value="searchMaterialStore"
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
										<spring:message code="label.inventory.master.store.list" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     <button type="submit" id="addBtn" class="btn" name="addmaterial" value="addStore" ><spring:message code="label.btn.add" /></button></a>
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
						                      		<th><spring:message code="label.inventory.master.store.storename" /></th>
						                      		<th><spring:message code="label.inventory.master.store.deptname" /></th>
						                      		<th><spring:message code="label.inventory.master.store.checkbox.centralstore" /></th>
													<th><spring:message code="label.btn.editview" /></th>
						                      	</tr>
						                      </thead>
						                      <tbody>
						                      <c:forEach items="${dtos}" var="dto" >   
						                      	<tr>
						                      		<td><c:out value="${dto.sequence}"></c:out></td>
						                      		<td><c:out value="${dto.storeName}"></c:out>  </td>
						                      		<td><c:out value="${dto.deptName}"></c:out>  </td>
						                      		<td><c:out value="${dto.centralStore}"></c:out>  </td>
						                      		<td>
														<a href="javascript:editMaterialStore(${dto.storeId})"><i class="fa fa-edit"></i></a> /
														 <a href="javascript:deleteMapping(${dto.storeId} )"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
		
		function editMaterialStore(materialStoreId) {
		      window.location = "editmaterialStore?storeId="+materialStoreId+"&edit=true";
		   }
		
		function deleteMapping(materialStoreId) {
			
			 var  selectedValue= $("#deps").val();
		      window.location = "deletematerialStore?storeId="+materialStoreId+"&edit=true"+"&departId="+selectedValue;
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
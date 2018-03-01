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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../../common/header.jsp" />

</head>
<body class="nav-md">

  <form:form id="mappingForm" action="fetchmaterialmapping" method="GET" commandName="materialMappingForm">
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
										<spring:message code="label.inventory.master.materialmapping.search" />
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
								           
								             <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialmapping.deptname" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
<%-- 												<form:select id="deps" path="department" cssClass="form-control" onchange="myFunc()">  --%>
											<form:select id="deps" path="department" cssClass="form-control" > 
											      <form:option value="-" label="--Please Select"/>
											      <form:options items="${departments}" itemValue="depId" itemLabel="depNameEn"/>
											 </form:select>
											  </div>
								           
								           
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialmapping.storename" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												<form:select path="store" cssClass="form-control">
											      <form:option value="-" label="--Please Select"/>
											      <form:options items="${stores}" itemValue="storeId" itemLabel="storeName"/>
											 </form:select>
											  </div>
											  
											
											  
										 </div>
											
									</div>
										
									<div class="row">

										<div class="form-group ">
											<div class="actionBar">
												<button class="btn btn-deanger" type="submit" name="resetmaterialmapping"><spring:message code="label.btn.reset" /></button>
												
												<button type="submit" id="submitBtn" name="fetchmaterialmapping"
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
										<spring:message code="label.inventory.master.materialtype.list" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     	<button type="submit" id="addBtn" class="btn" name="addmaterialtypemapping" ><spring:message code="label.btn.add" /></button>
				                     </li>	  
				                    </ul>
									<div class="clearfix"></div>
									
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									
									</div>
								<div class="x_content">
								   <div class="panel panel-sucess">
										<div class="panel-body">
			                    			<table id="mapping" class="table dataTable table-striped table-bordered">
						                      <thead>
						                      	<tr>
													<th><label class="control-label"><spring:message code="label.master.bank.search.tbl.sr" /></label></th>
													<th><label class="control-label"><spring:message code="label.inventory.master.materialtype.materialtypename" /></label></th>
												    <th><label class="control-label"><spring:message code="label.inventory.master.materialmapping.storename" /></label></th>
												    <th><label class="control-label"><spring:message code="label.inventory.master.materialmapping.deptname" /></label></th>
												    <th><label class="control-label"><spring:message code="label.inventory.master.materialmapping.stockinhand" /></label></th>
												    <th><label class="control-label"><spring:message code="label.inventory.master.materialtype.active" /></label></th>
													<th><label class="control-label"><spring:message code="label.btn.editview" /></label></th>
												</tr>
						                      </thead>
						                      <tbody>
						                       <c:forEach items="${dtos}" var="dto" >   
						                      	<tr>
						                      		<td><c:out value="${dto.serial}"></c:out></td>
						                      		<td><c:out value="${dto.materialTypeName}"></c:out>  </td>
						                      		<td><c:out value="${dto.storeName}"></c:out>  </td>
						                      		<td><c:out value="${dto.depName}"></c:out>  </td>
						                      		<td><c:out value="${dto.accountCode}"></c:out>  </td>
						                      		<td><c:out value="${dto.active}"></c:out>  </td>
						                      		<td>
														<a href="javascript:editMapping(${dto.materialTypeStoreMapId}, ${dto.storeId}, ${dto.depId} )"><i class="fa fa-edit"></i></a> /
														 <a href="javascript:deleteMapping(${dto.materialTypeStoreMapId} )"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
		$("#mapping").DataTable();
		
		function myFunc() {
		    var  selectedValue= $("#deps").val();
		   
		    window.location = "getstoresfordep?depId="+selectedValue;
		   }
		
		
		function editMapping(materialTypeStoreMapId ,storeId, depId) {
		      window.location = "editmaterialmapping?materialTypeStoreMapId="+materialTypeStoreMapId+"&edit=true&depId="+depId+"&storeId="+storeId;
		   }
		
		function deleteMapping(materialTypeStoreMapId) {
		      window.location = "deletematerialmapping?materialTypeStoreMapId="+materialTypeStoreMapId+"&edit=true";
		   }
		
		
		 function goToAddPage() {
		        // get the form values
		        var dep = $('#materialMappingForm.department').val();
		            var store = $('#materialMappingForm.store').val();                
		            var data = 'department='
		                    + encodeURIComponent(dep)
		                    + '&amp;store='
		                    + encodeURIComponent(store);
		       
		         $.ajax({  
	                    type : 'GET',  
	                    url : "addmaterialtypemapping?"+data 
	 
	                });
		        
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
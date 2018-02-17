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

<form:form id="materialTypform" action="materialType/search" method="POST" modelAttribute="searchmaterialtyp">

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
										<spring:message code="label.inventory.master.materialtype.search" />
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
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.materialtypename" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												   <form:select id="selected" path="materialTypeName" class="form-control" onchange="selectMaterial()">
												 	<%-- <form:option value="0" label="--Please Select--"></form:option> --%>
    												<form:options items="${materiallist}" itemValue="materialTypeId" itemLabel="materialTypeName" />
												 </form:select>
											  </div>
											  
											  
											   <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.parentmaterialname" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												  <form:select path="parentMaterialTyp" class="form-control" >
												 	<%-- <form:option value="0" label="--Please Select--"></form:option> --%>
    												<form:options items="${parentmaterialtyp}" itemValue="'" itemLabel="materialTypeName"/>
												 </form:select>
											  </div>  
											  
										 </div>
											
									</div>
										
									<div class="row">

										<div class="form-group ">
											<div class="actionBar">
												<button class="btn btn-deanger"  type="submit" name="resetMaterialType" value="resetMaterialtype"><spring:message code="label.btn.reset" /></button>
												<button type="submit" id="submitBtn" name="searchMaterialType" value="searchMaterialtypeParam" 
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
				                     <button type="submit" id="addBtn" class="btn" name="addmaterial" value="addMaterialType" ><spring:message code="label.btn.add" /></button></a>
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
						                      		<th><spring:message code="label.inventory.master.materialtype.materialtypecode" /></th>
						                      		<th><spring:message code="label.inventory.master.materialtype.materialtypename" /></th>
						                      		<th><spring:message code="label.inventory.master.materialtype.materialdesc" /></th>
						                      		<th><spring:message code="label.inventory.master.materialtype.parentmaterialname" /></th>
													<th><spring:message code="label.btn.editview" /></th>
						                      	</tr>
						                      </thead>
						                      <tbody>
						                      <c:forEach items="${typeDTOs}" var="dto" >   
						                      	<tr>
						                      		<td><c:out value="${dto.serial}"></c:out></td>
						                      		<td><c:out value="${dto.materialTypCode}"></c:out>  </td>
						                      		<td><c:out value="${dto.materialTypeName}"></c:out>  </td>
						                      		<td><c:out value="${dto.materialTypeDesc}"></c:out>  </td>
						                      		<td><c:out value="${dto.parentMaterialType.materialTypeName}"></c:out>  </td>
						                      		<td>
														<a href="javascript:editMaterialType(${dto.materialTypeId} )"><i class="fa fa-edit"></i></a> /
														 <a href="javascript:deleteMaterialType(${dto.materialTypeId})"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
			<script type="text/javascript">
			$("#vendortable").DataTable();
			function selectMaterial() {
			    var  selectedValue= $("#selected").val();
			   
			    window.location = "getparentmaterial?materialTypeId="+selectedValue;
			   }
			
			function editMaterialType(materialTypeId) {
			      window.location = "editMaterialType?materialTypeId="+materialTypeId+"&edit=true";
			   }
			
			function deleteMaterialType(materialTypeId){
				 window.location = "deleteMaterialType?materialTypeId="+materialTypeId+"&edit=true";
			}
			
			</script>
		</div>
	</div>
	
	<jsp:include page="../../common/jsFooter.jsp" />
	
		
	 <script>
		$("#vendortable").DataTable();
	</script>

</form:form>
</body>
</html>
</compress:html>
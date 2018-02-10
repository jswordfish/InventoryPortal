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
										  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.materialname" />:<span class="required">*</span>	</label>
										  <div class="col-md-4 col-sm-12 col-xs-12">
											  <select class="form-control">
											 	<option>Select</option>
											 </select>
										  </div>
										  
										  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.storename" />:<span class="required">*</span>	</label>
										  <div class="col-md-4 col-sm-12 col-xs-12">
											 <select class="form-control">
											 	<option>Select</option>
											 </select>
										  </div>
										</div>
									</div>
										
									<div class="row">

										<div class="form-group ">
											<div class="actionBar">
												<button class="btn btn-deanger" type="reset"><spring:message code="label.btn.reset" /></button>
												<button type="submit" id="submitBtn"
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
										<spring:message code="label.inventory.dataentry.materialopeningblnc.list" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     	<a href="<c:url value="/landestate/dataentry/addmaterialopening" />"><button type="button" id="addBtn" class="btn"><spring:message code="label.btn.add" /></button></a>
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
						                      	<tr>
						                      		<td>1</td>
						                      		<td>test</td>
						                      		<td>test</td>
						                      		<td>test</td>
						                      		<td>test</td>
						                      		<td>test</td>
						                      		<td>test</td>
						                      		<td>
														<a><i class="fa fa-edit"></i></a> / <a><i class="fa fa-trash" aria-hidden="true"></i></a>
													</td>
						                      	</tr>
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
	</script>
		
</body>
</html>
</compress:html>
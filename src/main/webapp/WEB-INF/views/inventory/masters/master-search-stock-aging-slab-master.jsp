<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
			

			<div class="right_col" role="main">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
									
										<spring:message code="label.document.stockslab.search" />
										
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content" style="display: block;"> <br> 
    
   						 


    						<form id=""> 
    		
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.stockslab.fromslab" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control" id="fromslab" name="fromslab">
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.stockslab.toslab" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<input type="text" class="form-control" id="toslab" name="toslab">
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.stockslab.active" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control" id="registhoarddate" name="registhoarddate">
    								</div>
    								</div>
    							</div> 
    							
    							<div class="actionbar">
    										<button type="reset" class="btn"><spring:message code="label.btn.reset" /></button>
    										<button type="button" class="btn"><spring:message code="label.btn.search" /></button>
										</div>
    								
										</form> 
									</div>
							</div>
							
							<div class="x_panel ">
									<div class="x_title">
									<h2>
										<spring:message code="label.document.stockslab.list" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     	<a href=""><button type="button" id="addBtn"
										class="btn btn-success"><spring:message code="label.btn.add" /></button></a>
				                     </li>	  
				                    </ul>
									</div>
									<div class="x_content">
										<div class="panel-body">
													<table id=""
														 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
														<thead>
															<tr>
																<th><spring:message code="label.tbl.srno" /></th>
																<th><spring:message code="label.document.stockslab.fromslab" /></th>
																<th><spring:message code="label.document.stockslab.toslab" /></th>
																<th><spring:message code="label.document.stockslab.active" /></th>
																<th><spring:message code="label.btn.editview" /></th>
															</tr>
															
															
														</thead>
														<tbody>
														<tr>
																<td>1</td>
																<td></td>
																<td></td>
																<td></td>
																<td>
																<a><i class="fa fa-edit"></i></a> 
																/
																<a><i class="fa fa-trash" aria-hidden="true"></i></a>
											  					<%-- 	<button type="button" class="btn btn-xs" ><spring:message code="label.btn.edit" /></button> 
											  						<button type="button" class="btn btn-xs" >View</button> --%>
																</td>
																
															</tr>
														</tbody>
													</table>
												</div>
									</div>
									</div>
							
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>


                  <!-- /modals ends here-->

               
                   <!-- /modals ends here-->
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../../common/jsFooter.jsp" />
<script>

</script>
</body>
</html>
</compress:html>
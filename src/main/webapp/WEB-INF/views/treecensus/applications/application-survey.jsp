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
										<spring:message code="label.form.survey.admin.surveyapplication" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form id="survey-inspector">
										<div class="row">
										 	<div class="application-type col-md-12">
							            		 <div class="col-md-12">
							            		 	<label class="app-type"><spring:message code="label.form.survey.admin.surveyapplication" /></label>
							            		 </div>
						            		 	<div class="col-md-12">
						            		 		<a class="btn btn-warning" id="app-table"><i class="icon-plus"></i><spring:message code="label.form.survey.admin.viewsurveyreqapplication" /></a>
					            		 		
					            		 			<div class="application-table" style="display:none">
					            		 				<div class="panel panel-sucess">
															<div class="panel-body">
																<table id="treeTable"
																 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info"">
																	<thead>
																	<tr>
																		<th><input type="checkbox" value=""><spring:message code="label.tbl.selectall" /></th>
																		<th><spring:message code="label.tbl.name" /></th>
																		<th><spring:message code="label.tbl.survey.admin.applicationnum" /></th>
																		<th><spring:message code="label.tbl.active" /></th>
																	</tr>
																	</thead>
																	<tbody></tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
													
											</div>
											<div class="application-type col-md-12">
							            		 <div class="col-md-12">
							            		 	<label class="app-type"><spring:message code="label.form.survey.admin.action" /></label>
							            		 </div>
						            		 	<div class="col-md-12">
						            		 		<div class="form-group">
							            		 		<label for="cal" class="col-md-2 col-sm-12"><spring:message code="label.form.survey.admin.inwarddate" />:<span class="astric">*</span></label>
							            		 		<div class='col-sm-12 col-md-4 col-sm-12'>
												            
											                <div class='input-group date' id='datetimepicker1'>
											                    <input type='text' class="form-control" />
											                    <span class="input-group-addon">
											                        <span class="glyphicon glyphicon-calendar"></span>
											                    </span>
											                </div>
											           
												        </div>
												        <label for="cal" class="col-md-2 col-sm-12"><spring:message code="label.form.survey.admin.forwardto" />:<span class="astric">*</span></label>
							            		 		<div class="col-md-4 col-sm-12">
														    <select class="form-control">
															    <option>test</option>
															    <option>test</option>
															 </select>
														 </div>
											        </div>
											     </div>
						            		 </div> 
										</div>
										
										<div class="row">
											<ul class="nav navbar-right panel_toolbox">
												<li>
							                     	<button type="button" id="addBtn"
													class="btn btn-danger"><spring:message code="label.btn.delete" /></button>
							                     </li>	 
							                     <li>
							                     	<button type="button" id="addBtn"
													class="btn btn-success"><spring:message code="label.btn.add" /></button>
							                     </li>	  
						                    </ul>
											
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				
					
				</div>
			</div>

			<!-- /page content -->

			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../../common/jsFooter.jsp" />
	<script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>
	<script>
	 $(document).ready(function () {
	        $('#app-table').click(function () {
	        	$('.application-table').toggle("slow", function(){});
	        });
	       
	    });
	</script>
</body>
</html>
</compress:html>
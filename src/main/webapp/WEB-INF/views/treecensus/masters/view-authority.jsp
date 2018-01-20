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
										<spring:message code="label.authority" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form id="demo-form2">
										<div class="row">
											<div class="form-group">
							            	<!-- <input type="text" class="form-control input-sm" id="name" placeholder=""> -->
									            <div class="form-group">
												  <label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.name" />	</label>
												  <div class="col-md-4">
													  <select class="form-control">
													    <option>Test</option>
													    <option>Test</option>
													    <option>Test</option>
													    <option>Test</option>
													  </select>
												  </div>
												  <label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.designation" />	</label>
												  <div class="col-md-4">
													  <select class="form-control">
													    <option>Test</option>
													    <option>Test</option>
													    <option>Test</option>
													    <option>Test</option>
													  </select>
												  </div>
												</div>
							        		</div>
											
										</div>
										
										<div class="row">

											<div class="form-group ">
												<div class="actionBar">
													<button class="btn btn-deanger" type="reset"
													onclick="location.reload(true)"><spring:message code="label.btn.reset" /></button>
													<button type="submit" id="submitBtn"
														class="btn btn-success"><spring:message code="label.btn.search" /></button>
												</div>
											</div>
										</div>
									</form>
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
										<spring:message code="label.form.authoritylist" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
									<li>
				                     	<button type="button" id="addBtn"
										class="btn btn-danger"><spring:message code="label.btn.delete" /></button>
				                     </li>	 
				                     <li>
				                     	<button type="button" id="addBtn"
										class="btn btn-success" data-toggle="modal" data-target=".add-tree-modal-lg"><spring:message code="label.btn.add" /></button>
				                     </li>	  
				                    </ul>
									<div class="clearfix"></div>
									
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									
									</div>
								<div class="x_content">
								 
									<div class="col-md-12 col-sm-12 col-xs-12">
										<div class="x_content">
											<div class="panel panel-sucess">
												<div class="panel-body">
													<table id="treeTable"
														 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info"">
														<thead>
															<tr>
																<th><input type="checkbox" value="" ><spring:message code="label.tbl.selectall" /></th>
																<th><spring:message code="label.tbl.name" /></th>
																<th><spring:message code="label.tbl.designation" /></th>
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
							</div>
						</div>
					</div>

				</div>
			</div>

			<!-- /page content -->

<!-- modals -->
                  <!-- Add Tree modal -->
                  

                  <div class="modal fade add-tree-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel"><spring:message code="label.form.addauthority" /></h4>
                        </div>
                        <div class="modal-body">
                           <form id="demo-form2">
								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-2" for="ex3"><spring:message code="label.form.adharnum" />*</label> 
										<div class="col-md-4">
											<input type="text" class=" form-control" id="adharnum"
											placeholder="" required="yes"
											oninput="setCustomValidity('')"
											oninvalid="this.setCustomValidity('${pls}')" />
										</div>
										<label class="col-md-2" for="ex4"><spring:message code="label.form.name" />*</label> 
										<div class="col-md-4">
											<input type="text" class=" form-control" id="leafshape"
											placeholder="" required="yes"
											oninput="setCustomValidity('')"
											oninvalid="this.setCustomValidity('${pls}')" />
										</div>
										<label class="col-md-2" for="emaiid"><spring:message code="label.form.presentaddr" />*</label> 
											<div class="col-md-10">
												<textarea class="form-control" name="comment" id="emailid" placeholder="" required="yes"
												oninput="setCustomValidity('')"
												oninvalid="this.setCustomValidity('${pls}')"></textarea>
											</div>
										<label class="col-md-2" for="ex4"><spring:message code="label.form.designation" />*</label> 
										<div class="col-md-4">
											<input type="text" class=" form-control" id="designation"
											placeholder="" required="yes"
											oninput="setCustomValidity('')"
											oninvalid="this.setCustomValidity('${pls}')" />
										</div>
										<label class="col-md-2" for="ex4"><spring:message code="label.form.mobilenum" />*</label> 
										<div class="col-md-4">
											<input type="text" class=" form-control" id="mobilenum"
											placeholder="" required="yes"
											oninput="setCustomValidity('')"
											oninvalid="this.setCustomValidity('${pls}')" />
										</div>
										<label class="col-md-2" for="emaiid"><spring:message code="label.form.emailid" />*</label> 
										<div class="col-md-4">
											<input type="text" class="form-control" id="emailid"
											placeholder="" required="yes"
											oninput="setCustomValidity('')"
											oninvalid="this.setCustomValidity('${pls}')" />
										</div>
										
										
										
									</div>
									
									
								</div>
										
									</form>	
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.btn.close" /></button>
                          <button type="button" class="btn btn-primary"><spring:message code="label.btn.save" /></button>
                        </div>

                      </div>
                    </div>
                  </div>
                   <!-- /modals -->
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../../common/jsFooter.jsp" />

</body>
</html>
</compress:html>
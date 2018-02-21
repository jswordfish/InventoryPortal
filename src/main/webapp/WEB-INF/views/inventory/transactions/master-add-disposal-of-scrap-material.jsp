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
			<form id="disposalofscrap">

			<div class="right_col" role="main">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
									
										<spring:message code="label.document.disposalscrapmat.add" />
										
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content" style="display: block;"> <br> 
    
    							<div class="row form-group">
    							<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.disposalscrapmat.storename" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<input type="text" class="form-control" id="storename" name="storename">
    										
    								</div>
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.disposalscrapmat.disposalno" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control" id="disposalno" name="disposalno">
    										
    								</div>
    								</div>
    							</div>
    							
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.disposalscrapmat.disposaldate" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    								
    								<div class='input-group date' id='disposaldate'>
													<input type="text" class="form-control" value="" placeholder="dd/MM/yyyy" id="disposaleddate" name="disposaleddate" />
													 <span class="input-group-addon"> 
													 <span class="glyphicon glyphicon-calendar">
													 </span>
													</span>
												</div>
    								
    										
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.disposalscrapmat.disposalby" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<input type="text" class="form-control" id="disposalby" name="disposalby">
    									
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.disposalscrapmat.auctionorder" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control" id="auctionorder" name="auctionorder">
    										
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.disposalscrapmat.auctionordate" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div class='input-group date' id='auctionordated'>
													<input type="text" class="form-control" value="" placeholder="dd/MM/yyyy" id=auctionordate name="auctionordate" />
													 <span class="input-group-addon"> 
													 <span class="glyphicon glyphicon-calendar">
													 </span>
													</span>
												</div>
    								</div>
    							</div>
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.disposalscrapmat.handoverperson" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<textarea class="form-control" id="handoverperson" name="handoverperson"></textarea>
    								</div>
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.disposalscrapmat.disposalremark" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<textarea class="form-control" id="disposalremark" name="disposalremark"></textarea>
    								</div>
    								
    							</div>
    							
							</div>
									<div class="panel-body table-responsive">
										<table id=""  class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
											<thead>
															<tr>
																<th><spring:message code="label.tbl.srno" /></th>
																<th><spring:message code="label.document.scarpwrite.materialname" /></th>
																<th><spring:message code="label.document.scarpwrite.lotno" /></th>
																<th><spring:message code="label.document.scarpwrite.balqty" /></th>
																<th><spring:message code="label.document.scarpwrite.balqtyval" /></th>
																<th><spring:message code="label.document.scarpwrite.unitrate" /></th>
																<th><spring:message code="label.document.disposalscrapmat.disposalqty" /></th>
																<th><spring:message code="label.document.disposalscrapmat.disposalval" /></th>
																<th><spring:message code="label.document.rulemaster.addremove" /></th>
															</tr>
															
															
														</thead>
														<tbody>
														<tr>
																<td>1</td>
																<td>
																	<input type="text">
																</td>
																<td>
																	<input type="text">
																</td>
																<td>
																	<input type="text">
																</td>
																<td>
																	<input type="text">
																</td>
																<td>
																	<input type="text">
																</td>
																<td>
																	<input type="text">
																</td>
																<td>
																<span>
																	<a>
																		<i class="fa fa-plus btnAdded" aria-hidden="true"></i>
																	</a>
																</span>
																<span>
																/
																</span>
																<span>
																	<a>
																		<i class="fa fa-minus btnDeleted" aria-hidden="true"></i>
																	</a>
																</span>
																</td>
															</tr>
														</tbody>
										</table>
									</div>
									<div class="actionbar">
    										<button type="submit" class="btn"><spring:message code="label.btn.save" /></button>
    										<button type="reset" class="btn"><spring:message code="label.btn.reset" /></button>
    										<a href="" ><button type="button" class="btn"><spring:message code="label.btn.close" /></button></a>
										</div>
									
						</div>
							
						</div>
					</div>
					<div class="clearfix"></div>
					

				</div>
				
				
				
			</div>

</form>
                  <!-- /modals ends here-->

               
                   <!-- /modals ends here-->
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../../common/jsFooter.jsp" />
<script>
	$(function() {
		
		$.validator.addMethod('selecttype', function(value,element,param){
			return value!=param;
		}, "Please Select");
		$('#disposalofscrap').validate({
			rules:{
				disposalno:{
					required:true
				},
				storename:{
					required:true
				},
				disposaleddate:{
					required:true
				},
				disposalby:{
					required:true
				},
				auctionorder:{
					required:true
				},
				auctionordate:{
					required:true
				},
				handoverperson:{
					required:true
				},
				disposalremark:{
					required:true
				}
			},
			messages:{
			
			},

			errorPlacement: function(error, element){
				if(element.parent().hasClass('input-group')){
					error.insertAfter(element.parent());
				}else{
					findelement=element;
					element.after(error);	
				}
			}
		});
		
	    $('#disposaldate').datetimepicker({
	            viewMode : 'days',
	            format : 'DD/MM/YYYY',
	    		maxDate : new Date()
	    });
	    
	    $('#auctionordated').datetimepicker({
            viewMode : 'days',
            format : 'DD/MM/YYYY',
    		maxDate : new Date()
    });
	    
	    $('#agreedateend').datetimepicker({
            viewMode : 'days',
            format : 'DD/MM/YYYY',
    		maxDate : new Date()
    });
	    
	    
	    
	});
	</script>
</body>
</html>
</compress:html>
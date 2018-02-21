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
			<form id="purchaseorder">

			<div class="right_col" role="main">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
									
										<spring:message code="label.document.purchaseorder.add" />
										
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
    									<spring:message code="label.document.purchaseorder.purchaseno" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<select class="form-control">
    										<option value="0">Please Select</option>
    										<option value="1">1</option>
    									</select>
    										
    								</div>
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.purchaseorder.purchasedate" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div class='input-group date' id='purchaseddate'>
													<input type="text" class="form-control" value="" placeholder="dd/mm/yyyy" id=purchasedate name="purchasedate" />
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
    										<spring:message code="label.document.purchaseorder.purchasetype" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<select class="form-control" id="purchasetype" name="purchasetype">
    										<option value="0">Please Select</option>
    										<option value="1">1</option>
    									</select>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.purchaseorder.suppliername" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<select class="form-control" id="suppliername" name="suppliername">
    										<option value="0">Please Select</option>
    										<option value="1">1</option>
    									</select>
    									
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.purchaseorder.delieverterms" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<textarea class="form-control" id="delieverterms" name="delieverterms"></textarea>
    										
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.purchaseorder.payterms" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<textarea class="form-control" id="payterms" name="payterms"></textarea>
    										
    								</div>
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.purchaseorder.advance" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control">
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.purchaseorder.advanceamt" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control">
    								</div>
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.purchaseorder.purchasestats" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control" disabled>
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.purchaseorder.purchasecreated" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control" disabled>
    								</div>
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.purchaseorder.refno" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<input type="text" class="form-control">
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.purchaseorder.refdate" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div class='input-group date' id='leveltodate'>
													<input type="text" class="form-control" value="" placeholder="dd/MM/yyyy" id="leveledtodate" name="leveledtodate" />
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
    										<spring:message code="label.document.purchaseorder.remark" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<textarea class="form-control"></textarea>
    								</div>
    								</div>
    							</div>
    							
							</div>
									<div class="panel-body table-responsive">
										<table id=""  class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
											<thead>
															<tr>
																<th><spring:message code="label.tbl.srno" /></th>
																<th><spring:message code="label.document.purchaseorder.materialno" /><span class="required">*</span></th>
																<th><spring:message code="label.document.purchaseorder.indentno" /><span class="required">*</span></th>
																<th><spring:message code="label.document.purchaseorder.matdesc" /></th>
																<th><spring:message code="label.document.purchaseorder.balqty" /></th>
																<th><spring:message code="label.document.purchaseorder.orderqty" /></th>
																<th><spring:message code="label.document.purchaseorder.uom" /></th>
																<th><spring:message code="label.document.purchaseorder.unitprice" /></th>
																<th><spring:message code="label.document.purchaseorder.totalval" /></th>
																<th><spring:message code="label.document.purchaseorder.addremove" /></th>
															</tr>
															
															
														</thead>
														<tbody>
														<tr>
																<td>1</td>
																<td>
																	<select id="materialno" name="materialno">
																		<option value="0">Please Select</option>
																		<option value="1">1</option>
																	</select>
																</td>
																<td>
																	<select id="materialno" name="materialno">
																		<option value="0">Please Select</option>
																		<option value="1">1</option>
																	</select>
																</td>
																<td>
																	<input type="text" disabled>
																</td>
																<td>
																	<input type="text" disabled>
																</td>
																<td>
																	<input type="text">
																</td>
																<td>
																	<input type="text" disabled>
																</td>
																<td>
																	<input type="text" disabled>
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
		$('#purchaseorder').validate({
			rules:{
				purchasedate:{
					required:true
				},
				purchasetype:{
					required:true,
					selecttype:0
				},
				suppliername:{
					required:true,
					selecttype:0
				},
				delieverterms:{
					required:true
				},
				materialno:{
					required:true,
					selecttype:0
				},
				asondate:{
					required:true
				},
				leavetype:{
					required:true
				},
				balanceleave:{
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
		
	    $('#purchaseddate').datetimepicker({
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
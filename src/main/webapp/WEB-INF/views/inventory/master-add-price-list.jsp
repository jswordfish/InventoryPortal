<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
<compress:html >
<html>
<%@ page import="com.innowave.mahaulb.web.inventory.controller.forms.*, java.text.*" %>
<%
InventoryPriceMasterDTO form = (InventoryPriceMasterDTO)request.getSession().getAttribute("inventoryPriceMasterDTO");
String format = "yyyy-MM-dd";
DateFormat dateFormat = new SimpleDateFormat(format);
String rateContractDate = "";
	if(form.getCurrent() != null && form.getCurrent().getRateContractQuotDate() != null){
		rateContractDate = dateFormat.format(form.getCurrent().getRateContractQuotDate());
	}
	
String agreementDate="";
	if(form.getCurrent() != null && form.getCurrent().getAgreementDate() != null){
		agreementDate = dateFormat.format(form.getCurrent().getAgreementDate());
	}
	
	//agreementStartDate
String agreementStartDate="";
	if(form.getCurrent() != null && form.getCurrent().getAgreementStartDate() != null){
		agreementStartDate = dateFormat.format(form.getAgreementStartDate());
	}
//agreementEndDate
String agreementEndDate="";
	if(form.getCurrent() != null && form.getCurrent().getAgreementEndDate() != null){
		agreementEndDate = dateFormat.format(form.getAgreementEndDate());
	}
	
String supplierId = (String)request.getAttribute("supplierId");
String rateTypeId = (String)request.getAttribute("rateTypeId");
request.setAttribute("supplierId", supplierId);
request.setAttribute("rateTypeId", rateTypeId);
%>

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../common/header.jsp" />

</head>
<body class="nav-md">
 <form:form id="priceAddForm" action="savePrice" method="POST" modelAttribute="inventoryPriceMasterDTO">
	<div class="container body">
		<div class="main_container">
			<jsp:include page="../common/leftMenu.jsp" />
			<jsp:include page="../common/headerTop.jsp" />


		

			<div class="right_col" role="main">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
									
										<spring:message code="label.document.pricelist.add" />
										
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content" style="display: block;"> <br> 
    
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.pricelist.suppname" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									 <form:input path="supplierName" cssClass="form-control" disabled="true" name="supplierName" />
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.pricelist.ratetype" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<form:input path="rateType" cssClass="form-control" disabled="true" name="rateType" />
    								</div>
    							</div>
    							
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.pricelist.ratecontend" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<form:input path="rateContractQuotNo" cssClass="form-control" name="rateContractQuotNo"  />
    										
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.pricelist.ratecontdate" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<input type="date" name="rateContractDate" id="rateContractDate" class="form-control" value="<%= rateContractDate %>" />
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.pricelist.agreeno" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<form:input path="agreementNo" cssClass="form-control" name="agreementNo" />
    										
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.pricelist.agreedate" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								
										<input type="date" name="agreementDate" id="agreementDate" class="form-control" value="<%= agreementDate %>" />
									</div>
    									
    								
    							</div>
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.pricelist.agreestartdate" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									
										<input type="date" name="agreementStartDate" id="agreementStartDate" class="form-control" value="<%= agreementStartDate %>"  />
												
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.pricelist.agreeenddate" />:<span class="required">*</span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    							
										<input type="date" name="agreementEndDate" id="agreementEndDate" class="form-control" value="<%= agreementEndDate %>"  />
									
    									
    								</div>
    							</div>
    							
							</div>
									<div class="panel-body">
										<table id=""  class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
											<thead>
															<tr>
																<th><spring:message code="label.tbl.srno" /></th>
																<th><spring:message code="label.document.pricelist.materialno" /></th>
																<th><spring:message code="label.document.pricelist.rate" /></th>
																<th><spring:message code="label.document.pricelist.uom" /></th>
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
    										<button type="submit" class="btn" ><spring:message code="label.btn.save" /></button>
    										
    									
    										<button class="btn" type="submit" name="closePrice"><spring:message code="label.btn.close"  /></button>
										</div>
									
						</div>
							
						</div>
					</div>
					<div class="clearfix"></div>
					

				</div>
				
				
				
			</div>


                  <!-- /modals ends here-->

               
                   <!-- /modals ends here-->
			<jsp:include page="../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../common/jsFooter.jsp" />
<script>
	$(function() {
		
		$.validator.addMethod('selecttype', function(value,element,param){
			return value!=param;
		}, "Please Select");
		$('#addpricelist').validate({
			rules:{
				suppname:{
					required:true
				},
				ratecont:{
					required:true
				},
				ratetype:{
					required:true,
					selecttype:0
				},
				ratecontdate:{
					required:true
				},
				agreeno:{
					required:true
				},
				agreedate:{
					required:true
				},
				agreestartdate:{
					required:true
				},
				agreedatended:{
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
		
	    $('#agreeddate').datetimepicker({
	            viewMode : 'days',
	            format : 'DD/MM/YYYY',
	    		maxDate : new Date()
	    });
	    
	    $('#agreestarteddate').datetimepicker({
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
	
	function goback(){
		window.location = "closePrice";
	}
	</script>
	</form:form>
</body>
</html>
</compress:html>
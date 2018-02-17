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
String aStartDate = "";
	if(form.getAgreementStartDate() != null){
		aStartDate = dateFormat.format(form.getAgreementStartDate());
	}
	
String aEndDate="";
	if(form.getAgreementEndDate() != null){
		aEndDate = dateFormat.format(form.getAgreementEndDate());
	}

%>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../../common/header.jsp" />

</head>
<body class="nav-md">
 <form:form id="priceForm" action="searchpricemaster" method="POST" modelAttribute="inventoryPriceMasterDTO">
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
									
										<spring:message code="label.document.pricelist.search" />
										
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
    										<spring:message code="label.document.pricelist.suppname" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12 ">
	    								<div>
	    									<form:select id="deps" path="supplierId" cssClass="form-control"> 
											      <form:option value="-" label="--Please Select"/>
											      <form:options items="${suppliers}" itemValue="supplierId" itemLabel="supplierName"/>
											 </form:select>
	    								</div>
    								</div>
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.pricelist.ratetype" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12 ">
	    								<div>
	    									<form:select id="deps" path="rateTypeId" cssClass="form-control"> 
											      <form:option value="-" label="--Please Select"/>
											      <form:options items="${rateTypes}" itemValue="lookupDetId" itemLabel="lookupDetDescEn"/>
											 </form:select>
	    								</div>
    								</div>
    							</div>  
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.pricelist.agreestartdate" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    									<div class='input-group date' id='agreestarteddate'>
<!-- 													<input type="text" class="form-control" value="" placeholder="dd/MM/yyyy" id="agreestartdate" name="agreestartdate" /> -->
													<input type="date" name="aStartDate" id="aStartDate" class="form-control" value="<%= aStartDate %>" />
												</div>
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.pricelist.agreeenddate" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div class='input-group date' id='agreedateend'>
<!-- 													<input type="text" class="form-control" value="" placeholder="dd/MM/yyyy" id="agreedatended" name="agreedatended" /> -->
<!-- 													 <span class="input-group-addon">  -->
<!-- 													 <span class="glyphicon glyphicon-calendar"> -->
<!-- 													 </span> -->
<!-- 													</span> -->
									<input type="date" name="aEndDate" id="aEndDate" class="form-control" value="<%= aEndDate %>" />
												</div>
    									
    								</div>
    							</div>
    							
    							
    							<%-- <div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.actmaster.status" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									<input type="checkbox" >
    								</div>
    							</div> --%>
    							
									
    							<div class="actionbar">
    											<button type="submit" id="submitBtn" class="btn btn-success" name="searchpricemaster"><spring:message code="label.btn.search" /></button>
    											<button class="btn btn-deanger" type="submit"  name="resetpricemaster"><spring:message code="label.btn.reset" /></button>
    										
										</div>
    								
										
									</div>
							</div>
							
							<div class="x_panel ">
									<div class="x_title">
									<h2>
										<spring:message code="label.document.pricelist.list" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     	<button type="submit" id="addBtn"
										class="btn btn-success" name="addpricemaster"><spring:message code="label.btn.add" /></button>
				                     </li>	  
				                    </ul>
									</div>
									<div class="x_content">
										<div class="panel-body">
													<table id=""
														 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
														<thead>
															<tr>
															
																<th><spring:message code="label.document.pricelist.suppname" /></th>
																<th><spring:message code="label.document.pricelist.ratetype" /></th>
																<th><spring:message code="label.document.pricelist.agreementno" /></th>
																<th><spring:message code="label.document.pricelist.agreedate" /></th>
																
																<th><spring:message code="label.btn.editview" /></th>
															</tr>
															
															
														</thead>
														<tbody>
													  <c:forEach items="${inventoryPriceMasterDTO.rates}" var="rate" >   
						                      	<tr>
						                      		<td><c:out value="${rate.tmInvSupplier.supplierName}"></c:out></td>
						                      		<td><c:out value="${rate.tmCmLookupDet.lookupDetDescEn}"></c:out>  </td>
						                      		<td><c:out value="${rate.agreementNo}"></c:out>  </td>
						                      	
						                      		<td><c:out value="${rate.agreementDate}"></c:out>  </td>
						                      		
						                      		<td>
														<a href="javascript:editRate(${rate.rateContractId} )"><i class="fa fa-edit"></i></a> /
														 <a href="javascript:deleteRate(${rate.rateContractId} )"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
$('#hoardreg').datetimepicker({
	 viewMode : 'days',
     format : 'DD/MM/YYYY'
});

$('#tojournal').datetimepicker({
	 viewMode : 'days',
    format : 'DD/MM/YYYY'
});

function editRate(rateid) {
    window.location = "editRate?rateId="+rateid+"&edit=true";
 }

function deleteRate(rateid) {
    window.location = "deleteRate?rateId="+rateid+"&edit=true";
 }
</script>
</form:form>
</body>
</html>
</compress:html>
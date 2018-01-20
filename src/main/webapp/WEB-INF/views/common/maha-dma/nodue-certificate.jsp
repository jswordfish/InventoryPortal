<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
 
<compress:html >
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Government of Maharashtra</title>

    <link rel="icon" href="images/favicon.ico">
  <jsp:include page="../homeheader.jsp" />
  
  
  <style>
    .error{
        color: red !important;
    }
    
    .has-error .form-control {
    border-color: red !important;
   }
    </style>
  
  </head>
 <body>
  <jsp:include page="../citizenHeaderTop.jsp" />
<form:form id="ackFrm" name="ackFrm" modelAttribute="ackFrm">
  <form:hidden id="srnIdAck" path="srn_id"/>
</form:form>
<form:form id="nocFrm" name="nocFrm" modelAttribute="nocFrm">
  <form:hidden id="srnIdNoc" path="srn_id"/>
</form:form>

<form:form id="nocFrmProp" name="nocFrmProp" modelAttribute="nocFrmProp">
  <form:hidden id="srnIdNocProp" path="srn_id"/>
</form:form>
   
  
	<form:form action="" name="property-nodue-form" id="frmData" method="POST" modelAttribute="applicationBean">
	<%-- <jsp:include page="../../property/view-search-property-water.jsp"> --%>
  	<div class="prop-section">
    	<div class="container">
	      <div class="property-search-process">
	        <div class="form-title">
	          <h1><spring:message code="label.document.nodue.title" /></h1>
	        </div>
        
        <div class="form-details">
        
     	<div class="ulb-section">		
			<div class="toggle-header" data-target="#application-details">
				<h2 class="StepTitle">
					<spring:message code="label.document.nodue.application-title" />
					<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
				</h2>
			</div>
           	
           	<div id="application-details">
           		<div class="row" >
				<div class="form-group col-md-12 col-sm-12 col-xs-12">
					<label for="ulb-name" class="col-md-2 col-sm-12 col-xs-12" >
						<spring:message code="label.document.nodue.ulbname" />
					</label>
					<div class="col-md-6 col-sm-12 col-xs-12">
						<form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
						<%-- <form:hidden path="" id="servDeschide" value="${servDeschide }"/> --%>
						<form:hidden path="setServiceId" id="servDeschide" value="${servDeschide }"/>
						<form:select class=" form-control" path="ulbIdDesc" id="ulbIdDesc">
						<form:option value=""><spring:message code="label.document.nodue.ulbsel" /></form:option>
						</form:select> 
						<%--  
							<select class="form-control" id="ulbIdDesc" name="ulbIdDesc">
						     <option>Select ULB</option>
						 	</select>
						--%>
					</div>
				 </div><!-- form-group -->
			</div><!-- row -->
             
             <div class="row">
	            <div class="form-group col-md-12 col-sm-12 col-xs-12">
	               <label class="col-md-2" for="selservicename">
	               	<spring:message code="label.document.nodue.servicename" />
	               </label>
	                <div class="col-md-6">
		                <%-- 
		                	<select class="form-control" id="serviceId" name="serviceId">
		                      <option>Select Service Name</option>
		                  	</select> 
		                --%>
						<form:select class=" form-control" path="" id="setServiceId" disabled="true" >
						<form:option value="" readonly="true" ><spring:message code="label.document.nodue.selservicename" /></form:option>
						</form:select>
	                </div>
	            </div><!-- form-group -->
           	 </div><!-- row -->
           	 
           	 <jsp:include page="applicant-details.jsp" />
           	</div>
           	           	
           	
           	<div class="dynamic-div">
	           	<%-- <c:out value = "${applicationBean.requestFor}"/> --%>
	           	  <input type="hidden" id="checkServ" value="${applicationBean.requestFor}">
	           	<c:choose>
				    <c:when test="${applicationBean.requestFor.equalsIgnoreCase('property')}">
				        <jsp:include page="../../servicewise/nodue-property.jsp" />
				    </c:when>
				     <c:when test="${applicationBean.requestFor.equalsIgnoreCase('water')}">
				        <jsp:include page="../../servicewise/nodue-water.jsp" />
				    </c:when>
				    <c:otherwise>
				       &nbsp;
				    </c:otherwise>
				</c:choose>
				
				<div class="toggle-header" data-target="#chargeDiv">
					<h2 class="StepTitle"> <spring:message code="label.document.nodue.charge"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i> </h2>
				</div>
				
				<div id="chargeDiv">
	             	<div class="row">
		             	<div class="form-group col-md-12 col-sm-12 col-xs-12"> 
		                  	<label for="payAmt" class="col-md-2 col-sm-12 col-xs-12">
		                  		<spring:message code="label.document.nodue.charge" />:
		                  	</label> 
		                  	<div class="col-md-4 col-sm-12 col-xs-12"> 
		                    	<form:input path="payAmt" class=" form-control" name="payAmt" readonly="true" /> 
		                  	</div> 
		                  	<div class="col-md-6 col-sm-12 col-xs-12"> 
		                    	<input type="button" class="btn btn-success" id="payCharges" value="<spring:message code="label.btn.pay"/>"> 
		                  	</div> 
	                  	</div>
	             	</div>
      			</div>
      			
      			<div class="row">
				   	 <div class="col-md-12 col-sm-12 col-xs-12">
				   	 	<div class="actionBar">
				           <button type="button" id="applicantSave" class="btn"><spring:message code="label.btn.save" /></button>
					         <button type="reset" id="" class="btn"><spring:message code="label.btn.reset" /></button>
					  	</div>
				   	 </div>
				 </div><!-- row -->
      		  </div>	
           </div>
           
			
      		
      		<%-- <div class="row">
      			<div class="col-md-2 col-sm-12 col-xs-12" > 
      				<div class="text-center">
			         <a href="/home" class="btn btn-danger" onClick="history.go(-1); return false;"><spring:message code="label.document.nodue.back" /></a>
			         </div>
			    </div> 
      		</div> --%>
        </div>
      </div> 
    </div>
  </div>
</form:form>

<jsp:include page="../citizenFooter.jsp" />
<jsp:include page="jsFooter.jsp" />

<c:url var='ackUrl' value='/common/view/acknowledgment'/>
<c:url var='nocUrl' value='/water/view/nocCertificate'/>
<c:url var='nocUrlProperty' value='/property/view/nocCertificate'/>

<c:url var='sendNoDuePayProperty' value='/common/application/save'/>
<c:url var='jsonPropertyUrl' value='/property/rest/search/knowproperty' />
<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
<c:url var='jsonWaterUrl' value='/water/rest/search/knowwater' />
<c:url var='jsonBillDetailUrl' value='/water/rest/search/waterPayDue' />
<c:url var='sendForPay' value='/water/send/waterPayMoney' />

<c:url var='searchWaterDet' value='/water/view/search' />

<c:set var='sessionId' value='${pageContext.session.id}' />
<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
<c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
<c:url var='jsonpaymentgateway' value='/water/rest/send/waterPaymentGateway' />
<c:url var='jsonsearchWaterUrl' value='/water/rest/search/waterPayNoDue' />
<c:url var='waterPayMoney' value='/water/rest/send/waterPayMoneyForNoDue' />
<c:url var='sendToNoChargeAck' value='/water/rest/NoChargeAckForNOCWater' />

<!-- -------------   property sati---------------------- -->

<c:url var='jsonKnowPropertyType' value='/property/rest/search/propertytypeT' />
<c:url var='jsonsearchPropertyNoDues' value='/property/rest/search/propertyPayNoDues' />
<c:url var='jsonDuesForPropertyOnType' value='/property/rest/getDuesOnPropTypeT' />
<c:url var='jsonsearchPropertyChargesUrl' value='/property/rest/getChargesForProperty' />
<c:url var='jsonpaymentgatewayProp' value='/property/rest/send/propertyPaymentGateway' />
<c:url var='searchPropertyDet' value='/property/view/searchPropDetail' />
<c:url var='JSONPropertyPayDueMoney' value='/property/rest/paymentForPropertyNoDues' />
<c:url var='jsonsearchFlatOnPropertyNo' value='/property/rest/getFlatsDetailsOnPropertyNo' />
<c:url var='sendToNoChargeAckProperty' value='/property/rest/NoChargeAckForNOCProperty' />

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	   <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    <script src="<c:url value="/js/waitingfor.js" />"></script>
    <script src="<c:url value="/js/applicant_validation.js" />"></script> 
	
	<script>
		var jsonULBListUrl = "${jsonULBListUrl}";
		var jsonServiceListUrl = "${jsonServiceListUrl}";
		var sendNoDuePayProperty="${sendNoDuePayProperty}";
		var sendNoDuePayWater="${sendNoDuePayWater}";
		var searchWaterDet = "${searchWaterDet}";
		var jsonsearchWaterChargesUrl = "${jsonsearchWaterChargesUrl}";
		var jsonpaymentgateway = "${jsonpaymentgateway}";
		var jsonsearchWaterUrl = "${jsonsearchWaterUrl}";
		var waterPayMoney = "${waterPayMoney}";
		var sendToNoChargeAck = "${sendToNoChargeAck}";
		var ackUrl = "${ackUrl}";
		var nocUrl = "${nocUrl}";
		
	//<!-- -------------   property sati---------------------- --> //
	
		var jsonKnowPropertyType = "${jsonKnowPropertyType}";
		var jsonsearchPropertyNoDues="${jsonsearchPropertyNoDues}";
		var jsonDuesForPropertyOnType="${jsonDuesForPropertyOnType}";
		
		var jsonsearchPropertyChargesUrl="${jsonsearchPropertyChargesUrl}";
		var jsonpaymentgatewayProp="${jsonpaymentgatewayProp}";
		var searchPropertyDet = "${searchPropertyDet}";
		var JSONPropertyPayDueMoney = "${JSONPropertyPayDueMoney}";
		var jsonsearchFlatOnPropertyNo = "${jsonsearchFlatOnPropertyNo}";
		var sendToNoChargeAckProperty = "${sendToNoChargeAckProperty}";
		var nocUrlProperty = "${nocUrlProperty}";
		
	</script>
<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
<script src="<c:url value="/application/js/application.min.js" />"></script> 

<script type="text/javascript">
$(document).ready(function(){ 
   $("#setServiceId").val($("#servDeschide").val());
   
   $(document).on('click', '.toggle-header', function(e){
		$content = $($(this).data('target'));
	    if(!$content.is(':visible')){
	      $content.slideDown('slow');
	      $(this).find('i.toggle-icon span').html('keyboard_arrow_up')
	    }
	    else{
	    	$content.slideUp('slow');
	      $(this).find('i.toggle-icon span').html('keyboard_arrow_down')
	    }
	  });
});
</script>
  </body>
</html>
</compress:html>

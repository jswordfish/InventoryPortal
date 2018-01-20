<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
 
<compress:html >
<!DOCTYPE html>
<html lang="en" style="height:100%;">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Government of Maharashtra</title>

    <link rel="icon" href="images/favicon.ico">
  <link rel="icon" href="images/favicon.ico">
 <jsp:include page="../homeheader.jsp" />  
  </head>
 <body>
  <jsp:include page="../citizenHeaderTop.jsp" />


   
<%-- <form:form method="post" action="${sendApplicationDetails}" id="property-nodue-form" modelAttribute="applicationBean"> --%>
  <form:form id="extractFrmProp" name="extractFrmProp" modelAttribute="extractFrmProp">
    <form:hidden id="srnIdExtractProp" path="srn_id"/>
  </form:form>
<form:form action="" name="property-extract-form" id="frmData" method="POST" modelAttribute="applicationBean">
  <div class="prop-section" style="height: calc(100% - 194px);overflow-y:auto;overflow-x: hidden;">

    <div class="container" style="height: 100%">
      <div class="property-search-process">
        <div class="form-title">
          <h3><spring:message code="label.document.propext.title" /></h3>
        </div>
        <div class="form-details">
        
<%--          <form:form action="" name="property-nodue-form" id="frmData" method="POST" modelAttribute="applicationBean"> --%>
         <form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
         <form:hidden path="setServiceId" id="servDeschide" value="${servDeschide }"/>
         <input type="hidden" id="srn_id" name="srn_id" >
          
          
          
     	<div class="ulb-section">	
     			
     			
     			
     			<div class="row">
				              <div class="form-group col-md-12 col-sm-12 col-xs-12">
				                 
				                <label class="col-md-2" for="ulb-name"><spring:message code="label.document.servicereq.ulbname" /><span class="required">*</span>:</label>
					                <div class="col-md-6">
						                <select class=" form-control" id="ulbIdDesc" name="ulbIdDesc">
											<option value="0"><spring:message code="label.document.servicereq.selulb" /></option>
						                </select> 
					                </div>
				              </div>
				             
					           <div class="form-group col-md-12 col-sm-12 col-xs-12">
	               <label class="col-md-2" for="ulb-name"><spring:message code="label.document.nodue.servicename" /></label>
	                <div class="col-md-6">
	               
	                  <form:select class=" form-control" path="" id="setServiceId" disabled="true" >
                			<form:option value="" readonly="true" ><spring:message code="label.document.nodue.selservicename" /></form:option>
                	</form:select>
	                </div>
	            </div>
				           	 </div>
     			
     					
            
            </div>
          
           	<div class="process-div">
               <jsp:include page="applicant-details.jsp" />
               
           	</div>
           
           	<div class="dynamic-div">
			        <jsp:include page="../../servicewise/extractProperty.jsp" />
			        
			        <div class="process-div" id="propExchargeDiv">
		             	<div class="row">
			             	<div class="form-group col-md-12 col-sm-12 col-xs-12"> 
			                  	<label for="name" class="col-md-2 col-sm-12 col-xs-12">Charge:</label> 
			                  	<div class="col-md-2 col-sm-12 col-xs-12"> 
			                    	<%-- <form:input path="propExChargesAmt" class=" form-control" name="propExChargesAmt" readonly="true" />  --%>
			                   	<form:input path="payAmt" class=" form-control" name="payAmt" readonly="true" /> 
			                  	</div> 
			                  	<div class="col-md-2 col-sm-12 col-xs-12"> 
			                    	<input type="button" class="btn btn-success" id="payCharges" value="Pay"> 
			                  	</div> 
			                  	<!-- <div class="col-md-2 col-sm-12 col-xs-12"> 
			                    	<input type="button" class="btn btn-primary" value="propExPrint">
			                  	</div> -->
		                  	</div>
		             	</div>
	      			</div>
      		</div>	
      		<div class="row">
         	 	<div class="actionbar">
	                 <button type="button" id="extractApplSave" class="btn"><spring:message code="label.btn.save" /></button>
	                 <button type="reset" id="" class="btn"><spring:message code="label.btn.reset" /></button>
              </div>
            </div>
            
      		
        </div>
      </div> 
    </div>
  </div>
 </form:form> 
<%-- </form:form> --%>


<jsp:include page="../../common/maha-dma/jsFooter.jsp" />
<%-- <c:url var='getPropertyExtract' value='/property/rest/getPropExtractData'/> --%>
<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
<c:set var='sessionId' value='${pageContext.session.id}' />
<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
<c:url var='jsonsearchPropertyUrl' value='/property/rest/search/property' />


<c:url var='searchWaterDet' value='/water/view/search' />

<c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
<c:url var='jsonpaymentgateway' value='/water/rest/send/waterPaymentGateway' />
<c:url var='jsonsearchPropertyUrl' value='/property/rest/search/propertyPayNoDue' />
<c:url var='propertyPayMoney' value='/water/rest/send/waterPayMoneyForNoDue' /> 
 
 
 <c:url var='jsonKnowPropertyType' value='/property/rest/search/propertytypeT' />
 <c:url var='jsonDuesForPropertyOnType' value='/property/rest/getDuesOnPropTypeT' />
 <c:url var='jsonsearchPropertyChargesUrl' value='/property/rest/getChargesForProperty' />
 <c:url var='sendToNoChargeAckProperty' value='/property/rest/NoChargeAckForNOCProperty' />
 <c:url var='sendNoDuePayProperty' value='/common/application/save'/>
 <c:url var='JSONPropertyPayDueMoney' value='/property/rest/paymentForPropertyNoDues' />
 <c:url var='extractUrlProperty' value='/property/view/propExtractCertificate'/>
 <c:url var='searchPropertyDet' value='/property/view/searchPropDetail' />  
  <c:url var='jsonpaymentgatewayProp' value='/property/rest/send/propertyPaymentGateway' />
 <c:url var='jsonsearchFlatOnPropertyNo' value='/property/rest/getFlatsDetailsOnPropertyNo' />
 
 
    <script src="<c:url value="/js/waitingfor.js" />"></script>
    <script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
    <script src="<c:url value="/application/js/application.min.js" />"></script> 
    <script src="<c:url value="/js/applicant_validation.js" />"></script> 
   
     
	<jsp:include page="jsFooter.jsp" />  
	
	<script>
		/* var jsonPropertyUrl = "${getPropertyExtract}"; */
		var jsonULBListUrl = "${jsonULBListUrl}";
		var jsonServiceListUrl = "${jsonServiceListUrl}";
		
		// added urls.....
		var jsonsearchPropertyUrl = "${jsonsearchPropertyUrl}";
		var jsonsearchPropertyExUrl = "${jsonsearchPropertyExUrl}";
		var sendDuesPayPropertyEx ="${sendDuesPayPropertyEx}";
		var searchPropertyDet = "${searchPropertyDet}";
		
		
		var propertyPayMoney = "${propertyPayMoney}";
		
		
		var jsonKnowPropertyType = "${jsonKnowPropertyType}";
		var jsonDuesForPropertyOnType="${jsonDuesForPropertyOnType}";
		var jsonsearchPropertyChargesUrl = "${jsonsearchPropertyChargesUrl}";
		var sendToNoChargeAckProperty = "${sendToNoChargeAckProperty}";
		var sendNoDuePayProperty = "${sendNoDuePayProperty}";
		var JSONPropertyPayDueMoney = "${JSONPropertyPayDueMoney}";
		var jsonpaymentgatewayProp="${jsonpaymentgatewayProp}";
		var extractUrlProperty="${extractUrlProperty}";
		var jsonsearchFlatOnPropertyNo = "${jsonsearchFlatOnPropertyNo}";
		</script>
	 	
	
<script type="text/javascript">
    $(document).ready(function(){ 
      $("#setServiceId").val($("#servDeschide").val());
     });
    
    
    function removeEmptyValueFromJSON(reqArr){
        for(var key in reqArr) {
            if (reqArr[key] == undefined || reqArr[key] == '') {
                delete reqArr[key];
            }
            for(var inKey in reqArr[key]) {
                if (reqArr[key][inKey] == undefined || reqArr[key][inKey] == '') {
                    delete reqArr[key][inKey];
                }
            }
        }
        return reqArr;
    }

    
   $('#extractApplSave').click(function () {
	

		 
	    console.log(" inside Extract Applicant Save  ");
	 	
	 	var datavar = $("#frmData").serializeObject();
	 	 console.log(" >>> datavar <<< "+datavar);
	 	var json_string = JSON.stringify(datavar);
	 	 console.log(" >>> json_string <<< "+json_string);
	 	var datavar = removeEmptyValueFromJSON(json_string);
	 	 console.log(" >>> datavar <<< "+datavar);
	 
	 	 
	 	$.ajax({
	 		type : "POST",
	 		url : sendToNoChargeAckProperty,
	 		contentType: "application/json; charset=UTF-8",
	 		dataType : 'json',
	 		data : datavar,
	 		async : false,
	 		success : function(data2) 
	 		{ 
	 
	 			
	 			debugger
	 			 if(data2.serviceResp > 0)
		            {
	 				 if(data2.serviceCode=="PTE"){
	 					
	 					 $('#srnIdExtractProp').val(data2.srn_id)
		 				 $('#extractFrmProp').attr('action', extractUrlProperty);
		 				 $("#extractFrmProp").submit(); 
	 					 
	 				 }
	 				 else
	 				   {
		 			     $('#srnIdNocProp').val(data2.srn_id)
		 				 $('#nocFrmProp').attr('action', nocUrlProperty);
		 				 $("#nocFrmProp").submit(); 
		                }
	 				 
		            }
	 			 else
	 			 {
	 				PNotify.removeAll();
	 				new PNotify({
	 					title : 'Error while saving data.',
	 					styling : 'bootstrap3',
	 					type : 'error'
	 				});	 
	 				 
	 			 }
	 	 
	 	 
	 	
	 	
	 		} //success
	 	
	 	
	 	
	 	
	 	}); //properrtyajax
	 	 
	   
});

    
    
    
</script>

  </body>
</html>
</compress:html>

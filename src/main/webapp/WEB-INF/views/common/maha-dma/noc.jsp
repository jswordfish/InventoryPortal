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

	<div class="prop-section">
		<div class="container">
			<div class="form-title">
				<h1><spring:message code="label.document.nocservice.pageTitle"/></h1>
				<a href="<c:url value="/home" />"><span class="home-icon"><i class="fa fa-home"></i></span></a>
			</div><!-- form-title -->

			<form:form id="ackFrm" name="ackFrm" modelAttribute="ackFrm">
				<form:hidden id="srnIdAck" path="srn_id"/>
			</form:form>
			
			<input type="hidden" id="servDeschide" name="servDeschide" value="${servDeschide}">
			<input type="hidden" id="ulbIdDeschide" name="ulbIdDeschide" value="${ulbIdDeschide}">
			
			<div class="ulb-section">
				<div class="toggle-header" data-target="#application-details">
					<h2 class="StepTitle"><spring:message code="label.document.newtradelic.applicantdet" />
						<i class="glyphicon glyphicon-chevron-down toggle-down"><span>keyboard_arrow_down</span></i>
					</h2>
				</div>

			<form:form action="" method="POST" modelAttribute="applicationBean" id="frmData">
				<input type="hidden" id="flag" name="flag" value="noc">
				<form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
				<form:hidden path="setServiceId" id="servDeschide" value="${servDeschide }"/>
				<div id="application-details" >
					<div class="row">
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label for="ulbIdDesc" class="col-md-2 col-sm-12 col-xs-12" >
								<spring:message code="label.document.newtradelic.ulbname" />
							</label>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<select class=" form-control" id="ulbIdDesc" name="ulbIdDesc">
									<option value="">Select ULB</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="col-md-2" for="setServiceId">
								<spring:message code="label.document.newtradelic.servicename" />:
							</label>
							<div class="col-md-6">
								<select class=" form-control"  id="setServiceId"name="setServiceId" disabled="disabled">
									<option value=""><spring:message code="label.document.newtradelic.selservicename" /></option>
								</select>
							</div>
						</div>
					</div>
				
					<jsp:include page="applicant-details.jsp" />
					<jsp:include page="../../servicewise/noc-service.jsp" />
				</div>
			</form:form>
			
			<div class="toggle-header" data-target="#upload-div">
				<h2 class="StepTitle toggle-header">
					<spring:message code="label.document.newtradelic.uploaddoc" />
					<i class="glyphicon glyphicon-chevron-down toggle-down"><span>keyboard_arrow_down</span></i>
				</h2>
			</div>

			<div id="upload-div">
				<!-- 
				<div class="toggle-header" data-target="#upload-div">
					<h2 class="StepTitle toggle-header" id="upload-div">Upload Document <i class="glyphicon glyphicon-chevron-down toggle-icon">keyboard_arrow_down</i>
					</h2>
					</div>
				<div class="row" id="upload-div"> 
				-->
				<c:url var='jsonCommonChecklistUrl' value='/common/service/saveChecklist' />
				<form:form modelAttribute="filesBean"  method="post" action="${jsonCommonChecklistUrl}" enctype="multipart/form-data"  id="checkListForm">
					<form:hidden path="returnURL" id="returnURL"/>
						<jsp:include page="checklist.jsp" />
						
					</form:form>
				</div>
			</div>

			<div class="col-md-4 col-sm-4 col-xs-12">
				<button type="button" id="saveNocData" name="saveNocData" class="btn">
					<spring:message code="label.btn.save" />
				</button>
			</div>

			<div class="toggle-header" data-target="#charges-details" id="chargeIdPay">
				<h2 class="StepTitle">
					<spring:message code="label.document.newtradelic.charges" /> 
					<i class="glyphicon glyphicon-chevron-down toggle-down">
						<span>keyboard_arrow_down</span>
					</i>
				</h2>
			</div>

			<%--   <form>  --%>

			<div id="charges-details">
				<div class="form-group">
					<label class="control-label col-md-2 col-sm-2 col-xs-12">
						<spring:message code="label.document.newtradelic.charges" />:
					</label>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<input type="text" id="payAmt" name="payAmt" class="form-control" required="required" disabled="disabled">
					</div>
					
					<div class="col-md-4 col-sm-4 col-xs-12">
						<button type="button" id="payCharges" name="payCharges" class="btn"><spring:message code="label.btn.pay"/></button>
					</div>
				</div>
			</div>

			<%--
				<div class="col-md-4 col-sm-4 col-xs-12">
					<button type="submit" id="genReport" name="genReport" class="btn">Generate Report</button>
				</div>
			</form> 
			--%>
			
			<%-- 
			<form:form modelAttribute="ttlsLicense" method="POST">
				<jsp:include page="../../servicewise/noclicensce.jsp" />
			</form:form> 
			--%>
		</div>
	</div>

	<jsp:include page="jsFooter.jsp" />
	<jsp:include page="../../common/citizenFooter.jsp" />
	
	<c:url var='jsonLookupUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookup' />
	<c:url var='jsonLookupDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupDet' />
	<c:url var='jsongetNocReportData' value='/rest/noc/getNocReportData' />
	<c:url var='ackUrl' value='/water/view/acknowledgment' />
	<c:url var='JSONsaveNocServiceData' value='/rest/noc/save/nocSaveGateway' />
	<c:url var='jsonpaymentgateway' value='/rest/noc/send/nocPaymentGateway' />
	<c:url var='sendNoDuePayProperty' value='/common/application/save'/>
	<c:url var='waterPayMoney' value='/water/rest/send/waterPayMoneyForNoDue' />
	<!-- For get Ulb and Service name,buildingType------------ -->
	<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
	<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
	<c:url var='jsonULBbusinessTypeListUrl' value='/rest/noc/buildingType' />
	<!------------ For Property------- -->
	<c:url var='searchPropertyDet' value='/property/view/searchPropDetail' />     <!-- For Question Mark Search -->
	<c:url var='jsonKnowPropertyType' value='/rest/noc/search/propertytypeT'/>
	<c:url var='jsonsearchPropertyChargesUrl' value='/rest/noc/getChargesForProperty' />
	<c:url var='jsonDuesForPropertyOnType' value='/rest/noc/getDuesOnPropTypeT' />
	<c:url var='jsonsearchFlatOnPropertyNo' value='/rest/noc/getFlatsDetailsOnPropertyNo' />
	<c:url var='JSONPropertyPayDueMoney' value='/property/rest/paymentForPropertyNoDues' />
	<!-- For License------------ -->
	<c:url var="searchLicenDet" value="/rest/noc/viewSearch"/>
	<c:url var="paymentUrl" value="/duplicate/PayCharge"/>
	<!-- For Water ------------->
	<c:url var='searchWaterDet' value='/rest/noc/view/search' />
	<c:url var='jsonsearchWaterUrl' value='/rest/noc/search/waterPayNoDue' />
	<c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
	<c:url var="jsonResultUrl" value="/rest/noc/viewResult"/>
	<!------------ For Noc Charges------- -->
	<c:url var='jsonsearchNocChargesUrl' value='/rest/noc/getChargesForNoc' />
	<c:url var='jsonULBConstructionClassListUrl' value='/rest/common/ulb/constructionClass' />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	
	<script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
	
	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
	<script src="<c:url value="/js/upload.js" />"></script>
	<script src="<c:url value="/js/applicant_validation.js" />"></script>
	<script src="<c:url value="/common/common.min.js" />"></script>
	<script>
		var searchPropertyDet = "${searchPropertyDet}";
		var searchLicenDet = "${searchLicenDet}";
		var searchWaterDet = "${searchWaterDet}";
		var jsonsearchWaterUrl = "${jsonsearchWaterUrl}";
		var jsonsearchWaterChargesUrl = "${jsonsearchWaterChargesUrl}";
		var jsonKnowPropertyType = "${jsonKnowPropertyType}";
		var jsonsearchPropertyChargesUrl="${jsonsearchPropertyChargesUrl}";
		var jsonDuesForPropertyOnType="${jsonDuesForPropertyOnType}";
		var jsonsearchFlatOnPropertyNo = "${jsonsearchFlatOnPropertyNo}";
		var sendNoDuePayProperty="${sendNoDuePayProperty}";
		var jsonsearchNocChargesUrl="${jsonsearchNocChargesUrl}";
		var jsonpaymentgateway="${jsonpaymentgateway}";
		var waterPayMoney = "${waterPayMoney}";
		var JSONPropertyPayDueMoney = "${JSONPropertyPayDueMoney}";
		var JSONsaveNocServiceData = "${JSONsaveNocServiceData}";
		var ackUrl = "${ackUrl}";
		var jsongetNocReportData = "${jsongetNocReportData}";
		var jsonLookupUrl = "${jsonLookupUrl}";
		var jsonLookupDetUrl = "${jsonLookupDetUrl}";
		var jsonCommonChecklistUrl = "${jsonCommonChecklistUrl}";
		var jsonResultUrl = "${jsonResultUrl}";
	</script>
	
	<script>	
	
	$(document).ready(function(){
		
		$(document).on('click', '.toggle-header', function(e){
		   $content = $($(this).data('target'));
		    
		    if(!$content.is(':visible')){
		      $content.slideDown('slow');
		      $(this).find('i.toggle-icon span').html('keyboard_arrow_up');
		    }
		    else{
		    	$content.slideUp('slow');
		      $(this).find('i.toggle-icon span').html('keyboard_arrow_down');
		    }
		 });
		
		$("#charges-details").hide();
		$("#firstpropdiv").hide();
		$("#secondpropdiv").hide();
		$("#thirdpropdiv").hide();
		$("#fourthpropdiv").hide();
		$("#payDueProp").hide();
		$("#firstwaterdiv").hide();
		$("#secondwaterdiv").hide();
		$("#payDuewater").hide();
		$("#proppayDueAmt").hide();
		$("#payDueAmt").hide();
		/*  $("#licenseTypeId").hide(); */
		$("#licenseTimePeriodId").hide();
		$("#saveNocData").hide();
		$("#savData").hide();
		$("#waterLabelId").hide();
		$("#propLabelId").hide();
		$("#flatDiv").hide();
		$("#chargeIdPay").hide();
		
		
		getULBListIDnDesc("${jsonULBListUrl}","ulbIdDesc");
		getServiceList("${jsonServiceListUrl}","setServiceId");
		getBusinessTypeData();
			
		$("#setServiceId").val($("#servDeschide").val());
		$("#ulbIdDesc").val($("#ulbIdDeschide").val());
				
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
	
		$("#genReport").click(function() {
			if  ($('#ulbIdDesc').val() != 0)
			{
				$('#frmData').attr('action', jsongetNocReportData);
				$("#frmData").submit();
			}
			else			{
				$('#ulbIdDesc').focus().select().css('border-color', 'red');
				alert("Please Select ULB Name");
			}
		});
	}); //Document.ready
	</script>
	<%-- <script src="<c:url value="../common/surveyReqForm_validation.js" />"></script> --%>
</body>
</html>
</compress:html>

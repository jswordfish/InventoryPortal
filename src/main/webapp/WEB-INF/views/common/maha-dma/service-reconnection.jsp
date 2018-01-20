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
 <jsp:include page="../../common/homeheader.jsp" />
 </head>
<body>
	<jsp:include page="../../common/citizenHeaderTop.jsp" />
  <div class="prop-section">
    <div class="container">
    			<div class="form-title">
    				<h1><spring:message code="label.document.servicereq.reconnection-title"/></h1> 
    				<span class="home-icon"><i class="fa fa-home"></i></span> 
    			</div><!-- form-title-->

                <div>
					<div class="ulb-section">
					  <div class="toggle-header" data-target="#application-details">
					   	<h2 class="StepTitle">
					   		<spring:message code="label.document.citizenser.applicantdet" /> 
					 		<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
					 	</h2>
					</div>

	                 <form:form action="" method="POST" modelAttribute="applicationBean" id="frmData">
		                <form:hidden path="" id="waterConnectionId" name="connectionId"/>
						<form:hidden path="" id="taxId" name="taxId"/>
						<form:hidden path="" id="taxDetId" name="taxDetId"/>
						<form:hidden path="" id="srnId" name="srnId"/>
						<form:hidden path="" id="emailId" value=""/>
                       				<input type="hidden"  id="action" value="${action }">
                      
                       <div class="" id="application-details">					
				            <div class="row">
				              <div class="form-group">
				                <label for="ulbIdDesc" class="col-md-2 col-sm-12 col-xs-12">
				                	<spring:message code="label.document.servicereq.ulbname" />
				                	<span class="required">*</span>:
				                </label>
				                <div class="col-md-6 col-sm-12 col-xs-12">
				            		<form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
									<%-- <form:hidden path="" id="servDeschide" value="${servDeschide }"/> --%>
				                	<form:hidden path="setServiceId" id="servDeschide" value="${servDeschide }"/>
					               	<form:select class="form-control" path="ulbIdDesc" id="ulbIdDesc">
										<form:option value=""><spring:message code="label.document.servicereq.selulb" /></form:option>
					               	</form:select> 
				                </div>
				              </div>
				            </div>
				             
				             <div class="row">
				              	<div class="form-group">
					               <label for="setServiceId" class="col-md-2 col-sm-12 col-xs-12">
										<spring:message code="label.document.servicereq.sername" /><span class="required">*</span>:
					               </label>
					                <div class="col-md-6 col-sm-12 col-xs-12">
						                 <form:select class=" form-control" path="" id="setServiceId" disabled="true" >
					                		<form:option value="" readonly="true" ><spring:message code="label.document.servicereq.selsername" /></form:option>
					                	</form:select>
					                </div>
					            </div>
				           	 </div>
				           	 
	                      	<jsp:include page="applicant-details.jsp" /> 
	                        	<jsp:include page="../../servicewise/servicewise-reconnection.jsp" />
							<%-- <jsp:include page="checklist.jsp" /> --%>
						</div><!-- #application-details -->
	                 </form:form>
                 
                       <div id="uploadHide" >
                           <div class="toggle-header" data-target="#upload-div">
                           	<h2 class="StepTitle toggle-header">
	                           	<spring:message code="label.document.servicereq.uploaddoc"/> 
	                           	<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	                           	</h2>
                           	</div>			
                            <div class="row" id="upload-div">
                               <c:url var='jsonCommonChecklistUrl' value='/common/service/saveChecklist' />
                                <%--  <form:form modelAttribute="filesBean"  method="post" action="${jsonCommonChecklistUrl}" enctype="multipart/form-data"  id="checkListForm">
                                 <form:hidden path="returnURL" id="returnURL"/> 
                                  <jsp:include page="checklist.jsp" />
                             </form:form> --%>
                             
                              <c:choose>
							<c:when test="${action == 'A'}">
                           
                           <form:form modelAttribute="filesBean"  method="post" action="${jsonCommonChecklistUrl}" enctype="multipart/form-data"  id="checkListForm">
                           <form:hidden path="returnURL" id="returnURL"/> 
                           <jsp:include page="checklist.jsp" />
                           
                           </form:form>
                           
                           	</c:when>
                           	
                          	<c:when test="${action == 'V'}">
                          	<input type="hidden"  id="srnIdView" value="${srnId }">
                          	 <jsp:include page="view-checklist.jsp" />	
                          	</c:when>
                          	</c:choose>
                           </div>
                       </div>
                           
                      <div class="charge-parent" >    	
                     	<div class="toggle-header" data-target="#charges-details">
	                     	<h2 class="StepTitle">
	                     		<spring:message code="label.document.citizenser.charge" /> 
	                     		<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	                     	</h2>
                     	</div>
                      
                        <div id="charges-details">
                            <div class="form-group">
                           	 <label class="control-label col-md-2 col-sm-12 col-xs-12">
                           	 	<spring:message code="label.document.citizenser.charge" />:
                             </label>
	                          <div class="col-md-4 col-sm-12 col-xs-12">
								  <%-- <form:input path="payAmt" id="payAmt" class=" form-control" readonly="readonly"  />  --%>
	                              <input type="text" name="payAmt" id="payAmt" class=" form-control" readonly="readonly"  /> 
	                          </div>
	                          <div class="col-md-2 col-sm-12 col-xs-12"> 
				                  <input type="button" class="btn btn-success" id="payCharges" value="Pay"> 
				              </div> 
                          </div>
                       </div>
					</div>
                       	 
                  	 <div class="row">
                  	 	<div class="col-md-12 col-sm-12 col-xs-12">
                  	 		<div class="actionbar">
	                         <button type="submit" id="applicantSave" class="btn"><spring:message code="label.btn.save" /></button>
	                         <button type="reset" id="" class="btn"><spring:message code="label.btn.reset" /></button>
	                       </div>
                  	 	</div>
                  	 </div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  		<!-- Include all compiled plugins (below), or include individual files as needed -->
  		<jsp:include page="jsFooter.jsp" />
  		<jsp:include page="../citizenFooter.jsp" />
		

		<%-- 
		<form:form id="ackFrm" name="ackFrm" modelAttribute="ackFrm">
	     <form:hidden id="srnIdAck" path="srn_id"/>
	 	</form:form> 
		--%>
	
	
	<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
	<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
	<c:url var='searchWaterDet' value='/water/view/search' />
	<c:url var='jsonsearchWaterUrl' value='/water/rest/search/waterPayNoDue' />
	<c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
	<%-- <c:url var='sendNoDuePayProperty' value='/water/rest/application/save'/>  --%>
	<c:url var='sendNoDuePayProperty' value='/common/application/save'/> 
	<c:url var='waterPayMoney' value='/water/rest/send/waterPayMoneyForNoDue' />
	<c:url var='jsonpaymentgateway' value='/water/rest/send/waterPaymentGateway' />
	<c:url var='saveReconnectionServiceData' value='/water/rest/saveReconnectionServiceData' />
	<c:url var='saveApplicantDataForNoCharge' value='/water/rest/saveApplicant' />
	<c:url var='ackUrl' value='/water/view/acknowledgment' />
	<c:url var='sendToPayCharge' value='/water/rest/application/saveReconnData'/> 
<c:url var='viewWaterReconnectionUrl' value='/water/rest/viewWaterReconnection' />

	<script>
		var jsonULBListUrl = "${jsonULBListUrl}";
		var jsonServiceListUrl = "${jsonServiceListUrl}";
		var searchWaterDet = "${searchWaterDet}";
		var jsonsearchWaterUrl = "${jsonsearchWaterUrl}";
		var jsonsearchWaterChargesUrl = "${jsonsearchWaterChargesUrl}";
		var sendNoDuePayProperty="${sendNoDuePayProperty}";
		var waterPayMoney = "${waterPayMoney}";
		var jsonpaymentgateway = "${jsonpaymentgateway}";
		var saveReconnectionServiceData = "${saveReconnectionServiceData}";
		var saveApplicantDataForNoCharge = "${saveApplicantDataForNoCharge}";
		var ackUrl = "${ackUrl}";
		var sendToPayCharge = "${sendToPayCharge}";
		var viewWaterReconnectionUrl = "${viewWaterReconnectionUrl}";
	</script>
  	
    <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
	<script src="<c:url value="/home/js/watercommon.js"/>"></script>
	<script src="<c:url value="/js/upload.js"/>"></script>

	<script type="text/javascript">
		$(document).ready(function(){
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
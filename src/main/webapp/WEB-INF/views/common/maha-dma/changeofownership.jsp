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
</head>
<body>
			<jsp:include page="../../common/citizenHeaderTop.jsp" /> 
  
  <div class="prop-section">

    <div class="container">
    			<div class="form-title">
    				<h3 style="display:inline-block">Change Ownership</h3> <span class="home-icon"><i class="fa fa-home"></i></span> 
    			</div>
       <!-- Smart Wizard -->
                    <div>
                    
                      <div class="ulb-section col-md-12">
                      <div class="toggle-header" data-target="#application-details"><h2 class="StepTitle">Applicant Details <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2></div>
                       <form:form  id="frmData"  modelAttribute="applicationBean">
                       <div class="" id="application-details">					
				            <div class="row">
				              <div class="form-group col-md-12 col-sm-12 col-xs-12">
				                 
				                <label class="col-md-2" for="ulb-name">ULB Name</label>
				                <div class="col-md-6">
				                <input type="hidden"  id="action" value="${action }">
				                <input type="hidden" id="statusFlag" value="${statusFlag}">
				                <input type="hidden" id="connectionNoSes" value="${ConnectionNo}">
				                <form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
               	 				<form:hidden path="setServiceId" id="servDeschide" value="${servDeschide }"/>
				              <select class=" form-control" id="ulbIdDesc" name="ulbIdDesc">
									<option value="">Select ULB</option>
				                </select> 
				                </div>
				              </div>
				              <div class="form-group col-md-12 col-sm-12 col-xs-12">
					               <label class="col-md-2" for="ulb-name">Service Name</label>
					                <div class="col-md-6">
					                 <select class=" form-control"  id="setServiceId" disabled="disabled">
				                			<option value="">Select Service Name</option>
				                	</select>
					                </div>
					            </div>
				           	 </div>
            			
                      	
                      	 
                        <jsp:include page="applicant-details.jsp" />  
                        
                       <!--  <div class="actionbar"> 
                        <button type="button" class="btn btn-primary" id="saveApplicantBtn">Save</button> 
                        <button type="reset" class="btn">Reset</button> 
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                         </div> -->
						</div>	
                          	
						</form:form >
                         <div class="toggle-header" data-target="#owner-div"><h2 class="StepTitle toggle-header">Ownership Details <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2></div>
						<div class="row" id="owner-div"> 	
                           <form  id="saveOwner" name="saveOwner"> 
    						<input type="hidden" name="srNumber" id="srNumberPrim"> 
    						<input type="hidden" name="srnId" id="srIdPrim">
    						<input type="hidden" name="ownerType" id="ownerTypePrim" value="P">
    						<input type="hidden" name="actionFlag" value="E">
    							<div class="row form-group hideData"> 
    								<div class="col-md-3 col-md-offset-2 col-sm-12 col-xs-12"> 
    									<div class="radio"> 
    									<label><input type="radio" name="optradio" id="showprimeowner" style="width:auto;" value="PO" checked><spring:message code="label.document.appforchange.primeown" /></label> 
    									</div> 
    								</div>

										<div class="col-md-3 col-sm-12 col-xs-12"> 
										<div class="radio"> 
										<label><input type="radio" name="optradio" id="showexist" style="width:auto;" value="AO"><spring:message code="label.document.appforchange.addown" /></label> 
										</div> 
										</div> 
										<div class="col-md-3 col-sm-12 col-xs-12"> 
										<div class="radio"> 
										<label><input type="radio" name="optradio" id="showboth" style="width:auto;" value="PAO"><spring:message code="label.document.appforchange.both" /></label> 
										</div> 
										</div> 
										</div>
										
									<!-- ------------changes--------------- -->
									
									
        		 
        		 <div class="row form-group hideData">
										
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.connectno" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" name="connectionNo" id="connectionNo">
														<input type="hidden"  name="connectionId" id="connectionId">
													</div>
												</div>
												 <div class="col-md-1 col-sm-12 col-xs-12"> 
                           <a href="#" id="searchWaterDet"><i class="fa fa-question-circle" style="font-size:25px"></i></a>
                 			</div>
											</div>
											
											
											
											<div class="col-md-6 col-sm-12 col-xs-12 payHide">
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<%-- <spring:message code="label.document.appforchange.connectno" /> --%>Due Amount
														</label>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12 ">
													<div>
														<input type="text" class="form-control" name="payAmt" id="payAmt" readonly="readonly">
													</div>
												</div>
												<div class="col-md-2 col-sm-12 col-xs-12 "> 
                 							      <input type="button" id="payDue" class="btn btn-default"  value="Pay">
                 							</div>
												 
											</div>
											</div>
									
									
									<!-- ------------changes--------------- -->
										<div id="primeowner" style="display:none">			
										
										
										<div class="row form-group">
										
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.firstname" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" id="firstNameOld" readonly="readonly">
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.firstname" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" id="firstNameOwner" name="firstNameOwner" placeholder="Enter new owner first name">
													</div>
												</div>
											</div>
										</div>
										
										<div class="row form-group">
											<div class="col-md-6 col-sm-12 col-xs-12">
												
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.midname" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" id="middleNameOld" readonly="readonly">
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.midname" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" id="middleNameOwner" name="middleNameOwner" placeholder="Enter new owner middle name">
													</div>
												</div>
											</div>
										</div>
										
										
										<div class="row form-group">
											<div class="col-md-6 col-sm-12 col-xs-12">
												
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.lastname" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" id="lastNameOld" readonly="readonly">
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.lastname" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" id="lastNameOwner" name="lastNameOwner" placeholder="Enter new owner last name">
													</div>
												</div>
											</div>
										</div>
										
										<div class="row form-group">
											<div class="col-md-6 col-sm-12 col-xs-12">
												
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.organization" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" id="organisationNameOld"  readonly="readonly">
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												
												<div class="col-md-3 col-sm-12 col-xs-12">
													<div>
														<label>
															<spring:message code="label.document.appforchange.organization" />
														</label>
													</div>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12">
													<div>
														<input type="text" class="form-control" id="organisationNameOwner" name="organisationNameOwner" placeholder="Enter new organisation name">
													</div>
												</div>
											</div>
										</div>
										</div>
										</form> 
										</div>
    							
    							<form id="additionalOwnerFrom" name="additionalOwnerFrom">
    							<input type="hidden" name="ulbId" id="addUlbId">
    							<input type="hidden" name="connectionId" id="addConnectionId">
    							<input type="hidden" name="srNumber" id="srNumberAdd"> 
    							<input type="hidden" name="srnId" id="srIdAdd"> 
    							<div id="existowner" style="display:none"> 
    							<div class="text-center form-group">
    										<label><spring:message code="label.document.appforchange.newedit" /></label>
    									</div>
    									
    									<table id="changeofexist" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="" >
    										<thead>
    										<tr>
    											<th>
    												<input type="checkbox" id="allChk">
    											</th>
    											<th>
    												<spring:message code="label.document.appforchange.firstname" />
    											</th>
    											<th>
    												<spring:message code="label.document.appforchange.midname" />
    											</th>
    											<th>
    												<spring:message code="label.document.appforchange.lastname" />
    											</th>
    										 	 <th>
    												<spring:message code="label.document.appforchange.organization" />
    											</th> 
    											
    										</tr>
    										</thead>
    										
    										<tbody>
    											<tr>
    												<td>
    													<input type="checkbox">
    												</td>
    												<td>
    													<input type="text" class="form-control">
    												</td>
    												<td>
    													<input type="text" class="form-control">
    												</td>
    												<td>
    													<input type="text" class="form-control">
    												</td>
    												 <td>
    													<input type="text" class="form-control">
    												</td> 
    											</tr>
    										</tbody>
    									</table>    									 
 											
    								<div class="actionbar">
    										<button type="button" class="btn btn-primary" id="addAdditional"><spring:message code="label.btn.add" /></button>
                         					 <button type="reset" class="btn" id="editAdditional"><spring:message code="label.btn.edit" /></button>
                          					<button type="button" class="btn btn-default" id="deleteAdditional"><spring:message code="label.btn.delete" /></button>
									</div>
									
									
									
    									
    									
    									
    								<table id="changeofexistAction" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="" >
    										<thead>
    										<tr>
    											
    											<th>
    												<spring:message code="label.document.appforchange.firstname" />
    											</th>
    											<th>
    												<spring:message code="label.document.appforchange.midname" />
    											</th>
    											<th>
    												<spring:message code="label.document.appforchange.lastname" />
    											</th>
    											 <th>
    												<spring:message code="label.document.appforchange.organization" />
    											</th> 
    											
    											 <th>
    												<spring:message code="label.document.appforchange.remove" />
    											</th> 
    											
    										</tr>
    										</thead>
    										
    										<tbody>
    											<tr>
    											
    												<td>
    													<input type="text" class="form-control">
    												</td>
    												<td>
    													<input type="text" class="form-control">
    												</td>
    												<td>
    													<input type="text" class="form-control">
    												</td>
    												 <td>
    													<input type="text" class="form-control">
    												</td> 
    												 <td>
    													 <span><a><i id="0" class="fa fa-minus btnDelete" aria-hidden="true"></i></a></span>
    												</td> 
    											</tr>
    										</tbody>
    									</table>
    									
    						</div>
    						</form>		
    						
    								
    								
    								
    								
    						
    						
    								
							<div class="toggle-header" data-target="#upload-div"><h2 class="StepTitle toggle-header">Upload Document <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2></div>			
                           <div class="row" id="upload-div">
                           <c:url var='jsonCommonChecklistUrl' value='/common/service/saveChecklist' />
                           
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
                          	
                          
                          	<div class="actionbar saveAction">
    									<button type="button" class="btn btn-primary" id="btnSave"><spring:message code="label.btn.save" /></button>
                          				<button type="reset" class="btn"><spring:message code="label.btn.reset" /></button>
                          				<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.btn.close" /></button>
							</div>
							
					<c:choose>
					<c:when test="${action == 'A'}">
                     <div class="toggle-header chargeClass" data-target="#charges-details"><h2 class="StepTitle">Charges <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2></div>      	
                       <form>  
                        <div id="charges-details" class=" chargeClass">
                          <div class="form-group">
                            	 <label class="control-label col-md-2 col-sm-2 col-xs-12">Charges:
	                            	</label>
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                            <input type="hidden"  id="taxDetId">
    							<input type="hidden"  id="taxId">
	                              <input type="text" id="charges" class="form-control" readonly="readonly">
	                            </div>
	                            
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <button type="button" id="payCharges" class="btn">Pay</button>
	                            </div>
                         	
                          	</div>
                          </div>
							
                       	 </form>
                       	 </c:when>
                          	</c:choose>
                          	
                          	
                       	 <%-- <form:form id="ackFrm" name="ackFrm" modelAttribute="ackFrm">
                       	 	<form:hidden id="srnIdAck" path="srn_id"/>
                       	</form:form> --%>
                      </div>
                      </div>
                      </div>
                      
</div>  

<jsp:include page="jsFooter.jsp" />
<jsp:include page="../citizenFooter.jsp" />

<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
<c:url var='saveApplicantDetails' value='/common/application/save'/>
<c:url var='jsonPrimaryOwnerDetailsUrl' value='/water/rest/getPrimaryOwnerDetails'/>
<c:url var='jsonAdditionalOwnerDetailsUrl' value='/water/rest/getAdditionalOwnerDetails'/>
<c:url var='jsonPrimaryAdditionalOwnerDetailsUrl' value='/water/rest/getPrimaryAdditionlaOwnerDetails'/>
<c:url var='jsonSavePrimaryOwnerDetailsUrl' value='/water/rest/savePrimaryOwnerDetails'/>
<c:url var='jsonSaveAdditionalOwnerDetailsUrl' value='/water/rest/saveAdditionalOwnerDetails'/>
<c:url var='jsonSaveBothOwnerDetailsUrl' value='/water/rest/saveBothOwnerDetails'/>
<c:url var='jsonsearchWaterUrl' value='/water/rest/search/waterPayNoDue' />
<c:url var='waterPayMoney' value='/water/rest/send/waterPayMoneyForNoDue' />
<c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
<c:url var='jsonpaymentgateway' value='/water/rest/send/waterPaymentGateway' />
<c:url var='ackUrl' value='/water/view/acknowledgment' />
<c:url var='searchWaterDet' value='/water/view/search' />
<c:url var='jsonviewChangeOwnerShipUrl' value='/water/rest/viewChangeOwnerShip'/>
<c:url var='servicePage' value='/view/scritiny/serviceview' />
<c:url var='view' value='/rest/common/serviceMovementValue/view'/>
<%-- <c:url var='jsonCommonChecklistUrl' value='/common/service/saveChecklist' /> --%>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	   <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>



<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
<script>

var jsonULBListUrl = "${jsonULBListUrl}";
var jsonServiceListUrl = "${jsonServiceListUrl}";
var saveApplicantDetails = "${saveApplicantDetails}";
var jsonPrimaryOwnerDetailsUrl = "${jsonPrimaryOwnerDetailsUrl}";
var jsonAdditionalOwnerDetailsUrl = "${jsonAdditionalOwnerDetailsUrl}";
var jsonPrimaryAdditionalOwnerDetailsUrl = "${jsonPrimaryAdditionalOwnerDetailsUrl}";
var jsonSavePrimaryOwnerDetailsUrl = "${jsonSavePrimaryOwnerDetailsUrl}";
var jsonSaveAdditionalOwnerDetailsUrl = "${jsonSaveAdditionalOwnerDetailsUrl}";
var jsonSaveBothOwnerDetailsUrl = "${jsonSaveBothOwnerDetailsUrl}";
var jsonsearchWaterUrl = "${jsonsearchWaterUrl}";
var waterPayMoney = "${waterPayMoney}";
var jsonsearchWaterChargesUrl = "${jsonsearchWaterChargesUrl}";
var jsonpaymentgateway = "${jsonpaymentgateway}";
var ackUrl = "${ackUrl}";
var jsonCommonChecklistUrl = "${jsonCommonChecklistUrl}";
var searchWaterDet = "${searchWaterDet}";
var jsonviewChangeOwnerShipUrl = "${jsonviewChangeOwnerShipUrl}";
var servicePage = "${servicePage}";
var view = "${view}";

$(document).on('click', '.toggle-header', function(e){
    $content = $($(this).data('target'));
    if($content.hasClass('collapse')){
      $content.removeClass('collapse');
      $(this).find('i.toggle-icon span').html('keyboard_arrow_up')
    }
    else{
      $content.addClass('collapse');
      $(this).find('i.toggle-icon span').html('keyboard_arrow_down')
    }
  });

</script>

  <script>
	$('#showprimeowner').click(function(){
		$('#primeowner').show();
		$('#existowner').hide();
	});
	
	$('#showexist').click(function(){
		$('#primeowner').hide();
		$('#existowner').show();
	});
	
	$('#showboth').click(function()
	{
		$('#primeowner').show();
		$('#existowner').show();
	});
	
	
	$('.btnDeleted').click(function(){
		$(this).closest('.row').remove();
	});
</script>
<%-- <script src="<c:url value="/js/script-library.js" />"></script>  --%>
<script src="<c:url value="/js/applicant_validation.js" />"></script> 
<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
<script src="<c:url value="/home/js/changeofownership.js"/>"></script>
<script src="<c:url value="/home/js/changeofownership_validation.js"/>"></script>
<script src="<c:url value="/js/upload.js"/>"></script>

<!-- <script>
!function(e){var t=function(t,n){this.$element=e(t),this.type=this.$element.data("uploadtype")||(this.$element.find(".thumbnail").length>0?"image":"file"),this.$input=this.$element.find(":file");if(this.$input.length===0)return;this.name=this.$input.attr("name")||n.name,this.$hidden=this.$element.find('input[type=hidden][name="'+this.name+'"]'),this.$hidden.length===0&&(this.$hidden=e('<input type="hidden" />'),this.$element.prepend(this.$hidden)),this.$preview=this.$element.find(".fileupload-preview");var r=this.$preview.css("height");this.$preview.css("display")!="inline"&&r!="0px"&&r!="none"&&this.$preview.css("line-height",r),this.original={exists:this.$element.hasClass("fileupload-exists"),preview:this.$preview.html(),hiddenVal:this.$hidden.val()},this.$remove=this.$element.find('[data-dismiss="fileupload"]'),this.$element.find('[data-trigger="fileupload"]').on("click.fileupload",e.proxy(this.trigger,this)),this.listen()};t.prototype={listen:function(){this.$input.on("change.fileupload",e.proxy(this.change,this)),e(this.$input[0].form).on("reset.fileupload",e.proxy(this.reset,this)),this.$remove&&this.$remove.on("click.fileupload",e.proxy(this.clear,this))},change:function(e,t){if(t==="clear")return;var n=e.target.files!==undefined?e.target.files[0]:e.target.value?{name:e.target.value.replace(/^.+\\/,"")}:null;if(!n){this.clear();return}this.$hidden.val(""),this.$hidden.attr("name",""),this.$input.attr("name",this.name);if(this.type==="image"&&this.$preview.length>0&&(typeof n.type!="undefined"?n.type.match("image.*"):n.name.match(/\.(gif|png|jpe?g)$/i))&&typeof FileReader!="undefined"){var r=new FileReader,i=this.$preview,s=this.$element;r.onload=function(e){i.html('<img src="'+e.target.result+'" '+(i.css("max-height")!="none"?'style="max-height: '+i.css("max-height")+';"':"")+" />"),s.addClass("fileupload-exists").removeClass("fileupload-new")},r.readAsDataURL(n)}else this.$preview.text(n.name),this.$element.addClass("fileupload-exists").removeClass("fileupload-new")},clear:function(e){this.$hidden.val(""),this.$hidden.attr("name",this.name),this.$input.attr("name","");if(navigator.userAgent.match(/msie/i)){var t=this.$input.clone(!0);this.$input.after(t),this.$input.remove(),this.$input=t}else this.$input.val("");this.$preview.html(""),this.$element.addClass("fileupload-new").removeClass("fileupload-exists"),e&&(this.$input.trigger("change",["clear"]),e.preventDefault())},reset:function(e){this.clear(),this.$hidden.val(this.original.hiddenVal),this.$preview.html(this.original.preview),this.original.exists?this.$element.addClass("fileupload-exists").removeClass("fileupload-new"):this.$element.addClass("fileupload-new").removeClass("fileupload-exists")},trigger:function(e){this.$input.trigger("click"),e.preventDefault()}},e.fn.fileupload=function(n){return this.each(function(){var r=e(this),i=r.data("fileupload");i||r.data("fileupload",i=new t(this,n)),typeof n=="string"&&i[n]()})},e.fn.fileupload.Constructor=t,e(document).on("click.fileupload.data-api",'[data-provides="fileupload"]',function(t){var n=e(this);if(n.data("fileupload"))return;n.fileupload(n.data());var r=e(t.target).closest('[data-dismiss="fileupload"],[data-trigger="fileupload"]');r.length>0&&(r.trigger("click.fileupload"),t.preventDefault())})}(window.jQuery)


$(document).on('change', '.btn-file :file', function() {
 		var input = $(this),
 			label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
 		input.trigger('fileselect', [label]);
 		});

 		$('.btn-file :file').on('fileselect', function(event, label) {
 		    
 		    var input = $(this).parents('.input-group').find(':text'),
 		        log = label;
 		    
 		    if( input.length ) {
 		        input.val(log);
 		    } else {
 		        if( log ) alert(log);
 		    }
 	    
 		});
 		function readURL(input) {
 		    if (input.files && input.files[0]) {
 		        var reader = new FileReader();
 		        
 		        reader.onload = function (e) {
 		            $('#img-upload').attr('src', e.target.result);
 		        }
 		        
 		        reader.readAsDataURL(input.files[0]);
 		    }
 		}

 		$("#imgInp").change(function(){
 		    readURL(this);
 	});
</script> 	 -->

  </body>
</html>
</compress:html>
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

<form:form action="" name="property-nodue-form" id="frmData" method="POST" modelAttribute="applicationBean">
<%-- <jsp:include page="../../property/view-search-property-water.jsp"> --%>
  <div class="prop-section">

    <div class="container">
      <div class="ulb-section">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 col-xs-12">
							<div class="">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
									
										<spring:message code="label.document.loipayment.title" />
										
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content" style="display: block;"> <br> 
    
   						 <!-- All Hidden Fields are here -->
   						 
   						 <input type="hidden" id="ulbId">
   						 <input type="hidden" id="loiId">
   						 <input type="hidden" id="chgId">
   						 <input type="hidden" id="srnId">
   						 
   						 <input type="hidden" id="ulbCode">
   						 <input type="hidden" id="ulbNmEng">
   						 <input type="hidden" id="ulbNmMar">
   						 
   						 <input type="hidden" id="servId">
    					 <input type="hidden" id="servNameMar">
    					 
    					 <input type="hidden" id="appNm">
   						 
   						 <input type="hidden" id="modId">
   						 
						<input type="hidden" id="totalAmt">   						 				 
   						 				 
						 <!-- All Hidden Fields are here -->   


    						<form id=""> 
    		
    								<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    									
    										<spring:message code="label.document.loisearch.loino" />:
    									</label>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
										<div class="input-group">
											<input type="text" class=" form-control" id="loiNo" onblur="getAppDetailsOnLoiNo()">
												<span class="input-group-addon"> 
													<a href="#" id="searchLicenDet"><i class="fa fa-search" style="font-size:22px"></i>
													</a>
												</span>
											</div> 
									</div>
    								<div class="col-md-2 col-md-offset-1 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.collection.loi.date" />:
    									</label>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div class="input-group">
											<input type="text" class="form-control" id="loiDt" readonly="readonly">
												<span class="input-group-addon"> 
													<a href="#" id=""><i class="fa fa-calendar" style="font-size:22px"></i>
													</a>
												</span>
											</div> 
    								</div>
    							</div>	
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    									
    										<spring:message code="label.document.loigeneration.applicationno" />:
    									</label>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
										<div class="input-group">
											<input type="text" class=" form-control" id="surveyNo" onblur="getAppDetails()">
												<span class="input-group-addon"> 
													<a href="#" id="searchLicenDet"><i class="fa fa-search" style="font-size:22px"></i>
													</a>
												</span>
											</div> 
									</div>
    								<div class="col-md-2 col-md-offset-1 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.loigeneration.applicationdate" />:
    									</label>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div class="input-group">
    									<input type="text" class="form-control" id="surveyDt" readonly="readonly">
												<span class="input-group-addon"> 
													<a href="#" id=""><i class="fa fa-calendar" style="font-size:22px"></i>
													</a>
												</span>
											</div> 
    								</div>
    								</div>
    							</div>	
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.loigeneration.applicationname" />:
    									</label>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" id="fname" class="form-control" readonly="readonly">
    									</div>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" id="mname" class="form-control" readonly="readonly">
    									</div>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" id="lname" class="form-control" readonly="readonly">
    									</div>
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<div>
    										<label>
    											<spring:message code="label.document.loigeneration.servicename" />
    										</label>
    									</div>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" class="form-control" id="servName" readonly="readonly">
    									</div>
    								</div>
    								<div class="col-md-2 col-md-offset-1 col-sm-12 col-xs-12">
    									<div>
    										<label>
    											<spring:message code="label.document.loigeneration.recieved" />
    										</label>
    									</div>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" class="form-control" id="receivedfrom">
    									</div>
    								</div>
    							</div>
    							
    							
    							<table id="storage"
														 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
														<thead>
															<tr>
																<th><spring:message code="label.document.loigeneration.serialno" /></th>
																<th><spring:message code="label.document.loigeneration.chargedis" /></th>
																<th><spring:message code="label.document.loigeneration.chargeamt" /></th>
															</tr>
															
															
														</thead>
														<tbody>
														
														</tbody>
													</table>
    							
    							<div class="actionBar">
    							 <button type="button" class="btn btn-primary" onclick="getPaidDetails()"><spring:message code="label.btn.save" /></button>
                         <a href="../home"><button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.btn.close" /></button></a> 
    							</div>
    							</form> 
									</div>
							</div>							
						</div>
					</div>
					<div class="clearfix"></div>
					

				</div>
    </div>
  </div>
</form:form>

<jsp:include page="jsFooter.jsp" />
<jsp:include page="../../common/maha-dma/jsFooter.jsp" />
<jsp:include page="../citizenFooter.jsp" />

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	   <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    <script src="<c:url value="/js/waitingfor.js" />"></script>
   
	
	<c:set var='sessionId' value='${pageContext.session.id}' />
	<c:url var='service' value='/loipayweb/service' />
	<c:url var='lookUpDetailsFile' value='/loipayweb/lookUpDetailsFile'/>
	<c:url var='lookup' value='/loipayweb/lookup'/>
	<c:url var='module' value='/loipayweb/module'/>
	<c:url var='commonService' value='/loipayweb/commonService'/>
	
	<c:url var='fetchTtServiceReqOnSrnId' value='/loipayweb/fetchTtServiceReqOnSrnId' />
	
	<c:url var='fetchNocChargesOnSerId' value='/loipayweb/fetchNocChargesOnSerId'/>
	
	<!-- For Loi Payment -->
	<c:url var='fetchLoiIdOnSrnId' value='/loipayweb/fetchLoiIdOnSrnId'/>
	<c:url var='fetchLoiDetIdOnSrnId' value='/loipayweb/fetchLoiDetIdOnSrnId'/>
	<c:url var='fetchTtServiceReqOnSrnNm' value="/loipayweb/fetchTtServiceReqOnSrnNm"/>
	<c:url var='fetchTtServiceReqOnLoiNo' value="/loipayweb/fetchTtServiceReqOnLoiNo"/>
	<c:url var='saveNocReciptAll' value='/loipayweb/saveNocReciptAll'/>
	
	<!-- Fetch UlbNm On UlbId -->
	
	<c:url var='fetchUlbNmOnUlbId' value='/loipayweb/fetchUlbNmOnUlbId'/>
	
	<!-- Fetch UlbNm On UlbId -->
	
	<!-- Fetch Mod Id on Ser Id -->
	
	<c:url var="fetchModIdOnSerId" value='/loipayweb/fetchModIdOnSerId'/>
	<c:url var='fetchModFromLoicofg' value='/loipayweb/fetchModFromLoicofg'/>
	
	<!-- Fetch Mod Id on Ser Id -->
	
	<!-- Fetch Water Charges on Loi Id -->
	
	<c:url var="fetchLoiWaterIdOnSrnId" value='/loipayweb/fetchLoiWaterIdOnSrnId'/>
	<c:url var='fetchLoiWaterDetIdOnloiId' value='/loipayweb/fetchLoiWaterDetIdOnloiId'/>
	<c:url var='saveWaterReciptAll' value='/loipayweb/saveWaterReciptAll'/>
	
	<!-- Fetch Water Charges on Loi Id -->
	
	
	<!-- For Payment Gateway -->
	
	<c:url var='jsonpaymentgateway' value='/loipayweb/nocPaymentGateway' />
	
	
	<c:if test="${msgtype != null}">
	<script>
	
	showNotify("${msgtype},${message}");
	</script>
	</c:if>
	
	<!-- Same C:URL tag as on loi generation -->
	
	
	<!--Script same as loi generation -->
	
	<script>
	
	/* var service = "${serviceFile}";
	
	var lookupdetails = "${lookupdetails}"; */
	
	var notification = '<spring:message code="label.common.notification" />';
	
	var serviceArr = [];
	var lookupArr = [];
	var lookupArrDetId = [];
	var chgDetId = [];
	
	function showNotify(msgText,msgType){
		//For Notification 

		 
				 new PNotify({
			         title: notification,
			         msgText: '${message}',
			         msgType: '${msgtype}',
			         styling: 'bootstrap3',
			         hide: true
			     });
			 
		// For Notification
			 
	}
	
	$(document).ready(function () {
		
		var service = "${service}";
		var lookUpDetailsFile = "${lookUpDetailsFile}";
		var lookup = "${lookup}";
		var module = "${module}";
		var commonService = "${commonService}";
		
		//For commonService
		$.ajax({
		      type: "GET",
		      url: commonService,
		      contentType : "application/json",
		      //dataType : 'json',
		      //data : JSON.stringify(finalObj),
		      async: false,
		      headers: {
		          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		          "Authorization": "Basic " + btoa("ashok:pass") 
		          //"USER":btoa(getUserId(storeInvUser)),
		         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		      },
		      success: function (data){
		    	  //alert("data : "+data.toString())
		      		console.log(JSON.stringify(data));
		    	  
		      	  $.each(data.resultData, function (i, result) {
	     		   
	     		  serviceArr = data.resultData;
	            });
		         
		      },
		      statusCode: {
				    403: function() {
				    	 new PNotify({
		                  title: 'Session Expire. Please Re-Login...',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
				    	 setTimeout(function(){
				                window.location.href="/"; 
				            }, 2000);
				    }
				},
		      error : function(e) {
		                console.log("ERROR: ", e.responseText);
		                console.log("ERROR: ", e);
		              //	display(e);
		          new PNotify({
		                  title: 'Request Not Process... ',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
		          }
		      });   
		 //For commonService
		
		//For Service
		$.ajax({
		      type: "GET",
		      url: service,
		      contentType : "application/json",
		      //dataType : 'json',
		      //data : JSON.stringify(finalObj),
		      async: false,
		      headers: {
		          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		          "Authorization": "Basic " + btoa("ashok:pass") 
		          //"USER":btoa(getUserId(storeInvUser)),
		         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		      },
		      success: function (data){
		    	  //alert("data : "+data.toString())
		      		//console.log(JSON.stringify(data));
		    	  
		      	  $.each(data.resultData, function (i, result) {
	     		   /* $("#services").append($("<option></option>").val(result.serviceId).html(result.serviceNameEn));
	     		  $("#servicesTo").append($("<option></option>").val(result.serviceId+","+result.modId).html(result.serviceNameEn));
	     		    */
	     		  //serviceArr = data.resultData;
	            });
		         
		      },
		      statusCode: {
				    403: function() {
				    	 new PNotify({
		                  title: 'Session Expire. Please Re-Login...',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
				    	 setTimeout(function(){
				                window.location.href="/"; 
				            }, 2000);
				    }
				},
		      error : function(e) {
		                console.log("ERROR: ", e.responseText);
		                console.log("ERROR: ", e);
		              //	display(e);
		          new PNotify({
		                  title: 'Request Not Process... ',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
		          }
		      });   
		 //For Service
		 
		 
		 //For Lookup
		$.ajax({
		      type: "GET",
		      url: lookup,
		      contentType : "application/json",
		      //dataType : 'json',
		      //data : JSON.stringify(finalObj),
		      async: false,
		      headers: {
		          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		          "Authorization": "Basic " + btoa("ashok:pass") 
		          //"USER":btoa(getUserId(storeInvUser)),
		         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		      },
		      success: function (data){
		    	  //alert("data : "+data.toString())
		      		//console.log(JSON.stringify(data));
		    	  
		      	  $.each(data.resultData, function (i, result) {
					     		   
	     		  lookupArr = data.resultData;
	            });
		         
		      },
		      statusCode: {
				    403: function() {
				    	 new PNotify({
		                  title: 'Session Expire. Please Re-Login...',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
				    	 setTimeout(function(){
				                window.location.href="/"; 
				            }, 2000);
				    }
				},
		      error : function(e) {
		                console.log("ERROR: ", e.responseText);
		                console.log("ERROR: ", e);
		              //	display(e);
		          new PNotify({
		                  title: 'Request Not Process... ',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
		          }
		      });   
		 //For Lookup
		
		  //For Lookupdetails
		$.ajax({
		      type: "GET",
		      url: lookUpDetailsFile,
		      contentType : "application/json",
		      //dataType : 'json',
		      //data : JSON.stringify(finalObj),
		      async: false,
		      headers: {
		          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		          "Authorization": "Basic " + btoa("ashok:pass") 
		          //"USER":btoa(getUserId(storeInvUser)),
		         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		      },
		      success: function (data){
		    	  //alert("data : "+data.toString())
		      		//console.log(JSON.stringify(data));
		    	  
		      	 lookupArrDetId = data.resultData;
		      		  
		      		 $.each(lookupArr, function (i, result2) {
		      			 
		      			 $.each(data.resultData, function (i, result) {
		      			
		      			 if(result2.lookupId == 117.0){
		      				
		      				if(result2.lookupId == result.lookupId){
			      				console.log("Inside if consition --> "+result.lookupId);
			      				 $("#feeCharge").append($("<option></option>").val(result.lookupDetId).html(result.lookupDetDescEn));
			      			 }
		      				 
		      			 }
		      			 
								      			 
		      		 });
					     		   
	            });
		         
		      },
		      statusCode: {
				    403: function() {
				    	 new PNotify({
		                  title: 'Session Expire. Please Re-Login...',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
				    	 setTimeout(function(){
				                window.location.href="/"; 
				            }, 2000);
				    }
				},
		      error : function(e) {
		                console.log("ERROR: ", e.responseText);
		                console.log("ERROR: ", e);
		              //	display(e);
		          new PNotify({
		                  title: 'Request Not Process... ',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
		          }
		      });   
		 //For Lookupdetails
		 
		//For Module
		$.ajax({
		      type: "GET",
		      url: module,
		      contentType : "application/json",
		      //dataType : 'json',
		      //data : JSON.stringify(finalObj),
		      async: false,
		      headers: {
		          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		          "Authorization": "Basic " + btoa("ashok:pass") 
		          //"USER":btoa(getUserId(storeInvUser)),
		         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		      },
		      success: function (data){
		    	  //alert("data : "+data.toString())
		      		//console.log(JSON.stringify(data));
		    	  
		      	 
		      		  
		      		 $.each(lookupArr, function (i, result2) {
		      			 
		      			 $.each(data.resultData, function (i, result) {
		      			
		      			 if(result2.lookupId == 117.0){
		      				
		      				if(result2.lookupId == result.lookupId){
			      				console.log("Inside if consition --> "+result.lookupId);
			      				 $("#feeCharge").append($("<option></option>").val(result.lookupDetId).html(result.lookupDetDescEn));
			      			 }
		      				 
		      			 }
		      			 
								      			 
		      		 });
					     		   
	            });
		         
		      },
		      statusCode: {
				    403: function() {
				    	 new PNotify({
		                  title: 'Session Expire. Please Re-Login...',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
				    	 setTimeout(function(){
				                window.location.href="/"; 
				            }, 2000);
				    }
				},
		      error : function(e) {
		                console.log("ERROR: ", e.responseText);
		                console.log("ERROR: ", e);
		              //	display(e);
		          new PNotify({
		                  title: 'Request Not Process... ',
		                  styling: 'bootstrap3',
		                  type: 'error'
		              });
		          }
		      });   
		 //For Module
		 
		
	});
	
	</script>
	
	
	
	<script>

		function getQueryVariable(variable) {
  			var query = window.location.search.substring(1);
  			var vars = query.split("&");
  			for (var i=0;i<vars.length;i++) {
    			var pair = vars[i].split("=");
   				if (pair[0] == variable) {
     				return pair[1];
    		}
 		 } 
  			//alert('Query Variable ' + variable + ' not found');
		}
	</script>
	
	<script>
	
	
	
	function getLoiId(){
		debugger
		var srnId = $("#srnId").val();
		
		var fetchLoiIdOnSrnId = "${fetchLoiIdOnSrnId}";
		
		$.ajax({
	  	      type: "POST",
	  	      url: fetchLoiIdOnSrnId,
	  	      //contentType : "application/json",
	  	      //dataType : 'json',
	  	      data : "srnId="+srnId,
	  	      async: false,
	  	      headers: {
	  	          "Authorization": "Basic " + btoa("ashok:pass") 
	  	      },
	  	      success: function (data){
	  	    	  
	  	    	  console.log(data);
	  	    	  
	  	    	  var desc = null;
	  	    	  
	  	    	  $.each(data, function (i, result) {
	  	    		  
	  	    		  $("#loiDt").val(result.loiDt);
	  	    		  $("#loiNo").val(result.loiNo);
	  	    		  $("#loiId").val(result.nocLoiId);
	  	    		  console.log(result.nocLoiId);
	  	    		  
	  	    		getLoiDetId(result.nocLoiId);
	  	    		  
	  	    	  });
	  	    	  
	  	      },
	  	      statusCode: {	
	  			    403: function() {
	  			    	 new PNotify({
	  	                  title: 'Session Expire. Please Re-Login...',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  			    	 setTimeout(function(){
	  			                window.location.href="/"; 
	  			            }, 2000);
	  			    }
	  			},
	  	      error : function(e) {
	  	                console.log("ERROR: ", e.responseText);
	  	                console.log("ERROR: ", e);
	  	              //	display(e);
	  	          new PNotify({
	  	                  title: 'Request Not Process... ',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  	          }
	  	      });  
		
	}
	
	
	function getLoiDetId(loiId){
		debugger
		var loiId = loiId;
		
		var fetchLoiDetIdOnSrnId = "${fetchLoiDetIdOnSrnId}";
		
		$.ajax({
	  	      type: "POST",
	  	      url: fetchLoiDetIdOnSrnId,
	  	      //contentType : "application/json",
	  	      //dataType : 'json',
	  	      data : "loiId="+loiId,
	  	      async: false,
	  	      headers: {
	  	          "Authorization": "Basic " + btoa("ashok:pass") 
	  	      },
	  	      success: function (data){
	  	    	$("#storage tbody").empty();
	  	    	  console.log(data);
	  	    	  
	  	    	  var row = 1;
	  	    	  var desc = null;
	  	    	  
	  	    	  $.each(data, function (i, result) {
	  	    		 // console.log(result.nocLoiId);
	  	    		$("#storage tbody").append("<tr> <td>"+row+"</td> <td>"+$("#servName").val()+"</td><td style='text-align: right'><input type='hidden' id='nocActAmt"+row+"' value='"+result.nocActAmt+"'>"+result.nocActAmt+"</td></tr>");
					row++;
	  	    		  
	  	    	  });
	  	    	  
	  	      },
	  	      statusCode: {	
	  			    403: function() {
	  			    	 new PNotify({
	  	                  title: 'Session Expire. Please Re-Login...',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  			    	 setTimeout(function(){
	  			                window.location.href="/"; 
	  			            }, 2000);
	  			    }
	  			},
	  	      error : function(e) {
	  	                console.log("ERROR: ", e.responseText);
	  	                console.log("ERROR: ", e);
	  	              //	display(e);
	  	          new PNotify({
	  	                  title: 'Request Not Process... ',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  	          }
	  	      });  
		
	}
	
	function getNocCharges(serId){
		debugger
		
		var servId = serId;
		
		var fetchNocChargesOnSerId = "${fetchNocChargesOnSerId}"
		
		$.ajax({
	  	      type: "POST",
	  	      url: fetchNocChargesOnSerId,
	  	      //contentType : "application/json",
	  	      //dataType : 'json',
	  	      data : "serId="+serId,
	  	      async: false,
	  	      headers: {
	  	          "Authorization": "Basic " + btoa("ashok:pass") 
	  	      },
	  	      success: function (data){
	  	    	  
	  	    	  console.log(data);
	  	    	  console.log(data[0]);
	  	    	  $("#chgId").val(data[0].nocChargeId);
	  	    	  
	  	    	  row = 1;
	  	    	  var desc = null;
	  	    	  
	  	    	  $.each(data, function (i, result) {
	  	    		  chg = {};
	  	    		  
	  	    		  chg.nocChargeDetId = result.nocChargeDetId;
	  	    		  
	  	    		chgDetId.push(chg);
	  	    		  
	  	    		$.each(lookupArr, function (i, result2) {
		      			 
		      			 $.each(lookupArrDetId, function (i, result3) {
		      			
		      			 if(result2.lookupId == 117.0){

		      				 if(result2.lookupId == result3.lookupId){
			      				console.log("Inside if consition --> "+result.lookupId);
			      				if(result.detId == result3.lookupDetId){
			      					 desc = result3.lookupDetDescEn
			      				}
								
		      				}
		      				 
		      			 }
		      			 
								      			 
		      		 });
					     		   
	            });
	  	    		  
	  	    		   var chargeAmt = parseFloat(result.nocChgRateAmt).toFixed(2);
	  	    		   
	  	    		 //getModId(servId);
	  	    		   
		      		   /* $("#storage tbody").append("<tr> <td><input type='hidden' id='nocChargeId"+row+"' value='"+result.nocChargeId+"'>"+row+"</td> <td><input type='hidden' id='detId' value='"+result.detId+"'>"+$("#servId").val()+"</td><td><input type='hidden' id='nocChgActRateAmt"+row+"' value='"+chargeAmt+"'><input type='text' style='text-align: right' id='nocChgModRateAmt"+row+"' class='form-control' value='"+result.nocChgRateAmt+"'></td></tr>");
		      		   row++; */
		             });
	  	    	  
	  	      },
	  	      statusCode: {	
	  			    403: function() {
	  			    	 new PNotify({
	  	                  title: 'Session Expire. Please Re-Login...',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  			    	 setTimeout(function(){
	  			                window.location.href="/"; 
	  			            }, 2000);
	  			    }
	  			},
	  	      error : function(e) {
	  	                console.log("ERROR: ", e.responseText);
	  	                console.log("ERROR: ", e);
	  	              //	display(e);
	  	          new PNotify({
	  	                  title: 'Request Not Process... ',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  	          }
	  	      });  
		
	}
	
	</script>
	
	<!-- Script for getting bank name through ifsc -->
	
	<script>
	
	$('#ifsc').blur(function()
			{
				var jsonsearchBankName = "${jsonsearchBankName}";
				 if($("#ifsc").val() != "" )
					{
					 if($("#ifsc").val().length > 10)
					 { 
						 var fieldData={"ifsc":$("#ifsc").val() };
						 
						 $.ajax({
								type : "POST",
								url : jsonsearchBankName,
								contentType: "application/json; charset=UTF-8",
								dataType : 'json',
								data : JSON.stringify(fieldData),
								success : function(data) 
								{  
									 
				    				
				    			      console.log("VAL: "+data.totalRows);
				    			      var row = 1;
				    			      dataSet = [];
				    			      if(parseInt(data.totalRows) > 0){
				    			   	   var newArray = [];
				    			   	   var totCol = 0;
				    			   	   $.each(data.resultData, function (i, result) {
				    			        
				    			   	   $('#bankBranchId').val(result[0]);
				    			   	   $('#bankname').val(result[2]+"-"+result[1]);
				    			   	   
				    			   	       });
				    				    }
				    			        else{
				    				    	    PNotify.removeAll();
				    				            new PNotify({
				    				                title: 'Data Not Found.',
				    				                styling: 'bootstrap3',
				    				                type: 'error'
				    				            });
				    				      }
				    					
									
								} 
								
						 
						 }); //ajax
					 }
					 else{
						 PNotify.removeAll();
						 new PNotify({
								title : 'Please Enter Valid IFSC Code.',
								styling : 'bootstrap3',
								type : 'error'
							}); 
					 }
				}
				 else{
					 PNotify.removeAll();
					 new PNotify({
							title : 'Please Enter IFSC Code.',
							styling : 'bootstrap3',
							type : 'error'
						}); 
				 }
			});//func
			
	
	</script>
	
	<!-- Script for getting bank name through ifsc -->
	
	<!-- Script same as loi generation -->
	
	<script>
	
	 $(document).ready(function() 
				{
		
		 			var jsonPaymentModeType = "${jsonPaymentModeType}";
		 
		    	    getPaymentModeType("${jsonPaymentModeType}","selectBtn");		
		    		
		    		function getPaymentModeType(jsonPaymentModeType,selectBtn) {
		    			
		    			
		    			$.ajax({
		    				type: "POST",
		    				url: jsonPaymentModeType,
		    				contentType : "application/json",
		    				dataType : 'json',
		    				// data:JSON.stringify(datavar),
		    				async: false,
		    				
		    				success: function (data){ 
		    				
		    			      console.log("VAL: "+data.totalRows);
		    			      var row = 1;
		    			      dataSet = [];
		    			      if(parseInt(data.totalRows) > 0){
		    			   	   var newArray = [];
		    			   	   var totCol = 0;
		    			   	   $.each(data.resultData, function (i, result) {
		    			       console.log(" >>> "+result.lookupId+" ---- "+result.lookupDetDescEn);
		    		         
		    			       $("#"+selectBtn).append($("<option></option>").val(result.lookupId+"|"+result.lookupDetVal).html(result.lookupDetDescEn));	   
		    			          });
		    				    }
		    			        else{
		    				    	    PNotify.removeAll();
		    				            new PNotify({
		    				                title: 'Data Not Found.',
		    				                styling: 'bootstrap3',
		    				                type: 'error'
		    				            });
		    				      }
		    					
		    				}  
		    				
		    		     });
		    			
		    		} 
		    	   
		    	   
		   		   $('#chequeDiv').hide();
		   		   $('#CreditDebitDiv').hide();
				  
		          $('#paydate').datetimepicker({
		          	format: 'DD/MM/YYYY'
		          });
		          $('#CreditDebitDate').datetimepicker({
		          	format: 'DD/MM/YYYY'
		          });
				  
				  
				});//ready
	
				
				//onchange selectBtn

				$("#selectBtn").on("change", function()  {
					//alert('In')

					var lookupCode = $('#selectBtn').val().split("|");
					lookupCode[1];
					
					if(lookupCode == "0")
					{
						 $('#chequeDiv').hide();
						 $('#CreditDebitDiv').hide();
					}
					else if(lookupCode[1]== "Q" || lookupCode[1]== "D" )
					{
					  $('#chequeDiv').show();
					  $('#CreditDebitDiv').hide();
					}
					else if(lookupCode[1]== "POS" )
					{
					 //alert('POS')
					 $('#CreditDebitDiv').show();
					 $('#chequeDiv').hide();
					}
					else
					{ 
					  $('#CreditDebitDiv').hide();
					  $('#chequeDiv').hide();
					}
					
				});
				
				
				
	</script>
	
	<script>
	
	function saveNocReciptAndMode(){
		
		
		debugger
		var saveNocReciptAll = "${saveNocReciptAll}"
		
		
		var finalObj= {};
    	
		
		var srnId = $("#srnId").val();
		var serId = $("#servId").val();
		var loiId = $("#loiId").val();
		
		var recptAmt = null;
		
		var chgId = $("#chgId").val();
		console.log(chgDetId);
		
		var cheqNo = $("#chequeddno").val();
		var cheqDt = $("#chequedddate").val();
		
		var brnchId = $("#bankBranchId").val();
		var brnchNm = $("#bankname").val(); 
		
		var instNo = $("#instrumentno").val();
		var instDt = $("#instrumentdate").val();
		
    	var status = 1;
    	

    	//Table to get receipt total amt
    	
    	var oTable = document.getElementById('storage');
    	var count = $('#storage tr').length;
    	
    	var totalAmt = parseInt("0");
    	
		for(var i=1; i<=count-1; i++){
			
    		//gets cells of current row  
    	       var oCells = oTable.rows.item(i).cells;

    	       //gets amount of cells of current row
    	       var cellLength = oCells.length;
    	       
    	       //loops through each cell in current row
    	       for(var j = 1; j <= cellLength-1; j++){
				
    	    	   var k = j;
    	              // get your cell info here
    	              
					if(k==2){
						var cellVal = oCells.item(j).innerHTML;
						totalAmt = parseInt(totalAmt) + parseInt($("#nocActAmt"+i).val());
						console.log(totalAmt);
					}
					

    	       }
    		
			
    	}
		
		//Table to get receipt total amt
		
    	finalObj.srnId = srnId;
    	finalObj.serId = serId;
    	finalObj.nocLoiId = loiId;
    	finalObj.nocReceiptAmount = totalAmt;
    	finalObj.ulbId = $("#ulbId").val();
    	
    	finalObj.ttNocServiceReceiptDetsBean = [];
    	for(var i=0;i<chgDetId.length;i++){
        	
        	lookupBean1 = {};
        	lookupBean1.chargeId = chgId;
        	lookupBean1.chargeDetId = chgDetId[i].nocChargeDetId;
    		lookupBean1.nocChgAmt = totalAmt;
        	
    		finalObj.ttNocServiceReceiptDetsBean.push(lookupBean1);
    	}
    	
    	//For Detail Receipt
    	
    	
    	//For Detail Receipt
    	
    	finalObj.ttNocServiceReceiptModesBean = [];
    	
    	lookupBean2 = {};
    	lookupBean2.branchId = brnchId;7
		lookupBean2.bankBranchName = brnchNm;
		var ChqNo = $("#chequeddno").val();
		var insNo = $("#instrumentno").val();
		
		if(ChqNo != ""){
			lookupBean2.instrumentNo = ChqNo;
		}
		
		if(insNo != ""){
			lookupBean2.instrumentNo = insNo;
		}
		
		var ChqDt = $("#chequedddate").val();
		var insDt = $("#instrumentdate").val();
		
		if(ChqDt != ""){
			lookupBean2.dt = ChqDt;
		}
		
		if(insDt != ""){
			lookupBean2.dt = insDt;
		}
		
		lookupBean2.receiptAmount = totalAmt;
    	
		finalObj.ttNocServiceReceiptModesBean.push(lookupBean2);
		
    	
     	 $.ajax({
    	      type: "POST",
    	      url: saveNocReciptAll,
    	      contentType : "application/json",
    	      //dataType : 'json',
    	      data : JSON.stringify(finalObj),
    	      async: false,
    	      headers: {
    	          "Authorization": "Basic " + btoa("ashok:pass") 
    	      },
    	      success: function (data){
    	    	  //alert("saved")
    	    	  //location.reload(true);
    	      		//window.location.href = data2;
    	    	  //window.location.href = "../home"
    	    	  
    	      },
    	      statusCode: {
    			    403: function() {
    			    	 new PNotify({
    	                  title: 'Session Expire. Please Re-Login...',
    	                  styling: 'bootstrap3',
    	                  type: 'error'
    	              });
    			    	 setTimeout(function(){
    			                window.location.href="/"; 
    			            }, 2000);
    			    }
    			},
    	      error : function(e) {
    	                console.log("ERROR: ", e.responseText);
    	                console.log("ERROR: ", e);
    	              //	display(e);
    	          new PNotify({
    	                  title: 'Request Not Process... ',
    	                  styling: 'bootstrap3',
    	                  type: 'error'
    	              });
    	          }
    	      });  
		
		
	}
	
	</script>
	
	
	<script>
	
	function getAppDetails(){
		
	var fetchTtServiceReqOnSrnNm = "${fetchTtServiceReqOnSrnNm}";
		
		//var srnId = getQueryVariable("srnId");
		var appNo = $("#surveyNo").val();
		
		$.ajax({
  	      type: "POST",
  	      url: fetchTtServiceReqOnSrnNm,
  	      //contentType : "application/json",
  	      //dataType : 'json',
  	      data : "appno="+appNo,
  	      async: false,
  	      headers: {
  	          "Authorization": "Basic " + btoa("ashok:pass") 
  	      },
  	      success: function (data){
  	    	  console.log(data);
  	    	 
  	    	$.each(data, function (i, result) {
	     		debugger
  	    		
  	    		var surveyNo = result.srNumber;
  	    		var surveyDt = result.surveyDt;
  	    		var applicantName = result.applicantName;
  	    		var serId = result.serId;
  	    		
  	    		var splittedData = [];
  	    		
  	    		splittedData = applicantName.split(" ");
  	    		
  	    		$("#appNm").val(applicantName);
  	    		$("#srnId").val(result.srnId);
  	    		$("#surveyNo").val(surveyNo);
  	    		$("#surveyDt").val(surveyDt);
  	    		$("#fname").val(splittedData[0]);
  	    		$("#mname").val(splittedData[1]);
  	    		$("#lname").val(splittedData[2]);
  	    		$("#ulbId").val(result.ulbId);
  	    		
  	    		
  	    		$.each(serviceArr, function (i, result2) {
  	     		 if(result2.serviceId == serId){
  	     			 $("#servId").val(result2.serviceId);
  	     			 $("#servName").val(result2.serviceNameEn);
  	     			$("#servNameMar").val(result2.servicNameRg);
  	     		 }
  	            
  	    		}); 
  	    		
  	    		getModId(serId);
  	    		
  	    		
  	    		
  	    		debugger
  	    		if($("#modId").val() == "30"){
  	    			getNocCharges(serId);
  	    			getLoiId();
  	    		}
  	    		
  	    		if($("#modId").val() == "4"){
  	    			//getWaterCharges(serId)
  	    			getLoiWaterId();
  	    		}
  	    		
  	    		fetchUlbNm();
	     		//serviceArr = data.resultData;
	        });
  	    	  
  	      },
  	      statusCode: {
  			    403: function() {
  			    	 new PNotify({
  	                  title: 'Session Expire. Please Re-Login...',
  	                  styling: 'bootstrap3',
  	                  type: 'error'
  	              });
  			    	 setTimeout(function(){
  			                window.location.href="/"; 
  			            }, 2000);
  			    }
  			},
  	      error : function(e) {
  	                console.log("ERROR: ", e.responseText);
  	                console.log("ERROR: ", e);
  	              //	display(e);
  	          new PNotify({
  	                  title: 'Request Not Process... ',
  	                  styling: 'bootstrap3',
  	                  type: 'error'
  	              });
  	          }
  	      });  
		
	
		//For Loi Payment
		
		//getLoiId();
		
		//For Loi Payment
		
	}
	
	
	function getAppDetailsOnLoiNo(){
		
		var fetchTtServiceReqOnLoiNo = "${fetchTtServiceReqOnLoiNo}";
			
			//var srnId = getQueryVariable("srnId");
			var appNo = $("#loiNo").val();
			
			$.ajax({
	  	      type: "POST",
	  	      url: fetchTtServiceReqOnLoiNo,
	  	      //contentType : "application/json",
	  	      //dataType : 'json',
	  	      
	  	      data : "appno="+appNo,
	  	      async: false,
	  	      headers: {
	  	          "Authorization": "Basic " + btoa("ashok:pass") 
	  	      },
	  	      success: function (data){
	  	    	  console.log(data);
	  	    	 
	  	    	$.each(data, function (i, result) {
		     		
	  	    		
	  	    		var surveyNo = result.srNumber;
	  	    		var surveyDt = result.surveyDt;
	  	    		var applicantName = result.applicantName;
	  	    		var serId = result.serId;
	  	    		
	  	    		var splittedData = [];
	  	    		
	  	    		splittedData = applicantName.split(" ");
	  	    		
	  	    		$("#srnId").val(result.srnId);
	  	    		$("#surveyNo").val(surveyNo);
	  	    		$("#surveyDt").val(surveyDt);
	  	    		$("#fname").val(splittedData[0]);
	  	    		$("#mname").val(splittedData[1]);
	  	    		$("#lname").val(splittedData[2]);
	  	    		$("#ulbId").val(result.ulbId);
	  	    		
	  	    		
	  	    		$.each(serviceArr, function (i, result2) {
	  	     		 if(result2.serviceId == serId){
	  	     			 $("#servId").val(result2.serviceId);
	  	     			 $("#servName").val(result2.serviceNameEn);
	  	     			$("#nocSubType").val(result2.serviceNameEn);
	  	     		 }
	  	            
	  	    		}); 
	  	    		
	  	    		getNocCharges(serId);
	  	    		getLoiId();
	  	    		fetchUlbNm();
		     		//serviceArr = data.resultData;
		        });
	  	    	  
	  	      },
	  	      statusCode: {
	  			    403: function() {
	  			    	 new PNotify({
	  	                  title: 'Session Expire. Please Re-Login...',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  			    	 setTimeout(function(){
	  			                window.location.href="/"; 
	  			            }, 2000);
	  			    }
	  			},
	  	      error : function(e) {
	  	                console.log("ERROR: ", e.responseText);
	  	                console.log("ERROR: ", e);
	  	              //	display(e);
	  	          new PNotify({
	  	                  title: 'Request Not Process... ',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  	          }
	  	      });  
			
		
			//For Loi Payment
			
			//getLoiId();
			
			//For Loi Payment
			
		}
	
	
	function getPaidDetails(){
		
		
		
		var jsonpaymentgateway="${jsonpaymentgateway}";
		
		//Table to get receipt total amt
    	
    	var oTable = document.getElementById('storage');
    	var count = $('#storage tr').length;
    	
    	var totalAmt = parseInt("0");
    	
	for(var i=1; i<count; i++){
			
    		//gets cells of current row  
    	       var oCells = oTable.rows.item(i).cells;

    	       //gets amount of cells of current row
    	       var cellLength = oCells.length;
    	       
    	       //loops through each cell in current row
    	       for(var j = 1; j <= cellLength-1; j++){
				
    	    	   var k = j;
    	              // get your cell info here
    	              
					if(k==2){
						var cellVal = oCells.item(j).innerHTML;
						totalAmt = parseInt(totalAmt) + parseInt($("#nocActAmt"+i).val());
						console.log(totalAmt);
					}
					

    	       }
    		
			
    	}
		
		$("#totalAmt").val(totalAmt);
		
		//Table to get receipt total amt
		
		var datavar2 = {"wulbId":parseInt($("#ulbId").val()),
				"serviceId":$("#servId").val(),
				"payAmount":totalAmt,
				"mobNo":"9768281970",
				"udf1":$("#ulbNmMar").val(),
				"udf2":"स्विकृत पत्र",
				"udf3":$("#surveyNo").val(),
				"udf4":$("#ulbCode").val(),
				"applicantName":$("#appNm").val(),
				"srn_id":$("#srnId").val(),
				"noc_charge_id":$("#chgId").val(),
				"moduleId":$("#modId").val(),
				/* "connectionId":$("#surveyNo").val(), */
				"udf5":$("#loiNo").val()};
	    
	    	console.log(datavar2);
	    	
	    	$.ajax({
	    		type : "POST",
	    		url : jsonpaymentgateway,
	    		contentType: "application/json; charset=UTF-8",
	    		 
	    		data : JSON.stringify(datavar2),
	    		async : false,
	    		 cache: false,
	    		success : function(data)
	    		{
	    			console.log(data);
	    			//alert(data);
	    			if($("#modId").val() == "30"){
	    				saveNocReciptAndMode();
	    	  		}
	    	  		
	    	  		if($("#modId").val() == "4"){
	    	  			saveWaterReciptAndMode();
	    	  		}
	    			
	    			
	    			
	    			window.location.href = data;
	    			
	    			

	    			//$("#returnURL").val(data);
	    			//commonChecklist();
	    			//$("#checkListForm").submit();
	    			
	    			
	    		} ,
	    		error : function(request, status, error) {
	    			 //console.log("error "+request);
	    			// console.log("error "+error);
	    		} 
	    	});

		
	}
	
	//Fetch UlbNm on UlbId
	
	function fetchUlbNm(){
		
		var fetchUlbNmOnUlbId="${fetchUlbNmOnUlbId}";
		
		var ulbId = $("#ulbId").val();
		
		$.ajax({
  	      type: "POST",
  	      url: fetchUlbNmOnUlbId,
  	      //contentType : "application/json",
  	      //dataType : 'json',
  	      data : "ulbId="+ulbId,
  	      async: false,
  	      headers: {
  	          "Authorization": "Basic " + btoa("ashok:pass") 
  	      },
  	      success: function (data){
  	    	  
  	    	debugger
  	    	  console.log(data);
  	    	 
  	    	$.each(data, function (i, result) {
	     		$("#ulbCode").val(result.ulbCode);
  	    		$("#ulbNmEng").val(result.ulbNmEng);
  	    		$("#ulbNmMar").val(result.ulbNmMar);
	     		//serviceArr = data.resultData;
	        });
  	    	  
  	      },
  	      statusCode: {
  			    403: function() {
  			    	 new PNotify({
  	                  title: 'Session Expire. Please Re-Login...',
  	                  styling: 'bootstrap3',
  	                  type: 'error'
  	              });
  			    	 setTimeout(function(){
  			                window.location.href="/"; 
  			            }, 2000);
  			    }
  			},
  	      error : function(e) {
  	                console.log("ERROR: ", e.responseText);
  	                console.log("ERROR: ", e);
  	              //	display(e);
  	          new PNotify({
  	                  title: 'Request Not Process... ',
  	                  styling: 'bootstrap3',
  	                  type: 'error'
  	              });
  	          }
  	      });  
	}
	
	//Fetch UlbNm on UlbId
	
	
	</script>
	
	
<!-- <script>
$('table').on('click', '.btnAdded', function() {
	$(this).closest('tbody').append('<tr><td>1</td><td><select class="form-control"><option></option></select></td><td><select class="form-control"><option></option></select></td><td><input type="text" class="form-control"></td><td><input type="text" class="form-control"></td><div class="input-group"><input type='text' class="form-control" /><span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span></div><td><span><a><i class="fa fa-plus btnAdded" aria-hidden="true"></i></a></span><span>/</span><span><a><i class="fa fa-minus btnDeleted" aria-hidden="true"></i></a></span></td></tr>');
}).on('click', '.btnDeleted', function(){
	$(this).closest('tr').remove();
});
</script> -->
	
	<script>
	<!-- Fetch Mod Id on Ser Id -->
	
	function getModId(serId){
		
		var fetchModIdOnSerId="${fetchModIdOnSerId}";
		
		
		$.ajax({
  	      type: "POST",
  	      url: fetchModIdOnSerId,
  	      //contentType : "application/json",
  	      //dataType : 'json',
  	      data : "serId="+serId,
  	      async: false,
  	      headers: {
  	          "Authorization": "Basic " + btoa("ashok:pass") 
  	      },
  	      success: function (data){
  	    	  
  	    	debugger
  	    	  console.log("Mod id is ---> "+data);
  	    	 
  	    	$("#modId").val(data);
  	    	
  	    	/* $.each(data, function (i, result) {
	     		$("#ulbCode").val(result.ulbCode);
  	    		$("#ulbNmEng").val(result.ulbNmEng);
  	    		$("#ulbNmMar").val(result.ulbNmMar);
	     		//serviceArr = data.resultData;
	        }); */
  	    	  
  	      },
  	      statusCode: {
  			    403: function() {
  			    	 new PNotify({
  	                  title: 'Session Expire. Please Re-Login...',
  	                  styling: 'bootstrap3',
  	                  type: 'error'
  	              });
  			    	 setTimeout(function(){
  			                window.location.href="/"; 
  			            }, 2000);
  			    }
  			},
  	      error : function(e) {
  	                console.log("ERROR: ", e.responseText);
  	                console.log("ERROR: ", e);
  	              //	display(e);
  	          new PNotify({
  	                  title: 'Request Not Process... ',
  	                  styling: 'bootstrap3',
  	                  type: 'error'
  	              });
  	          }
  	      });  
		
	}
	
	
	//Fetch charges for water
	
	function getLoiWaterId(){
		debugger
		
		var srnId = $("#srnId").val();
		
		var fetchLoiWaterIdOnSrnId = "${fetchLoiWaterIdOnSrnId}"
		
			$.ajax({
		  	      type: "POST",
		  	      url: fetchLoiWaterIdOnSrnId,
		  	      //contentType : "application/json",
		  	      //dataType : 'json',
		  	      data : "srnId="+srnId,
		  	      async: false,
		  	      headers: {
		  	          "Authorization": "Basic " + btoa("ashok:pass") 
		  	      },
		  	      success: function (data){
		  	    	  
		  	    	  console.log(data);
		  	    	  
		  	    	  var desc = null;
		  	    	  
		  	    	  $.each(data, function (i, result) {
		  	    		  
		  	    		  $("#loiDt").val(result.loiDt);
		  	    		  $("#loiNo").val(result.loiNo);
		  	    		  $("#loiId").val(result.nocLoiId);
		  	    		  
		  	    		  
		  	    		  console.log(result.nocLoiId);
		  	    		  
		  	    		getWaterLoiDetId(result.nocLoiId);
		  	    		  
		  	    	  });
		  	    	  
		  	      },
		  	      statusCode: {	
		  			    403: function() {
		  			    	 new PNotify({
		  	                  title: 'Session Expire. Please Re-Login...',
		  	                  styling: 'bootstrap3',
		  	                  type: 'error'
		  	              });
		  			    	 setTimeout(function(){
		  			                window.location.href="/"; 
		  			            }, 2000);
		  			    }
		  			},
		  	      error : function(e) {
		  	                console.log("ERROR: ", e.responseText);
		  	                console.log("ERROR: ", e);
		  	              //	display(e);
		  	          new PNotify({
		  	                  title: 'Request Not Process... ',
		  	                  styling: 'bootstrap3',
		  	                  type: 'error'
		  	              });
		  	          }
		  	      });   
		
	}
	
	
	function getWaterLoiDetId(loiId){
		debugger
		var loiId = loiId;
		
		var fetchLoiWaterDetIdOnloiId = "${fetchLoiWaterDetIdOnloiId}";
		
		$.ajax({
	  	      type: "POST",
	  	      url: fetchLoiWaterDetIdOnloiId,
	  	      //contentType : "application/json",
	  	      //dataType : 'json',
	  	      data : "loiId="+loiId,
	  	      async: false,
	  	      headers: {
	  	          "Authorization": "Basic " + btoa("ashok:pass") 
	  	      },
	  	      success: function (data){
	  	    	$("#storage tbody").empty();
	  	    	  console.log(data);
	  	    	  
	  	    	  //$("#chgId").val(data[0].nocLoiId);
	  	    	  
	  	    	  var row = 1;
	  	    	  var desc = null;
	  	    	  
	  	    	  $.each(data, function (i, result) {
	  	    		  
	  	    		/* chg = {};
	  	    		  
	  	    		chg.nocChargeDetId = result.nocLoiDetId;
	  	    		  
	  	    		chgDetId.push(chg); */
	  	    		  
	  	    		 // console.log(result.nocLoiId);
	  	    		
						   		
	  	    		$("#storage tbody").append("<tr> <td><input type='hidden' id='taxId"+row+"' value='"+result.taxId+"'><input type='hidden' id='nocLoiId"+row+"' value='"+result.nocLoiId+"'>"+row+"</td> <td><input type='hidden' id='taxDetId"+row+"' value='"+result.taxDetId+"'><input type='hidden' id='nocLoiDetId"+row+"' value='"+result.nocLoiDetId+"'>"+$("#servName").val()+"</td><td style='text-align: right'><input type='hidden' id='nocActAmt"+row+"' value='"+result.nocActAmt+"'>"+result.nocActAmt+"</td></tr>");
					row++;
	  	    		  
	  	    	  });
	  	    	  
	  	      },
	  	      statusCode: {	
	  			    403: function() {
	  			    	 new PNotify({
	  	                  title: 'Session Expire. Please Re-Login...',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  			    	 setTimeout(function(){
	  			                window.location.href="/"; 
	  			            }, 2000);
	  			    }
	  			},
	  	      error : function(e) {
	  	                console.log("ERROR: ", e.responseText);
	  	                console.log("ERROR: ", e);
	  	              //	display(e);
	  	          new PNotify({
	  	                  title: 'Request Not Process... ',
	  	                  styling: 'bootstrap3',
	  	                  type: 'error'
	  	              });
	  	          }
	  	      });  
		
	}
	
	//Fetch charges for water

	//Save Water Details
	
	function saveWaterReciptAndMode(){
		
		debugger
		var saveWaterReciptAll = "${saveWaterReciptAll}"
		
		
		var finalObj= {};
    	
		
		var srnId = $("#srnId").val();
		var serId = $("#servId").val();
		var loiId = $("#loiId").val();
		
		var recptAmt = null;
		
		var chgId = $("#chgId").val();
		console.log(chgDetId);
		
		var cheqNo = $("#chequeddno").val();
		var cheqDt = $("#chequedddate").val();
		
		var brnchId = $("#bankBranchId").val();
		var brnchNm = $("#bankname").val(); 
		
		var instNo = $("#instrumentno").val();
		var instDt = $("#instrumentdate").val();
		
    	var status = 1;
    	

    	//Table to get receipt total amt
    	
    	var oTable = document.getElementById('storage');
    	var count = $('#storage tr').length;
    	var len = count+1;
    	var totalAmt = parseInt("0");
    	
		for(var i=1; i<count; i++){
			
    		//gets cells of current row  
    	       var oCells = oTable.rows.item(i).cells;

    	       //gets amount of cells of current row
    	       var cellLength = oCells.length;
    	       
    	       //loops through each cell in current row
    	       for(var j = 1; j <= cellLength-1; j++){
				
    	    	   var k = j;
    	              // get your cell info here
    	              
					if(k==2){
						var cellVal = oCells.item(j).innerHTML;
						totalAmt = totalAmt+parseInt($("#nocActAmt"+i).val());
						console.log(totalAmt);
					}
					

    	       }
    		
			
    	}
		
		//Table to get receipt total amt
		
    	finalObj.srnId = srnId;
    	finalObj.serId = serId;
    	finalObj.nocLoiId = loiId;
    	finalObj.nocReceiptAmount = $("#totalAmt").val();
    	finalObj.ulbId = $("#ulbId").val();
    	
    	finalObj.ttNocServiceReceiptDetsBean = [];
    	for(var i=1;i<count;i++){
        	
        	lookupBean1 = {};
        	lookupBean1.chargeId = $("#nocLoiId"+i).val();
        	lookupBean1.chargeDetId = $("#nocLoiDetId"+i).val();//chgDetId[i].nocChargeDetId;
    		lookupBean1.nocChgAmt = $("#nocActAmt"+i).val();//totalAmt;
        	lookupBean1.taxId = $("#taxId"+i).val();
        	lookupBean1.taxDetailId = $("#taxDetId"+i).val();
    		
    		finalObj.ttNocServiceReceiptDetsBean.push(lookupBean1);
    	}
    	
    	//For Detail Receipt
    	
    	
    	//For Detail Receipt
    	
    	finalObj.ttNocServiceReceiptModesBean = [];
    	
    	lookupBean2 = {};
    	lookupBean2.branchId = brnchId;
		lookupBean2.bankBranchName = brnchNm;
		var ChqNo = $("#chequeddno").val();
		var insNo = $("#instrumentno").val();
		
		if(ChqNo != ""){
			lookupBean2.instrumentNo = ChqNo;
		}
		
		if(insNo != ""){
			lookupBean2.instrumentNo = insNo;
		}
		
		var ChqDt = $("#chequedddate").val();
		var insDt = $("#instrumentdate").val();
		
		if(ChqDt != ""){
			lookupBean2.dt = ChqDt;
		}
		
		if(insDt != ""){
			lookupBean2.dt = insDt;
		}
		
		lookupBean2.receiptAmount = $("#totalAmt").val();
    	
		finalObj.ttNocServiceReceiptModesBean.push(lookupBean2);
		
    	
     	 $.ajax({
    	      type: "POST",
    	      url: saveWaterReciptAll,
    	      contentType : "application/json",
    	      //dataType : 'json',
    	      data : JSON.stringify(finalObj),
    	      async: false,
    	      headers: {
    	          "Authorization": "Basic " + btoa("ashok:pass") 
    	      },
    	      success: function (data){
    	    	  //alert("saved")
    	    	  //location.reload(true);
    	      		//window.location.href = data2;
    	    	  //window.location.href = "../home"
    	    	  
    	      },
    	      statusCode: {
    			    403: function() {
    			    	 new PNotify({
    	                  title: 'Session Expire. Please Re-Login...',
    	                  styling: 'bootstrap3',
    	                  type: 'error'
    	              });
    			    	 setTimeout(function(){
    			                window.location.href="/"; 
    			            }, 2000);
    			    }
    			},
    	      error : function(e) {
    	                console.log("ERROR: ", e.responseText);
    	                console.log("ERROR: ", e);
    	              //	display(e);
    	          new PNotify({
    	                  title: 'Request Not Process... ',
    	                  styling: 'bootstrap3',
    	                  type: 'error'
    	              });
    	          }
    	      });  
		
		
	}
	
	
	//Save Water Details
	
	</script>
  

  </body>
</html>
</compress:html>

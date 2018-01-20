<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<style type="text/css">
        #map_canvas {
                height: 30%;
                width: 30%;
        }
</style>

</head>
<body class="nav-md" >
	<div class="container body">
		<div class="main_container">
			<jsp:include page="../../common/leftMenu.jsp" />
			<jsp:include page="../../common/headerTop.jsp" />


			<!-- page content -->
			<spring:message code="label.please.enter" var="pls" />

			<div class="right_col" role="main">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
										<spring:message code="label.surveyrequest" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									 <c:url var="surveyRequest" value="/treecensus/application/surveyReq" />
									 <form:form method="post" class="form-horizontal"  action="${surveyRequest}" id="survey-request" modelAttribute="surveyrequest">
									 <input type="hidden" id="ulbid"  value="${ulbId}"/> 									
										<div class="row">
						            		 <div class="location-details col-md-12">
						            		 <!-- 
						            		 <div class="col-md-12">
						            		 	<label class="app-type"><spring:message code="label.form.survey.applicationtype" /></label>
						            		 </div>
						            		  -->
												<jsp:include page="../../common/maha-dma/applicant-details.jsp" />
											</div>
											<div class="location-details col-md-12">
											 	<div class="col-md-12">
							            		 	<label class="app-type"><spring:message code="label.form.survey.locationdetails" /></label>
							            		 </div>
						            		 	 <div class="col-md-12">
						            		 		<div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.location" /> :<span class="astric">*</span>	</label>
													    <div id="locId" class="col-md-4 col-sm-4">
														    <form:input path="locationId" type="text" class="form-control" id="locationId" 
														     required="required" onblur="validateLocation()" onkeypress="removeLocation()"/>
														    <form:input path="LocName" type="hidden" id="LocName" />
														</div>	
														<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.apartment" /> :<span class="astric">*</span>	</label>
														<div id="aprtId" class="col-md-4 col-sm-4">
														    <form:input path="apartmentId" type="text" class="form-control" id="apartmentId" 
														     required="required" onblur="validateApart()" onkeypress="removeApart()"/>
														    <form:input path="aprtName" type="hidden" id="aprtName"/>
														 </div>
												    </div>
												    
												    <%-- <div class="form-group">
													<div class="form-group col-md-12">	
														<label for="name" class="col-md-2 col-sm-12 col-xs-12">Revenue Boundaries :	</label>
													  	<div class="col-md-2 col-sm-12 col-xs-12 subboundry1">
														    <select class="form-control subDroped1">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
 													  	<div class="col-md-2 col-sm-12 col-xs-12 subboundry2">
													    	<select class="form-control subDroped2">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
														<div class="col-md-2 col-sm-12 col-xs-12 subboundry3">
													    	<select class="form-control subDroped3">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
														<div class="col-md-2 col-sm-12 col-xs-12 subboundry4">
													    	<select class="form-control subDroped4">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
														<div class="col-md-2 col-sm-12 col-xs-12 subboundry5">
													    	<select class="form-control subDroped5">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
								            		</div>
													  	
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.ward" /> :	</label>
													    <div id="wardNo" class="col-md-4 col-sm-4">
														    <form:input path="wardId" type="text" class="form-control" id="wardId"/>
														    <!-- onblur="validateWard()" onkeypress="removeWard()" -->
														    <form:input path="wardName" type="hidden" id="WardName"/>
														 </div>	
														<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.zone" /> :</label>
														<div id="zoneNo" class="col-md-4 col-sm-4">
														    <form:input path="zoneId"  type="text" class="form-control" id="zoneId"/>
														    <!--  onblur="validateZone()" onkeypress="removeZone()"--> 
														    <form:input path="zoneName"  type="hidden" id="zoneName"/>
														 </div>
														
												    </div> --%>
												    
												    <div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.road" /> :<span class="astric">*</span>	</label>
													    <div id="roadNo" class="col-md-4 col-sm-4">
														    <form:input path="roadId" type="text" class="form-control" id="roadId" 
														     required="required" onblur="validateRoad()" onkeypress="removeRoad()"/>
														    <form:input path="roadName" type="hidden" id="roadName"/>
														 </div>	
														<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.locality" /> :<span class="astric">*</span>	</label>
														<div id="localityNo" class="col-md-4 col-sm-4">
														    <form:input path="localityId" type="text" class="form-control" id="localityId" 
														     required="required" onblur="validateLocality()" onkeypress="removeLocality()"/>
														    <form:input path="LocalityName" type="hidden" id="LocalityName"/>
														 </div>
												    </div>
												    
												    <div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.longitude" /> :</label>
													    <div class="col-md-4 col-sm-4">
													    	<form:input path="longitude" type="text" class=" form-control" id="lon"
																oninput="setCustomValidity('')" readonly="readonly"
																oninvalid="this.setCustomValidity('${pls}')"/>
														</div>	
														<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.latitude" /> :	</label>
														<div class="col-md-4 col-sm-4">
													    	<form:input path="latitude" type="text" class=" form-control" id="lat"
																oninput="setCustomValidity('')" readonly="readonly"
																oninvalid="this.setCustomValidity('${pls}')"/>
														</div>	
												    </div>
												    
												   <%--  <div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.gmap" /> :		</label>
													    <div class="col-md-4 col-sm-4">
													    	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3772.3582223812678!2d72.82513676446662!3d19.0039302871293!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7ce9336543a23%3A0xe6d1a843d2e064c!2sKamala+Mills+Compound%2C+Lower+Parel%2C+Mumbai%2C+Maharashtra+400013!5e0!3m2!1sen!2sin!4v1504600474556" width="400" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
														</div>	
														
												    </div> --%>
												    
												    <!-- Google Map -->
												    
												    <div class="form-group">
														
														<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																	code="label.form.survey.inspector.gmap" />: <span
																class="required">*</span></label>
															<div id="map_canvas" class="col-md-4 col-sm-4">
																<!-- <iframe
																	src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3772.3582223812678!2d72.82513676446662!3d19.0039302871293!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7ce9336543a23%3A0xe6d1a843d2e064c!2sKamala+Mills+Compound%2C+Lower+Parel%2C+Mumbai%2C+Maharashtra+400013!5e0!3m2!1sen!2sin!4v1504600474556"
																	width="300" height="90" frameborder="0"
																	style="border: 0" allowfullscreen></iframe> -->
															</div>
															<div id="locationinfo" style="display: none;"></div>
													</div>


												    
												    
												    <!-- Google Map -->
												    
												  </div>  
											 </div>
										</div>
											
										<div class="row">
											<ul class="nav navbar-right panel_toolbox">
											<!-- Chnage Delete button to Reset button -->
												<li>
							                     	<button type="button" id="delBtn"
													class="btn btn-danger" onclick="location.reload(true)"><spring:message code="label.btn.reset" /></button>
							                     </li>	 
							                     <li>
							                     	<button type="submit" id="addBtn"
													class="btn btn-success"><spring:message code="label.btn.add" /></button>
							                     </li>	  
						                    </ul>
											
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			
			
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>
	<jsp:include page="../../common/jsFooter.jsp" />
	<!-- 
	<script src="<c:url value="/treecensus/js/treecensus.min.js" />"></script> 
	<c:url var='jsonULBLocationListUrl' value='/treecensus/rest/ulblocationlist' />
    <c:url var='jsonULBApartmentListUrl' value='/treecensus/rest/ulbapartmentlist' />
    <c:url var='jsonULBWardListUrl' value='/treecensus/rest/ulbwardlist' />
    <c:url var='jsonULBZoneListUrl' value='/treecensus/rest/ulbzonelist' />
    <c:url var='jsonULBRoadListUrl' value='/treecensus/rest/ulbroadlist' />
	<c:url var='jsonULBLocalityListUrl' value='/treecensus/rest/ulblocalitylist' />
	 -->
	 <c:url var='jsonLookupUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookup' /> 
<c:url var='jsonLookupDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupDet' /> 
<c:url var='jsonLookupHierDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupHeirDet' />
	 <c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
<script type="text/javascript" src="<c:url value="/maha-dma/js/surveyReqForm_validation.js" />"></script>
	<script>
	//alert("ULB" + $('#ulbid').val());
	var jsonULBListUrl = "${jsonULBListUrl}";
	var jsonServiceListUrl = "${jsonServiceListUrl}";
	var jsonLookupUrl = "${jsonLookupUrl}";
	var jsonLookupDetUrl = "${jsonLookupDetUrl}";
	var jsonLookupHierDetUrl = "${jsonLookupHierDetUrl}";

	/* google.load("elements", "1", {packages: "transliteration"}); */
	 	
	 	/*locationId*/
	 	$("#locationId").autocomplete({
			source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/locationData', {searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){
	        		response($.map(data, function(key, value) {
	        			 if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
	        		    	return {
	                            label: key,
	                            value: value
	                        };
	        		    } 
	                }));
	        	})
	        },
	        select: function(event, ui) {
	            event.preventDefault();
	            $("#locationId").val(ui.item.label);
	            $("#LocName").val(ui.item.value);
	            return false;
	        },
	        focus: function (event, ui) {
	            this.value = ui.item.label;	                 
	            event.preventDefault();
	        }
			
	    });																
	 	
	 	/*apartmentId*/
	 	$("#apartmentId").autocomplete({
			source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/apartmentData', {searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){
	        		response($.map(data, function(key, value) {
	        			 if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
	        		    	return {
	                            label: key,
	                            value: value
	                        };
	        		    } 
	                }));
	        	})
	        },
	        select: function(event, ui) {
	            event.preventDefault();
	            $("#apartmentId").val(ui.item.label);
	            $("#aprtName").val(ui.item.value);
	            return false;
	        },
	        focus: function (event, ui) {
	            this.value = ui.item.label;	                 
	            event.preventDefault();
	        }
			
	    });		
	 	
	 	/*wardId*/
	 	$("#wardId").autocomplete({
			source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/wardData', {searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){
	        		response($.map(data, function(key, value) {
	        			 if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
	        		    	return {
	                            label: key,
	                            value: value
	                        };
	        		    } 
	                }));
	        	})
	        },
	        select: function(event, ui) {
	            event.preventDefault();
	            $("#wardId").val(ui.item.label);
	            $("#WardName").val(ui.item.value);
	            return false;
	        },
	        focus: function (event, ui) {
	            this.value = ui.item.label;	                 
	            event.preventDefault();
	        }
			
	    });		

	 	/*zoneId*/
	 	$("#zoneId").autocomplete({
			source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/zoneData', {searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){
	        		response($.map(data, function(key, value) {
	        			 if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
	        		    	return {
	                            label: key,
	                            value: value
	                        };
	        		    } 
	                }));
	        	})
	        },
	        select: function(event, ui) {
	            event.preventDefault();
	            $("#zoneId").val(ui.item.label);
	            $("#zoneName").val(ui.item.value);
	            return false;
	        },
	        focus: function (event, ui) {
	            this.value = ui.item.label;	                 
	            event.preventDefault();
	        }
			
	    });	
	 	
	 	/*roadId*/
	 	$("#roadId").autocomplete({
			source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/roadData', {searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){
	        		response($.map(data, function(key, value) {
	        			 if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
	        		    	return {
	                            label: key,
	                            value: value
	                        };
	        		    } 
	                }));
	        	})
	        },
	        select: function(event, ui) {
	            event.preventDefault();
	            $("#roadId").val(ui.item.label);
	            $("#roadName").val(ui.item.value);
	            return false;
	        },
	        focus: function (event, ui) {
	            this.value = ui.item.label;	                 
	            event.preventDefault();
	        }
			
	    });
	 	/*LocalityId*/
	 	$("#localityId").autocomplete({
			source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/localityData', {searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){
	        		response($.map(data, function(key, value) {
	        			 if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
	        		    	return {
	                            label: key,
	                            value: value
	                        };
	        		    } 
	                }));
	        	})
	        },
	        select: function(event, ui) {
	            event.preventDefault();
	            $("#localityId").val(ui.item.label);
	            $("#LocalityName").val(ui.item.value);
	            return false;
	        },
	        focus: function (event, ui) {
	            this.value = ui.item.label;	                 
	            event.preventDefault();
	        }
			
	    });
	 </script>
	<!-- Added for set Lan-Lat from Google map --> 
	<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=${key}"></script>
	<script src="<c:url value="/js/google-map.js" />"></script>
	<!-- End Google map --> 
	<c:if test="${not empty message}" >
	<script>
	
		 new PNotify({
				title : '${message}',
				styling : 'bootstrap3',
				type : 'success'
			}); 
	
	</script>
 
	</c:if>
</body>
</html>
</compress:html>
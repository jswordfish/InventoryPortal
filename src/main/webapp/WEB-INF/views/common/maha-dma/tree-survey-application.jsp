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
	<style type="text/css">
	#map_canvas {
		height: 30%;
		width: 30%;
	}
	</style>
</head>
<body>
	<jsp:include page="../citizenHeaderTop.jsp" />
	
	<div class="prop-section">
		<div class="container">
			<div class="form-title">
				<h1><spring:message code="label.surveyrequest"/></h1>
				<span class="home-icon">
					<i class="fa fa-home" id="homeBtn"></i>
				</span>
			</div>
			
			<c:url var="citizenRequest" value="/treecensus/citizen/surveyReq" />
			<form:form action="${citizenRequest}" name="citizen-survey-request" id="citizenSurveyRequest" 
			method="post" modelAttribute="applicationBean" enctype="multipart/form-data">
				<!-- Desine All Down keyboard_arrow_down -->
				<div class="ulb-section">
					<input type="hidden" id="action" value="${action}">
					<input type="hidden" id="serviceCode" value="${serviceCode}"/>
					
					<!-- Applicant JSP -->
					<div class="toggle-header" data-target="#application-details">
						<h2 class="StepTitle">
						<spring:message code="label.document.citizenser.applicantdet" />
							<i class="glyphicon glyphicon-chevron-down toggle-icon">
								<span>keyboard_arrow_down</span>
							</i>
						</h2>
					</div>
					
					<div id="application-details">
						<div class="row">
							<div class="form-group">
								<label for="ulbIdDesc" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.document.nodue.ulbname" />:
								</label>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<form:select class=" form-control" path="ulbIdDesc" id="ulbIdDesc">
										<form:option value=""><spring:message code="label.document.nodue.ulbsel" /></form:option>
									</form:select>
									<input type="hidden" name="ulbId" id="ulbId" value="${ulbIdDeschide }"/> <!-- ulbIdDeschide -->
									<input type="hidden" name="ulbNo" id="ulbNo" />
								</div>
							</div>
						</div>
					
						<div class="row">
							<div class="form-group">
								<label class="col-md-2 col-sm-12 col-xs-12" for="setServiceId">
									<spring:message code="label.document.nodue.servicename" />:
								</label>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<form:select class=" form-control" path="setServiceId" id="setServiceId" disabled="true" >
										<form:option value="" readonly="true" ><spring:message code="label.document.nodue.selservicename" /></form:option>
									</form:select>
									<form:hidden path="" id="servDeschide" value="${servDeschide }"/>
								</div>
							</div>
						</div>
						<jsp:include page="../../common/maha-dma/applicant-details.jsp" />
					</div><!-- #application-details -->
				
					<div class="toggle-header" data-target="#location-details">
						<h2 class="StepTitle">
							<spring:message code="label.form.survey.locationdetails" />
							<i class="glyphicon glyphicon-chevron-down toggle-icon">
								<span>keyboard_arrow_down</span>
							</i>
						</h2><!-- StepTitle -->
					</div>
					
					<div id="location-details">
						<div class="row">
							<div class="form-group">
								<label for="locName" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.location" /><span class="required">*</span>:
								</label>
								<div id="locNo" class="col-md-4 col-sm-12 col-xs-12">
									<input name="locName" id="locName" type="text" class="form-control"
									required="required" onblur="validateLocation()" onkeypress="removeLocation()"/>
									<input type="hidden" name="locId" id="locId" />
								</div>
								<label for="aprtName" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.apartment" />
									<span class="required">*</span>:
								</label>
								<div id="aprtNo" class="col-md-4 col-sm-12 col-xs-12">
									<input name="aprtName" type="text" class="form-control" id="aprtName"
									required="required" onblur="validateApart()" onkeypress="removeApart()"/>
									<input type="hidden" name="aprtId" id="aprtId"/>
								</div>
							</div>
						</div>
						
						<%--
						<div class="row">
							<div class="form-group">
								<label for="wardName" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.ward" />:
								</label>
								<div id="wardNo" class="col-md-4 col-sm-12 col-xs-12">
									<input name="wardName" type="text" class="form-control" id="wardName"/>
									<!-- onblur="validateWard()" onkeypress="removeWard()" -->
									<input type="hidden" name="wardId" id="wardId"/>
								</div>
								<label for="zoneName" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.zone" />:
								</label>
								<div id="zoneNo" class="col-md-4 col-sm-12 col-xs-12">
									<input name="zoneName"  type="text" class="form-control" id="zoneName"/>
									<!--  onblur="validateZone()" onkeypress="removeZone()"-->
									<input type="hidden" name="zoneId"  id="zoneId"/>
								</div>
							</div>
						</div>
						--%>
						
						<div class="row">
							<div class="form-group">
								<label for="wardId" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.revenue-boundaries"/>:
								</label>
								
								<div class="col-md-2 col-sm-12 col-xs-12 subboundry1">
									<select class="form-control subDroped1" name="wardId">
										<option value="0">Select Zone</option>
									</select>
									<input type="hidden" name="wardId" id="wardId"/>
								</div>
								
								<div class="col-md-2 col-sm-12 col-xs-12 subboundry2">
									<select class="form-control subDroped2" name="zoneId">
										<option value="0">Select Zone</option>
									</select>
									<input type="hidden" name="zoneId"  id="zoneId"/>
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
						</div>
						
						<div class="row">
							<div class="form-group">
								<label for="roadName" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.road" /><span class="required">*</span>:
								</label>
								<div id="roadNo" class="col-md-4 col-sm-12 col-xs-12">
									<input name="roadName" type="text" class="form-control" id="roadName"
									required="required" onblur="validateRoad()" onkeypress="removeRoad()"/>
									<input type="hidden" name="roadId" id="roadId"/>
								</div>
								<label for="localityName" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.locality" /><span class="required">*</span>:
								</label>
								<div id="localityNo" class="col-md-4 col-sm-12 col-xs-12">
									<input name="localityName" type="text" class="form-control" id="localityName"
									required="required" onblur="validateLocality()" onkeypress="removeLocality()"/>
									<input type="hidden" name="localityId" id="localityId"/>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label for="lon" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.longitude" />:
								</label>
								<div class="col-md-4 col-sm-12 col-xs-12">
									<input name="longitude" type="text" class="form-control" id="lon"
									oninput="setCustomValidity('')" readonly="readonly"
									oninvalid="this.setCustomValidity('${pls}')"/>
								</div>
								<label for="lat" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.form.survey.latitude" />:
								</label>
								<div class="col-md-4 col-sm-12 col-xs-12">
									<input name="latitude" type="text" class=" form-control" id="lat"
									oninput="setCustomValidity('')" readonly="readonly"
									oninvalid="this.setCustomValidity('${pls}')"/>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label for="name" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message	code="label.form.survey.inspector.gmap" /><span
									class="required">*</span>:
								</label>
								<div id="map_canvas" class="col-md-4 col-sm-12 col-xs-12"></div>
								<div id="locationinfo" style="display: none;"></div>
							</div><!-- Google Map -->
						</div>
					</div><!-- #location-details -->
							
					<div class="toggle-header" data-target="#upload-div">
						<h2 class="StepTitle">
							<spring:message code="label.form.survey.uploaddoc"/>
							<i class="glyphicon glyphicon-chevron-down toggle-icon">
								<span>keyboard_arrow_down</span>
							</i>
						</h2>
					</div>

					<div id="upload-div">		
						<c:choose>
							<c:when test="${action == 'A'}">
								<div id="upload-div">
									<jsp:include page="checklist.jsp" />
								</div>
							</c:when>
							<c:when test="${action == 'V'}">
								<input type="hidden"  id="srnIdView" value="${srnId }">
								<jsp:include page="view-checklist.jsp" />
							</c:when>
						</c:choose>
						
						<c:choose>
							<c:when test="${action == 'A'}">
								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">
										<div class="actionBar">
											<button type="submit" id="addBtn" class="btn btn-success">
												<spring:message code="label.btn.save" />
											</button>
										</div>
									</div>
									<!--
										<ul class="nav navbar-right panel_toolbox">
												<li>
											<button type="button" id="delBtn"
														class="btn btn-danger" onclick="location.reload(true)"><spring:message code="label.btn.reset" /></button>
										</li>
										<li>
											-->
											
											<!--
										</li>
									</ul>
									-->
								</div>
							</c:when>
						</c:choose><!-- Desine All Down keyboard_arrow_down -->
					</div>
				</div><!-- ulb-section -->
			</form:form>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<jsp:include page="../../common/jsFooter.jsp" />
	<jsp:include page="../citizenFooter.jsp" />
	
	<%-- <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script> --%>
	<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
	<script src="<c:url value="/application/js/application.min.js" />"></script>
	<c:url var='jsonLookupUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookup' />
	<c:url var='jsonLookupDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupDet' />
	<c:url var='jsonLookupHierDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupHeirDet' />
	<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
	<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
	<!-- Added for set Lan-Lat from Google map -->
	<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=${key}"></script>
	<script src="<c:url value="/js/google-map.js" />"></script>
	<c:url var='homeUrl' value='/' />
	<script src="<c:url value="/home/js/service.min.js" />"></script>
	<c:url var='getSeviceSpecificData' value='/Scrutiny/Web/getSeviceSpecificData' />
	
	<!-- End Google map -->
	<script>
	var jsonULBListUrl = "${jsonULBListUrl}";
	var jsonServiceListUrl = "${jsonServiceListUrl}";
	var jsonLookupUrl = "${jsonLookupUrl}";
	var jsonLookupDetUrl = "${jsonLookupDetUrl}";
	var jsonLookupHierDetUrl = "${jsonLookupHierDetUrl}";
	var homeUrl= "${homeUrl}";
	var getSeviceSpecificData = "${getSeviceSpecificData}";
	
	/* google.load("elements", "1", {packages: "transliteration"}); */
	getULBListIDnDesc("${jsonULBListUrl}","ulbIdDesc");
	getServiceList("${jsonServiceListUrl}","setServiceId");
	
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
	
	/* Autocomplete */
	/* locationId */
	$("#locName").autocomplete({
		source:function(request, response){
			$.get('${pageContext.request.contextPath}/treecensus/rest/locationData', {searchString:request.term,ulbIdAuto:$('#ulbId').val()}, function(data){
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
			$("#locName").val(ui.item.label);
			$("#locId").val(ui.item.value);
			return false;
		},
		focus: function (event, ui) {
			this.value = ui.item.label;
			event.preventDefault();
		}	
	});
		
	/*apartmentId*/
	$("#aprtName").autocomplete({
			source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/apartmentData', {searchString:request.term,ulbIdAuto:$('#ulbId').val()}, function(data){
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
		$("#aprtName").val(ui.item.label);
		$("#aprtId").val(ui.item.value);
		return false;
	},
	focus: function (event, ui) {
		this.value = ui.item.label;
		event.preventDefault();
	}
		
			});
		
	/* wardId */
	$("#wardName").autocomplete({
		source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/wardData', {searchString:request.term,ulbIdAuto:$('#ulbId').val()}, function(data){
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
			$("#wardName").val(ui.item.label);
			$("#wardId").val(ui.item.value);
			return false;
		},
		focus: function (event, ui) {
			this.value = ui.item.label;
			event.preventDefault();
		}
	});
	
	/*zoneId*/
	$("#zoneName").autocomplete({
		source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/zoneData', {searchString:request.term,ulbIdAuto:$('#ulbId').val()}, function(data){
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
			$("#zoneName").val(ui.item.label);
			$("#zoneId").val(ui.item.value);
			return false;
		},
		focus: function (event, ui) {
			this.value = ui.item.label;
			event.preventDefault();
		}
		
		});
		
		/*roadId*/
		$("#roadName").autocomplete({
			source:function(request, response){
				$.get('${pageContext.request.contextPath}/treecensus/rest/roadData', {searchString:request.term,ulbIdAuto:$('#ulbId').val()}, function(data){
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
			$("#roadName").val(ui.item.label);
			$("#roadId").val(ui.item.value);
				return false;
		},
		focus: function (event, ui) {
			this.value = ui.item.label;
			event.preventDefault();
		}
	});
		/*LocalityId*/
		$("#localityName").autocomplete({
		source:function(request, response){
			$.get('${pageContext.request.contextPath}/treecensus/rest/localityData', {searchString:request.term,ulbIdAuto:$('#ulbId').val()}, function(data){
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
		$("#localityName").val(ui.item.label);
		$("#localityId").val(ui.item.value);
		return false;
	},
	focus: function (event, ui) {
		this.value = ui.item.label;
		event.preventDefault();
	}
		
	});
	/*End AutoCompleted*/
	</script>
	<script type="text/javascript" src="<c:url value="/maha-dma/js/surveyReqForm_validation.js" />"></script>
	<!-- <script type="text/javascript" src="<c:url value="/treecensus/js/surveyReqForm_validation.js" />"></script> -->
	<c:if test="${not empty message}" >
		<script>
			new PNotify({
					title : '${message}',
					styling : 'bootstrap3',
					type : 'success'
				});
			loadApplicationReqPage(47,"tree-survey-application","treecensus");
		</script>
	</c:if>
</body>
</html>
</compress:html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor"
	prefix="compress"%>
<compress:html>
<html>

<head>

<style type="text/css">
	#map_canvas {
		height: 30%;
		width: 30%;
	}
</style>
	
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../../common/header.jsp" />

</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<jsp:include page="../../common/leftMenu.jsp" />
			<jsp:include page="../../common/headerTop.jsp" />


			<!-- page content -->
			<spring:message code="label.please.enter" var="pls" />

			<div class="right_col" role="main">
				<div class="content-section">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
										<spring:message
											code="label.form.survey.dataentry.inspectiondataentryform" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>

									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form:form id="surveyForm" class="form-horizontal" enctype="multipart/form-data"
										modelAttribute="treeCensusDetail"
										action="/mahaulb/application/applicationsurveyDetailSave"
										method="POST">
										<div class="row">
											<div class="application-type col-md-12 col-sm-12 col-xs-12"
												style="display: none;">
												<div class="plant-type-rdo">
													<%-- <label class="radio-inline"><form:radiobutton name="plant-type" value="y" path="flagNewExisting"/><spring:message code="label.form.survey.inspector.newplant" /></label> --%>
													<label class="radio-inline"><form:radiobutton
															name="plant-type" value="n" path="flagNewExisting"
															checked="checked" />
														<spring:message
															code="label.form.survey.inspector.existplant" /></label>
												</div>
											</div>
											<div class="application-type col-md-12 ">
												<div class="col-md-12 ">
													<label class="app-type"><spring:message
															code="label.form.survey.inspector.surveydetails" /></label>
												</div>
												<div class="col-md-12">
													<div class="form-group">
													<label for="name" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.surveynumber" /> : </label>
														<div id="survey" class="col-md-4 col-sm-12">
															<form:input id="surveyNumber" path="surveyNumber"
																maxlength="5" cssClass="form-control"
																onkeypress="return surveyNumberHide(event)" />
														</div>
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.surveydate" />: <!-- <span
															class="required">*</span> --></label>

														<div class='input-group date col-md-4 col-sm-12 col-xs-12'
															id='datetimepicker1'>
															<form:input  cssClass="form-control" path="surveyDate"
																 
																  />
															<span class="input-group-addon"> <span
																class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
														
														
													</div>
													<div class="form-group">
														
														<label for="name" class="col-md-2 col-sm-12"> <spring:message
																code="label.form.survey.inspector.treeidentificationnumber" />
															:
														</label>
														<div id="treeIdentification" class="col-md-4 col-sm-12">
															<form:input id="treeIdentificationNo"
																path="treeIdentificationNo" maxlength="6"
																cssClass="form-control"  
																onkeypress="return treeIdentificationNumberHide(event)" />
														</div>
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.treesciname" />: <!-- <span
															class="required">*</span> --></label>
														<div id="scientific" class="col-md-4 col-sm-12 col-xs-12">
															<form:input id="scientificListId" path=""
																cssClass="form-control" name="firstName"
																onkeypress="scientificNameHide()" />
															<form:hidden id="scientificId"
																path="tmTreeNameMaster.treenameId"
																cssClass="form-control" />
														</div>
													</div>
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.treevernacularname" />:
															<!-- <span class="required">*</span> --></label>
														<div id="verna" class="col-md-4 col-sm-12 col-xs-12">
															<form:input id="vernaListId" path=""
																cssClass="form-control"  
																 onkeypress="vernaNameHide()" />
															<form:hidden id="vernaId" path="" cssClass="form-control" />
														</div>
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.treespecies" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12 col-xs-12">
															<form:input id="treespeciesListId" path=""
																cssClass="form-control" />
															<form:hidden id="treespeciesId" path="treemasIdTsm"
																cssClass="form-control" />
														</div>
													</div>
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.treecommonname" />: <!-- <span
															class="required">*</span> --></label>
														<div id="common" class="col-md-4 col-sm-12 col-xs-12">
															<form:input id="treeCommonListId" path=""
																cssClass="form-control"  
																 onkeypress="commonNameHide()" />
															<form:hidden id="treeCommonId" path=""
																cssClass="form-control" />
														</div>
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.treefamily" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
															<form:input id="treeFamilyListId" path=""
																cssClass="form-control" />
															<form:hidden id="treeFamilyId" path=""
																cssClass="form-control" />
														</div>
														
													</div>

													<!-- I have Added -->

													

													<!-- I have Added -->

													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.color" />:<!--  <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12 col-xs-12">
															<form:input id="colorMasterListId" path=""
																cssClass="form-control" />
															<form:hidden id="colorMasterId" path="treemasIdCom"
																cssClass="form-control" />
														</div>
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.fruitname" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
															<form:input id="fruitnameListId" path=""
																cssClass="form-control" />
															<form:hidden id="fruitnameId" path="treemasIdFrm"
																cssClass="form-control" />
														</div>
													</div>

													<div class="form-group">
													<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.barkshape" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12 col-xs-12">
															<form:input id="barkListId" path=""
																cssClass="form-control" />
															<form:hidden id="barkId" path="treemasIdBsm"
																cssClass="form-control" />
														</div>
														
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.shape" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
															<form:input id="shapeListId" path=""
																cssClass="form-control" />
															<form:hidden id="shapeId" path="treemasIdSma"
																cssClass="form-control" />
														</div>
													</div>
													
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.treestatus" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
															<form:input id="treestatusListId" path=""
																cssClass="form-control" />
															<form:hidden id="treestatusId" path="treemasIdTst"
																cssClass="form-control" />
														</div>
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.odour" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
															<form:input id="odourListId" path=""
																cssClass="form-control" />
															<form:hidden id="odourId" path="treemasIdOdm"
																cssClass="form-control" />
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 col-sm-12 col-xs-12">Flower Name :</label>
														<div class="col-md-4 col-sm-12">
															<form:input id="flowernameListId" path=""
																cssClass="form-control" />
															<form:hidden id="flowernameId" path="treemasIdFnm"
																cssClass="form-control" />
														</div>
														
														<label class="col-md-2 col-sm-12 col-xs-12">Leaf Shape :</label>
														<div class="col-md-4 col-sm-12">
															<form:input id="leafshapeListId" path=""
																cssClass="form-control" />
															<form:hidden id="leafId" path="treemasIdLsm"
																cssClass="form-control" />
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 col-sm-12 col-xs-12">Leaf Colour :</label>
														<div class="col-md-4 col-sm-12">
															<form:input id="leafcolourListId" path=""
																cssClass="form-control" />
															<form:hidden id="leafcolourId" path="treemasIdLcm"
																cssClass="form-control" />
														</div>
														
														<label class="col-md-2 col-sm-12 col-xs-12">Texture :</label>
														<div class="col-md-4 col-sm-12">
															<form:input id="textureListId" path=""
																cssClass="form-control" />
															<form:hidden id="textureId" path="treemasIdTms"
																cssClass="form-control" />
														</div>
													</div>
													<div class="form-group">
														<label for="name" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.girthheight" /> : </label>
														<div id="breastHeight" class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" maxlength="3"
																id="breastheight" path="girthAtBreastHieght"
																onkeypress="return breastheightHide(event)" />
														</div>
														<label for="name" class="col-md-2 col-sm-12"> <spring:message
																code="label.form.survey.inspector.height" /> :
														</label>
														<div id="height" class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" maxlength="5"
																id="gheight" path="hieght"  
																onkeypress="return heightHide(event)"
																onkeyup="heightKeyUp(event)" />
														</div>
													</div>
													<div class="form-group">
														<label for="name" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.approxage" />: </label>
														<div id="age" class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" maxlength="3" id="approxage"
																path="approxAge"  
																onkeypress="return ageHide(event)" />
														</div>
														<label for="name" class="col-md-2 col-sm-12"> <spring:message
																code="label.form.survey.inspector.canopywidth" /> :
														</label>
														<div id="width" class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" maxlength="5" id="cwidth"
																path="canopyWidth"  
																onkeypress="return conopyWidthHide(event)"
																onkeyup="conopyWidthKeyUp(event)" />
														</div>
													</div>
													
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.msebctc" />: <!-- <span
															class="required">*</span> --></label>
														<div id="ctcNo" class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" id="msebCtcNo"
																path="msebCtcNo"  
																onkeypress="return msebCtcNoHide(event)" />
														</div>
														
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.size" />: <!-- <span
															class="required">*</span> --></label>
														<div id="size" class="col-md-4 col-sm-12">
															<form:input id="sizeId" path="sizeValue" maxlength="2"
																cssClass="form-control"  
																 onkeypress="return sizeHide(event)" />
														</div>
													</div>
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.location" />: <!-- <span
															class="required">*</span> --></label>
														<div id="location" class="col-md-4 col-sm-12">
															<form:input id="locationId" path="location" maxlength="50"
																cssClass="form-control"   
																onkeypress="return locationHide(event)"/>
														</div>
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.apartment" />: <!-- <span
															class="required">*</span> --></label>
														<div id="apartment" class="col-md-4 col-sm-12">
															<form:input id="apartmentId" path="apartmentComplex"
																cssClass="form-control"   
																onkeypress="apartmentHide()"/>
														</div>
													</div>
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.road" />: <!-- <span
															class="required">*</span> --></label>
														<div id="road" class="col-md-4 col-sm-12">
															<form:input id="roadId" path="road"
																cssClass="form-control"  
																onkeypress="roadHide()" />
														</div>
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.building" />:<!--  <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
															<form:input id="buildingId" path="building"
																cssClass="form-control" />
														</div>
													</div>
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.locality" />: <!-- <span
															class="required">*</span> --></label>
														<div id="locality" class="col-md-4 col-sm-12">
															<form:input id="localityId" maxlength="30" path="locality"
																cssClass="form-control"   
																onblur="localityShow()"
																onkeypress="localityHide()"/>
														</div>
														<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																	code="label.form.survey.inspector.gmap" />: <!-- <span
																class="required">*</span> --></label>
															<div id="map_canvas" class="col-md-4 col-sm-4">
																<!-- <iframe
																	src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3772.3582223812678!2d72.82513676446662!3d19.0039302871293!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7ce9336543a23%3A0xe6d1a843d2e064c!2sKamala+Mills+Compound%2C+Lower+Parel%2C+Mumbai%2C+Maharashtra+400013!5e0!3m2!1sen!2sin!4v1504600474556"
																	width="300" height="90" frameborder="0"
																	style="border: 0" allowfullscreen></iframe> -->
															</div>
															<div id="locationinfo" style="display: none;"></div>
													</div>
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.long" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" id="lon"
																path="longitude"   />
														</div>
														
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.lat" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" id="lat"
																path="latitude"   />
														</div>
													</div>
													
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12">Ownership of land in tree :</label>
														<div class="col-md-4 col-sm-12">
															<form:select class="form-control ownerLand" path="lookupDetIdOlt">
																<option value="0">--Select--</option>
															</form:select>
														</div>
													</div>
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																code="label.form.survey.inspector.upldimg" />: <!-- <span
															class="required">*</span> --></label>
														<div class="col-md-4 col-sm-12">
														<form:input type="file" cssClass="file" id="input-1"
																path="file"   />
															<!-- <input id="input-1" type="file" class="file"> -->
														</div>
														
														<label for="name" class="col-md-2 col-sm-2"><spring:message
																	code="label.form.survey.inspector.remark" />: <!-- <span
																class="required">*</span> --></label>
															<div class="col-md-4 col-sm-4">
																<form:textarea class="form-control"
																	path="observationRemarks" rows="4" id="remark"
																	 ></form:textarea>
															</div>
													</div>
												</div>
											</div>
										</div>

										<div class="row">
											<ul class="nav navbar-right panel_toolbox">
												<li>
													<button type="button" id="deleteBtn" class="btn btn-danger"
													onclick="location.reload(true)">
														<spring:message code="label.btn.delete" />
													</button>
												</li>
												<li><input type="submit" id="addBtn" value="Add"
													class="btn btn-success"></li>
											</ul>

										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>

			<!-- /page content -->
			<!-- Based on Tree Status (Fallen / Illegal destroyed) below screen will open -->
			<div class="modal fade fail-popup" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<form id="owner-details-form">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">
									<spring:message
										code="label.modal.survey.dataentry.detailofdataentry" />
								</h4>
							</div>
							<div class="modal-body">

								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-2 col-sm-12 col-xs-12" for="ex3"><spring:message
												code="label.modal.survey.dataentry.adharcard" /></label>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<input type="text" class=" form-control" id="owner-adharcard"
												oninput="setCustomValidity('')"
												oninvalid="this.setCustomValidity('${pls}')" />
										</div>
									</div>

									<div class="form-group col-md-12">
										<label class="col-md-2 col-sm-12 col-xs-12" for="ex3"><spring:message
												code="label.modal.survey.dataentry.name" /></label>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<input type="text" class=" form-control" id="owner-name"
												oninput="setCustomValidity('')"
												oninvalid="this.setCustomValidity('${pls}')" />
										</div>
									</div>

									<div class="form-group col-md-12">
										<label class="col-md-2 col-sm-12 col-xs-12" for="ex3"><spring:message
												code="label.modal.survey.dataentry.address" /></label>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<textarea class="form-control" id="owner-address" rows="3">
											</textarea>
										</div>
									</div>


								</div>


							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">
									<spring:message code="label.btn.close" />
								</button>
								<button type="button" class="btn btn-primary">
									<spring:message code="label.btn.save" />
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>



			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../../common/jsFooter.jsp" />


	<c:url var='lookupDetFile' value='/application/lookUpDetailsFile' />
	<c:url var="getTreeNameDetailUrl" value="/master/treeMasDet" />
	<c:url var='getOwnershipOfLand' value='/treecensus/getEcologicalData' />

<script src="<c:url value="/treecensus/js/tree-survey-dataentry.js" />"></script>
	
	<script>
	
	var lookupDetFile = "${lookupDetFile}";
	var notification = '<spring:message code="label.common.notification" />';

	var lookupDetId = [];
	var lookupDetCode = [];
	$(document).ready(function() {
		//var lookupDetFile = "${lookupDetFile}";
		loadDataTreeSurv(lookupDetFile);
		getOwnershipOfLand();
		});


		</script>
	

	<c:if test="${msgtype != null}">
		<script>
		
		showNotify("${msgtype},${message}");
		</script>
	</c:if>

	
	<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=${key}">
	</script>
	
	<script src="<c:url value="/js/google-map.js" />"></script>


<script>

//For Autocomplete


var treeNameData;

 $(document).ready(function () {
		
	 
        $('#app-table').click(function () {
        	$('.application-table').toggle("slow", function(){});
        });
        
        $("#barkListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'BSM'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
                $("#barkListId").val(ui.item.label);
                $("#barkId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#treespeciesListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'TSM'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
                $("#treespeciesListId").val(ui.item.label);
                $("#treespeciesId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#textureListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'TMS'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
                $("#textureListId").val(ui.item.label);
                $("#textureId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#flowernameListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'FNM'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
                $("#flowernameListId").val(ui.item.label);
                $("#flowernameId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#fruitnameListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'FRM'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
                $("#fruitnameListId").val(ui.item.label);
                $("#fruitnameId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#shapeListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'SMA'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
                $("#shapeListId").val(ui.item.label);
                $("#shapeId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#colorMasterListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'COM'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
            $("#colorMasterListId").val(ui.item.label);
                $("#colorMasterId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#treestatusListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'TST'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
                $("#treestatusListId").val(ui.item.label);
                $("#treestatusId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#odourListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'ODM'}, function(data){
            		response($.map(data, function(key, value) {
            		    //console.log(key);
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
                $("#odourListId").val(ui.item.label);
                $("#odourId").val(ui.item.value);
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        
        $("#scientificListId").autocomplete({
            source:function(request, response){
            	console.log(request.term);
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl', {treeNameType:'scientific', searchString:request.term}, function(data){
            		treeNameData = [];
            		treeNameData = data;
            		if(treeNameData.length == 0){
            			$("#scientificListId").val("");
    	                $("#scientificId").val("");
    	                
    	                $("#vernaListId").val("");
    	                $("#vernaId").val("");
    	                
    	                $("#treeCommonListId").val("");
    	                $("#treeCommonId").val("");
    	                
    	                $("#treeFamilyListId").val("");
    	                $("#treeFamilyId").val("");
            		}
            		response($.map(data, function(element, index) {
            		    	return {
                                label: element.treeSciNameEn,
                                value: element.treenameId,
                                idx:index
                            };
                    }));
            	})
            },
            select: function(event, ui) {
                event.preventDefault();
                $("#scientificListId").val(ui.item.label);
                $("#scientificId").val(ui.item.value);
                
                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn+"/"+treeNameData[ui.item.idx].treeSciNameRg);
                $("#scientificId").val(ui.item.value);
                
                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn+"/"+treeNameData[ui.item.idx].treeVerNameRg);
                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn+"/"+treeNameData[ui.item.idx].treeComNameRg);
                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn+"/"+treeNameData[ui.item.idx].treeFamNameRg);
                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treespeciesId").val(treeNameData[ui.item.idx].treemasIdTsm);
                
                $("#barkId").val(treeNameData[ui.item.idx].treemasIdBsm);
                
                $("#colorMasterId").val(treeNameData[ui.item.idx].treemasIdCom);
                
                $("#fruitnameId").val(treeNameData[ui.item.idx].treemasIdFrm);
                
                $("#shapeId").val(treeNameData[ui.item.idx].treemasIdSma);
                
                $("#treestatusId").val(treeNameData[ui.item.idx].treemasIdTst);
                
                $("#odourId").val(treeNameData[ui.item.idx].treemasIdOdm);
                
                $("#flowernameId").val(treeNameData[ui.item.idx].treemasIdFnm);
                
                $("#leafId").val(treeNameData[ui.item.idx].treemasIdLsm);
                
                $("#leafcolourId").val(treeNameData[ui.item.idx].treemasIdLcm);
                
                $("#textureId").val(treeNameData[ui.item.idx].treemasIdTms);
                
                getNameOfField(treeNameData[ui.item.idx].treenameId);
                
                
                
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        }); 
        
        $("#vernaListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl', {treeNameType:'vernacular', searchString:request.term}, function(data){
            		treeNameData = [];
            		treeNameData = data;
            		if(treeNameData.length == 0){
            			$("#scientificListId").val("");
    	                $("#scientificId").val("");
    	                
    	                $("#vernaListId").val("");
    	                $("#vernaId").val("");
    	                
    	                $("#treeCommonListId").val("");
    	                $("#treeCommonId").val("");
    	                
    	                $("#treeFamilyListId").val("");
    	                $("#treeFamilyId").val("");
            		}
            		response($.map(data, function(element, index) {
            		    	return {
                                label: element.treeVerNameEn,
                                value: element.treenameId,
                                idx:index
                            };
                    }));
            	})
            },
            select: function(event, ui) {
                event.preventDefault();
                
                $("#vernaListId").val(ui.item.label);
                $("#vernaId").val(ui.item.value);
                
                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn+"/"+treeNameData[ui.item.idx].treeSciNameRg);
                $("#scientificId").val(ui.item.value);
                
                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn+"/"+treeNameData[ui.item.idx].treeVerNameRg);
                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn+"/"+treeNameData[ui.item.idx].treeComNameRg);
                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn+"/"+treeNameData[ui.item.idx].treeFamNameRg);
                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
                
				$("#treespeciesId").val(treeNameData[ui.item.idx].treemasIdTsm);
                
                $("#barkId").val(treeNameData[ui.item.idx].treemasIdBsm);
                
                $("#colorMasterId").val(treeNameData[ui.item.idx].treemasIdCom);
                
                $("#fruitnameId").val(treeNameData[ui.item.idx].treemasIdFrm);
                
                $("#shapeId").val(treeNameData[ui.item.idx].treemasIdSma);
                
                $("#treestatusId").val(treeNameData[ui.item.idx].treemasIdTst);
                
                $("#odourId").val(treeNameData[ui.item.idx].treemasIdOdm);
                
				$("#flowernameId").val(treeNameData[ui.item.idx].treemasIdFnm);
                
                $("#leafId").val(treeNameData[ui.item.idx].treemasIdLsm);
                
                $("#leafcolourId").val(treeNameData[ui.item.idx].treemasIdLcm);
                
                $("#textureId").val(treeNameData[ui.item.idx].treemasIdTms);
                
                getNameOfField(treeNameData[ui.item.idx].treenameId);
                
                return false;
            },
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#treeCommonListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl', {treeNameType:'treecommon', searchString:request.term}, function(data){
            		treeNameData = [];
            		treeNameData = data;
            		if(treeNameData.length == 0){
            			$("#scientificListId").val("");
    	                $("#scientificId").val("");
    	                
    	                $("#vernaListId").val("");
    	                $("#vernaId").val("");
    	                
    	                $("#treeCommonListId").val("");
    	                $("#treeCommonId").val("");
    	                
    	                $("#treeFamilyListId").val("");
    	                $("#treeFamilyId").val("");
            		}
            		response($.map(data, function(element, index) {
            		    	return {
                                label: element.treeComNameEn,
                                value: element.treenameId,
                                idx:index
                            };
                    }));
            	})
            },
            select: function(event, ui) {
                event.preventDefault();
                
                $("#treeCommonListId").val(ui.item.label);
                $("#treeCommonId").val(ui.item.value);
                
                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn+"/"+treeNameData[ui.item.idx].treeSciNameRg);
                $("#scientificId").val(ui.item.value);
                
                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn+"/"+treeNameData[ui.item.idx].treeVerNameRg);
                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn+"/"+treeNameData[ui.item.idx].treeComNameRg);
                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn+"/"+treeNameData[ui.item.idx].treeFamNameRg);
                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
                
				$("#treespeciesId").val(treeNameData[ui.item.idx].treemasIdTsm);
                
                $("#barkId").val(treeNameData[ui.item.idx].treemasIdBsm);
                
                $("#colorMasterId").val(treeNameData[ui.item.idx].treemasIdCom);
                
                $("#fruitnameId").val(treeNameData[ui.item.idx].treemasIdFrm);
                
                $("#shapeId").val(treeNameData[ui.item.idx].treemasIdSma);
                
                $("#treestatusId").val(treeNameData[ui.item.idx].treemasIdTst);
                
                $("#odourId").val(treeNameData[ui.item.idx].treemasIdOdm);
                
				$("#flowernameId").val(treeNameData[ui.item.idx].treemasIdFnm);
                
                $("#leafId").val(treeNameData[ui.item.idx].treemasIdLsm);
                
                $("#leafcolourId").val(treeNameData[ui.item.idx].treemasIdLcm);
                
                $("#textureId").val(treeNameData[ui.item.idx].treemasIdTms);
                
                getNameOfField(treeNameData[ui.item.idx].treenameId);
                
                return false;
            } ,
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        $("#treeFamilyListId").autocomplete({
            source:function(request, response){
            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl', {treeNameType:'treefamily', searchString:request.term}, function(data){
            		treeNameData = [];
            		treeNameData = data;
            		if(treeNameData.length == 0){
            			$("#scientificListId").val("");
    	                $("#scientificId").val("");
    	                
    	                $("#vernaListId").val("");
    	                $("#vernaId").val("");
    	                
    	                $("#treeCommonListId").val("");
    	                $("#treeCommonId").val("");
    	                
    	                $("#treeFamilyListId").val("");
    	                $("#treeFamilyId").val("");
            		}
            		response($.map(data, function(element, index) {
            		    	return {
                                label: element.treeFamNameEn,
                                value: element.treenameId,
                                idx:index
                            };
                    }));
            	})
            },
            select: function(event, ui) {
                event.preventDefault();
                
                $("#treeFamilyListId").val(ui.item.label);
                $("#treeFamilyId").val(ui.item.value);
                
                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn+"/"+treeNameData[ui.item.idx].treeSciNameRg);
                $("#scientificId").val(ui.item.value);
                
                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn+"/"+treeNameData[ui.item.idx].treeVerNameRg);
                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn+"/"+treeNameData[ui.item.idx].treeComNameRg);
                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
                
                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn+"/"+treeNameData[ui.item.idx].treeFamNameRg);
                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
                
				$("#treespeciesId").val(treeNameData[ui.item.idx].treemasIdTsm);
                
                $("#barkId").val(treeNameData[ui.item.idx].treemasIdBsm);
                
                $("#colorMasterId").val(treeNameData[ui.item.idx].treemasIdCom);
                
                $("#fruitnameId").val(treeNameData[ui.item.idx].treemasIdFrm);
                
                $("#shapeId").val(treeNameData[ui.item.idx].treemasIdSma);
                
                $("#treestatusId").val(treeNameData[ui.item.idx].treemasIdTst);
                
                $("#odourId").val(treeNameData[ui.item.idx].treemasIdOdm);
                
				$("#flowernameId").val(treeNameData[ui.item.idx].treemasIdFnm);
                
                $("#leafId").val(treeNameData[ui.item.idx].treemasIdLsm);
                
                $("#leafcolourId").val(treeNameData[ui.item.idx].treemasIdLcm);
                
                $("#textureId").val(treeNameData[ui.item.idx].treemasIdTms);
                
                getNameOfField(treeNameData[ui.item.idx].treenameId);
                
                return false;
            } ,
            focus: function (event, ui) {
                this.value = ui.item.label;	                 
                event.preventDefault();
            }
        });
        
        
       
    });

//For Autocomplete


function getNameOfField(id){
	var getTreeNameDetail = "${getTreeNameDetailUrl}";
	
	$.ajax({
	      type: "GET",
	      url: getTreeNameDetail,
	      contentType : "application/json",
	      data : "treeId="+id,
	      async: false,
	      headers: {
	          "Authorization": "Basic " + btoa("ashok:pass") 
	      },
	      success: function (data){
	    	  
	    	$.each(data.resultData, function (i, results) {
	    		
	    		for(var i = 0; i < lookupDetId.length; i++){
	    			
	    				if (lookupDetCode[i] == "FNM" && lookupDetId[i] == results[1]) {
		    	    		$('#flowernameListId').val(results[2]);
		    	    		//$('#flowernameId').val(results[0]);
	    				}
	    				
	    				if (lookupDetCode[i] == "COM" && lookupDetId[i] == results[1]) {
		    	    		$('#colorMasterListId').val(results[2]);
		    	    		//$('#colorMasterId').val(results[0]);
	 					}
	    				
	    				if (lookupDetCode[i] == "FRM" && lookupDetId[i] == results[1]) {
		    	    		$('#fruitnameListId').val(results[2]);
		    	    		//$('#fruitnameId').val(results[0]);
	 					}
	    				
	    				if (lookupDetCode[i] == "SMA" && lookupDetId[i] == results[1]){
		    	    		$('#shapeListId').val(results[2]);
		    	    		//$('#shapeId').val(results[0]);
	 					}
	    				
	    				if (lookupDetCode[i] == "ODM" && lookupDetId[i] == results[1]) {
		    	    		$('#odourListId').val(results[2]);
		    	    		//$('#odourId').val(results[0]);
	 					}
	    				
	    				if (lookupDetCode[i] == "TSM" && lookupDetId[i] == results[1]) {
							$('#treespeciesListId').val(results[2]);
							//$('#treespeciesId').val(results[0]);
						}
	    				
	    				if (lookupDetCode[i] == "BSM" && lookupDetId[i] == results[1]) {
							$('#barkListId').val(results[2]);
							//$('#barkId').val(results[0]);
						}
	    				
	    				if (lookupDetCode[i] == "LSM" && lookupDetId[i] == results[1]) {
							$('#leafshapeListId').val(results[2]);
							//$('#leafId').val(results[0]);
						}
	    				
	    				if (lookupDetCode[i] == "LCM" && lookupDetId[i] == results[1]) {
							$('#leafcolourListId').val(results[2]);
							//$('#leafcolourId').val(results[0]);
						}
	    				
	    				if (lookupDetCode[i] == "TMS" && lookupDetId[i] == results[1]) {
							$('#textureListId').val(results[2]);
							//$('#textureId').val(results[0]);
						}
	    				
	    				if (lookupDetCode[i] == "TST" && lookupDetId[i] == results[1]) {
		    	    		$('#treestatusListId').val(results[2]);
		    	    		//$('#flowernameId').val(results[0]);
	    				}
	    		}
	    		
	    	});
	    	  
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
	      })
	
}


</script>

<script type="text/javascript">

function getOwnershipOfLand(){
	
	var getOwnershipOfLand = "${getOwnershipOfLand}"; 
	//var obj = {ulbId : $('#ulbId').val()}
	
	$.ajax({
     type: "GET",
     url: getOwnershipOfLand,
     contentType : "application/json",
     dataType : 'json',
     //data : JSON.stringify(obj),
     async: false,
      headers: {
          "Authorization": "Basic " + btoa("ashok:pass") 
      },
      success: function (data){
    	  
    	
    	$.each(data.resultData, function (i, result) {
    		$('.ownerLand').append($("<option></option>").val(result.lookupDetId).html(result.lookupDetName));
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

</body>
</html>
</compress:html>
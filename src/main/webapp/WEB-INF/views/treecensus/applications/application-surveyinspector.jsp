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
<body class="nav-md">
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
										<spring:message code="label.form.survey.inspector.surveyapplication" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<input type="hidden" id="srnId1" value="${srnId}">
									<input type="hidden" id="fName1" value="${fName}">
									<input type="hidden" id="mName1" value="${mName}">
									<input type="hidden" id="lName1" value="${lName}">
									<input type="hidden" id="applicantMobile1" value="${applicantMobile}">
									<input type="hidden" id="applicantEmail1" value="${applicantEmail}">
									<input type="hidden" id="applicantUid1" value="${applicantUid}">
										<input type="hidden" id="applicantAddress1" value="${applicantAddress}">
									<input type="hidden" id="organisationName1" value="${organisationName}">
									<input type="hidden" id="organisationAddress1" value="${organisationAddress}">
										<input type="hidden" id="location1" value="${location}">
									<input type="hidden" id="apartmentComplex1" value="${apartmentComplex}">
									<input type="hidden" id="road1" value="${road}">
										<input type="hidden" id="locality1" value="${locality}">
									<input type="hidden" id="longitude1" value="${longitude}">
									<input type="hidden" id="latitude1" value="${latitude}">
									<input type="hidden" id="ward" value="${ward}">
									<input type="hidden" id="zone" value="${zone}">
									
								<%-- 	<input type="hidden" id="appNo" value="${appNo}">
									<input type="hidden" id="active" value="${active}"> --%>
									<form:form id="demo-form2" modelAttribute="treeCensusDetail" action="/mahaulb/treecensus/applicationsurveyinspectorSave" method="POST">
										<div class="row">
										 	<div class="application-type col-md-12" id="viewRequest" style="display: none;">
							            		 <div class="col-md-12">
							            		 	<!-- <label class="app-type"><spring:message code="label.form.survey.inspector.viewsurveyapplication" /></label>  -->
							            		 </div>
						            		 	<div class="col-md-12">
						            		 		 <a data-toggle="modal" data-target="#surveyinspector" class="btn btn-warning" id="app-table"><i class="icon-plus"></i><spring:message code="label.form.survey.inspector.viewsurveyapplication" /></a>					            		 		
					            		 			
												</div>
													
											</div> 
											
											
											<div class="application-type col-md-12">
							            		 <div class="col-md-12">
							            		 	<label class="app-type"><spring:message code="label.form.survey.inspector.surveydetails" /></label>
							            		 </div>
						            		 	<div class="col-md-12">
						            		 		<div class="form-group" style="text-align:center">
						            		 			<label class="radio-inline">
													      <input type="radio" name="optradio" value="1" onclick="showHide(1)" checked>Existing
													    </label>
													    <label class="radio-inline">
													      <input type="radio" name="optradio" value="2" onclick="showHide(2)">New
													    </label>
						            		 		</div>
						            		 		 <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Reason for Survey: </label>
							            		 		 <div class="col-md-4 col-sm-12 col-xs-12" >
							            		 		 	
							            		 		 	<form:select class="form-control rfoSur" path="lookupDetIdRsu">
							            		 		 		<option value=0>--Select--</option>
							            		 		 	</form:select>
							            		 		 </div>
							            		 		 
							            		 		 <label id="tshowlab" for="cal" class="col-md-2 col-sm-12">Tree Identification No.: </label>
							            		 		 <div class="col-md-4 col-sm-12 col-xs-12">
							            		 		 	<form:input id="treeNo" path="treeIdentificationNo" type="text" class="form-control" />
							            		 		 </div>
							            		 	</div>
							            		 	<div class="form-group">
							            		 		 <label id="serNoLab" for="cal" class="col-md-2 col-sm-12" style="display:block;">Survey No.: </label>
							            		 		 <div class="col-md-4 col-sm-12 col-xs-12" >
							            		 		 	
							            		 		 	<form:input id="serNo" path="surveyNumber" type="text" class="form-control" style="display:block;"/>
							            		 		 </div>
							            		 		 
							            		 		 <label id="refNolab" for="cal" class="col-md-2 col-sm-12" style="display:none;">Reference No.: </label>
							            		 		 <div class="col-md-4 col-sm-12 col-xs-12">
							            		 		 	<form:input id="refNo" path="seqNO" type="text" class="form-control" style="display:none;"/>
							            		 		 </div>
							            		 	</div>
						            		 		<div class="form-group">
							            		 		<label for="cal" class="col-md-2 col-sm-12"><spring:message code="label.form.survey.inspector.surveydate" />: <span class="astric"></span></label>
							     	            
										                <div class='input-group date col-md-4 col-sm-12' id='datetimepicker1'>
										                    <form:input cssClass="form-control" path="surveyDate"/>
										                    <span class="input-group-addon">
										                        <span class="glyphicon glyphicon-calendar"></span>
										                    </span>
										                </div>
											           
												        <label for="cal" class="col-md-2 col-sm-12">Tree Scientific Name: </label>
							            		 		<div class="col-md-4 col-sm-12">
							            		 		
							            		 		<%-- <form:select path="tmTreeNameMaster.treenameId" cssClass="form-control" id="scientificListId">
							            		 			<form:option value="-1">--------------------select----------------------------------</form:option>
							            		 			<form:options items="${treeScientificNameDtlList}"/>
							            		 		</form:select>	 --%>	
							            		 			 <form:input id="scientificListId" path="" cssClass="form-control"/>
														     <form:hidden id="scientificId" path="tmTreeNameMaster.treenameId" cssClass="form-control"/>												   
														 </div>
											        </div>
											        <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Tree Vernacular Name: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <%-- <form:select path="" cssClass="form-control" id="vernaListId">
							            		 				<form:option value="-1">--------------------select----------------------------------</form:option>
							            		 			</form:select> --%>
							            		 			 <form:input id="vernaListId" path="" cssClass="form-control"/>
														     <form:hidden id="vernaId" path="" cssClass="form-control"/>
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Tree Species: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="treespeciesListId" path="" cssClass="form-control"/>
														    <form:hidden id="treespeciesId" path="treemasIdTsm" cssClass="form-control"/>
														 </div>
											        </div>
											        <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Tree Common Name: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <%-- <form:select path="" cssClass="form-control" id="treeCommonListId">
							            		 				<form:option value="-1">--------------------select----------------------------------</form:option>
							            		 			</form:select> --%>
							            		 			<form:input id="treeCommonListId" path="" cssClass="form-control"/>
														     <form:hidden id="treeCommonId" path="" cssClass="form-control"/>
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Bark Shape: </label>
							            		 		<div class="col-md-4 col-sm-12">
														     <form:input id="barkListId" path="" cssClass="form-control"/>
														     <form:hidden id="barkId" path="treemasIdBsm" cssClass="form-control"/>
														 </div>	 
											        </div>
											        
											        <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Texture: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="textureListId" path="" cssClass="form-control"/>
														    <form:hidden id="textureId" path="treemasIdTms" cssClass="form-control"/>
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Flower Name: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="flowernameListId" path="" cssClass="form-control"/>
														    <form:hidden id="flowernameId" path="treemasIdFnm" cssClass="form-control"/>
														 </div>
											        </div>
											        
											        <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Colour: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="colorMasterListId" path="" cssClass="form-control"/>
														    <form:hidden id="colorMasterId" path="treemasIdCom" cssClass="form-control"/>
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Fruit Name: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="fruitnameListId" path="" cssClass="form-control"/>
														    <form:hidden id="fruitnameId" path="treemasIdFrm" cssClass="form-control"/>
														 </div>
											        </div>
											        
											        <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Size: </label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="sizeId" path="sizeValue" cssClass="form-control"/>
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Shape: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="shapeListId" path="" cssClass="form-control"/>
														    <form:hidden id="shapeId" path="treemasIdSma" cssClass="form-control"/>
														 </div>
											        </div>
											        
											        <div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-12">Girth at Breast Height :	</label>
													  	<div class="col-md-4 col-sm-12">
													    <form:input  cssClass=" form-control" id="breastheight"	path="girthAtBreastHieght"/>
														</div>	
														<label for="name" class="col-md-2 col-sm-12"> Height :	</label>
													  	<div class="col-md-4 col-sm-12">
													    <form:input cssClass=" form-control" id="gheight" path="hieght"/>
														</div>
												   </div>
											        <div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-12">Approx Age:	</label>
													  	<div class="col-md-4 col-sm-12">
													    <form:input cssClass=" form-control" id="approxage" path="approxAge"/>
														</div>	
														<label for="name" class="col-md-2 col-sm-12"> Canopy Width :	</label>
													  	<div class="col-md-4 col-sm-12">
													    <form:input cssClass=" form-control" id="cwidth" path="canopyWidth" />
														</div>
												   </div>
												   <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Tree Status: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="treestatusListId" path="" cssClass="form-control"/>
														    <form:hidden id="treestatusId" path="treemasIdTst" cssClass="form-control"/>
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Odour: </label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="odourListId" path="" cssClass="form-control"/>
														   <form:hidden id="odourId" path="treemasIdOdm" cssClass="form-control"/>
														</div>
											        </div>
											         <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">MSEB / CTC No.: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input cssClass=" form-control" id="mseb" path="msebCtcNo" />
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Tree Family: </label>
							            		 		<div class="col-md-4 col-sm-12">
														   <%-- <form:select path="" cssClass="form-control" id="treeFamilyListId">
							            		 				<form:option value="-1">--------------------select----------------------------------</form:option>
							            		 			</form:select> --%>
							            		 			<form:input id="treeFamilyListId" path="" cssClass="form-control"/>
														   <form:hidden id="treeFamilyId" path="" cssClass="form-control"/>
														 </div>
											        </div>
											        <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Location: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="locationId" path="location" cssClass="form-control"/>
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Apartment/Complex: </label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="apartmentId" path="apartmentComplex" cssClass="form-control"/>
														 </div>
											        </div>
											        <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Road: </label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="roadId" path="road" cssClass="form-control"/>
														 </div>
												        <label for="cal" class="col-md-2 col-sm-12">Building: </label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="buildingId" path="building" cssClass="form-control"/>
														 </div>
											        </div>
											        <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Locality: </label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="localityId" path="locality" cssClass="form-control"/>
														 </div>
												        
												         <label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message
																	code="label.form.survey.inspector.gmap" />: </label>
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
																code="label.form.survey.inspector.long" />: </label>
														<div class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" id="lon"
																path="longitude" />
														</div>
														
														<label for="cal" class="col-md-2 col-sm-12"><spring:message
																code="label.form.survey.inspector.lat" />: </label>
														<div class="col-md-4 col-sm-12">
															<form:input cssClass=" form-control" id="lat"
																path="latitude"  />
														</div>
													</div>
													<div class="form-group">
														<label for="cal" class="col-md-2 col-sm-12 wardDataLabel" style="display:none;">Ward: </label>
														<div class="col-md-4 col-sm-12">
															<form:select class="form-control wardData" style="display:none;" path="lookupDetHierIdAwz1">
																<option value="0">--Select--</option>
															</form:select>
														</div>
														
														<label for="cal" class="col-md-2 col-sm-12 zoneDataLabel" style="display:none;">Zone: </label>
														<div class="col-md-4 col-sm-12">
															<form:select class="form-control zoneData" style="display:none;" path="lookupDetHierIdAwz2">
																<option value="0">--Select--</option>
															</form:select>
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
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Upload Image :  </label>
							            		 		<div class="col-md-4 col-sm-12">
														   <input id="input-1" type="file" class="file">Select Image
														 </div>
												        <div class="form-group">
														  	<label for="name" class="col-md-2 col-sm-2">Observation/Remark : 	</label>
														    <div class="col-md-4 col-sm-4">
														    	<form:textarea cssClass="form-control" rows="4" id="remark" path="observationRemarks"/>
															</div>	
														
												    	</div>
											        </div>
											     </div>
						            		 </div> 
										</div>
										
										<div class="row">
											<ul class="nav navbar-right panel_toolbox">
												<li>
							                     	<button type="button" id="" onclick="location.reload(true)"
													class="btn btn-danger"><spring:message code="label.btn.reset" /></button>
							                     </li>	 
							                     <li>
							                     	<button type="submit" id="addBtn"
													class="btn btn-success"><spring:message code="label.btn.submit" /></button>
													<button type="button" id="updateBtn"
													class="btn btn-success"><spring:message code="label.btn.update" /></button>
							                     </li>	  
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

			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

<div class="modal fade" id="surveyinspector" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><spring:message code="label.surveyrequest" />r</h4>
        </div>
        <div class="modal-body">
          <div class="x_content">
									<br />
									 <form method="post" class="form-horizontal">
									 <input type="hidden" id="ulbid"  value="${ulbId}"/> 									
										<div class="row">
						            		 <div class="location-details col-md-12">
						            		<!-- application details jsp start-->
											<div class="row">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.title" /> :<span class="astric"> </span></label>
		<div id="fname" class="col-md-3 col-sm-12 col-xs-12">
			<input id="applicantFirstName"  class=" form-control" placeholder="First Name" readonly="readonly" />
		</div>
		<div class="col-md-3 col-sm-12 col-xs-12">
		<input  id="applicantMiddName"  class=" form-control" placeholder="Middle Name" readonly="readonly" />
		</div>
		<div id="lname" class="col-md-4 col-sm-12 col-xs-12">
		<input  id="applicantLastName" class=" form-control" placeholder="Last Name" readonly="readonly"  />
		</div>
	</div>
</div>
<div class="row">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.mobno" /> :<span class="astric"> </span></label>
		<div id="mobileNo" class="col-md-4 col-sm-12 col-xs-12">
			<input  id="applicantMobile" maxlength="10" class=" form-control" readonly="readonly" />
		</div>

		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.emailid" /> :<span class="astric"> </span></label>
		<div id="emailId" class="col-md-4 col-sm-12 col-xs-12">
			<input pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"  id="applicantEmail"  class=" form-control" readonly="readonly" />
		</div>
	</div>
</div>

<div class="row">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.aadharno" /> :<span class="astric"> </span></label>
		<div id="aadharnumber" class="col-md-4 col-sm-12 col-xs-12">
			<input id="aadharNo" maxlength="12" class=" form-control" readonly="readonly" />
		</div>

		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.appadd" />:</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<textarea  id="applicantAddress" class="form-control" readonly="readonly" ></textarea>
			 
		</div>
	</div>
</div>
<div class="row">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label id="orgName" for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.orgname" />:</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<input  id="organisationName"  class=" form-control" readonly="readonly" />
		</div>

		<label id="orgAdd" for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.orgadd" />:</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<textarea  id="organisationAddress" class="form-control" readonly="readonly" ></textarea>
		</div>
	</div>
</div>




											
											<!-- application details jsp end -->	
											</div>
											<div class="location-details col-md-12">
											 	<div class="col-md-12">
							            		 	<label class="app-type"><spring:message code="label.form.survey.locationdetails" /></label>
							            		 </div>
						            		 	 <div class="col-md-12">
						            		 		<div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.location" /> :<span class="astric"> </span>	</label>
													    <div id="locId" class="col-md-4 col-sm-4">
														    <input  type="text" class="form-control" id="locationId1" readonly="readonly" />
														    <input  type="hidden" id="LocName" />
														</div>	
														<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.apartment" /> :<span class="astric"> </span>	</label>
														<div id="aprtId" class="col-md-4 col-sm-4">
														    <input  type="text" class="form-control" id="apartmentId1" readonly="readonly" />
														    <input  type="hidden" id="aprtName"/>
														 </div>
												    </div>
												    
												    <div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.ward" /> :	</label>
													    <div id="wardNo" class="col-md-4 col-sm-4">
														    <input  type="text" class="form-control" id="wardId1" readonly="readonly" />
														    <input  type="hidden" id="WardName"/>
														 </div>	
														<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.zone" /> :</label>
														<div id="zoneNo" class="col-md-4 col-sm-4">
														    <input   type="text" class="form-control" id="zoneId1" readonly="readonly" />
														    
														    <input   type="hidden" id="zoneName"/>
														 </div>
												    </div>
												    
												    <div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.road" /> :<span class="astric"> </span>	</label>
													    <div id="roadNo" class="col-md-4 col-sm-4">
														    <input  type="text" class="form-control" id="roadId1"  readonly="readonly" 
														     />
														    <input type="hidden" id="RoadName"/>
														 </div>	
														<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.locality" /> :<span class="astric"> </span>	</label>
														<div id="localityNo" class="col-md-4 col-sm-4">
														    <input type="text" class="form-control" id="localityId1" readonly="readonly" 
														     />
														    <input  type="hidden" id="LocalityName"/>
														 </div>
												    </div>
												    
												    <div class="form-group">
													  	<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.longitude" /> :</label>
													    <div class="col-md-4 col-sm-4">
													    	<input  type="text" class=" form-control" id="lon1" readonly="readonly" 
																/>
														</div>	
														<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.latitude" /> :	</label>
														<div class="col-md-4 col-sm-4">
													    	<input  type="text" class=" form-control" id="lat1" readonly="readonly" 
																 readonly="readonly"
															/>
														</div>	
												    </div>
												   
											


												    
												
												    
												  </div>  
											 </div>
										</div>
											
										
									</form>
									
 
								</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn" data-dismiss="modal"><spring:message code="label.btn.close" /></button>
        </div>
      </div>
      
    </div>
  </div>

	<jsp:include page="../../common/jsFooter.jsp" />
	
	<c:url var="getTreeNameDetailUrl" value="/master/treeMasDet" />
	<c:url var='lookupDetFile' value='/application/lookUpDetailsFile' />
	<c:url var='getOwnershipOfLand' value='/treecensus/getOwnershipOfLand' />
	<c:url var='reasonForSurvey' value='/treecensus/getReasonForSurvey' />
	<c:url var='getWard' value='/treecensus/getWard' />
	<c:url var='jsonLookupHierDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupHeirDet' /> 
	
	<script src="<c:url value="/treecensus/js/tree-survey-dataentry.js" />"></script>
	
	<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=${key}">
	</script>
	<c:url var='update'
	value='/treecensus/updateTreecensusInspectionData' />
	<script src="<c:url value="/js/google-map.js" />"></script>
	
	<c:if test="${msgtype != null}">
	 <script>
	 var notification = '<spring:message code="label.common.notification" />';
	 $(function(){
		 new PNotify({
	         title: notification,
	         text: '${message}',
	         type: '${msgtype}',
	         styling: 'bootstrap3',
	         hide: true
	     });
	 }); 	 
      </script>
</c:if>
	
	<script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>
        
        <script type="text/javascript">
        
        function showHide(no){
        	if(no == 1 || no == '1'){
        		$('#serNoLab').css("display","block");
        		$('#serNo').css("display","block");
        	}else{
        		$('#serNoLab').css("display","none");
        		$('#serNo').css("display","none");
        	}
        }
        
        </script>
        
        <script type="text/javascript">
        
        var lookDetId;
    	var lookupDetId = [];
    	var lookupDetCode = [];
    	var lookupDetFile = "${lookupDetFile}";
    	var jsonLookupHierDetUrl = "${jsonLookupHierDetUrl}";
    	$(document).ready(function() {
    		//var lookupDetFile = "${lookupDetFile}";
    		loadDataTreeSurv(lookupDetFile);
    		getOwnershipOfLand();
    		getReasonForSurvey();
    		getWard();
    		});
    	
	        $("#serNo").autocomplete({
	        	
	        	source:function(request, response){
	            	console.log(request.term);
	            	$.get('${pageContext.request.contextPath}/treecensus/getDataBySrnNumber', {numberType:'srn', searchString:request.term}, function(data){
	            		treeNameData = [];
	            		treeNameData = data;
	            		if(treeNameData.length == 0){
	            			
	            		}
	            		response($.map(data, function(element, index) {
	            		    	return {
	                                label: element.surveyNumber,
	                                value: element.treeSurveyId,
	                                idx:index
	                            };
	                    }));
	            	})
	            },
	            select: function(event, ui) {
	                event.preventDefault();
	                
	                if($('input[name=optradio]:checked').val() == 1 || $('input[name=optradio]:checked').val() == '1'){
	                	
	                	console.log(treeNameData[ui.item.idx]);
		                $("#serNo").val(ui.item.label);
		                
		                $("#treeNo").val(treeNameData[ui.item.idx].treeIdentificationNo);
		                
						$("#surveyDate").val(treeNameData[ui.item.idx].surveyDate);
		                
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
		                
		                $("#breastheight").val(treeNameData[ui.item.idx].girthAtBreastHieght);
		                
		                $("#gheight").val(treeNameData[ui.item.idx].hieght);
		                
		                $("#approxage").val(treeNameData[ui.item.idx].approxAge);
		                
		                $("#cwidth").val(treeNameData[ui.item.idx].canopyWidth);
		                
		                $("#mseb").val(treeNameData[ui.item.idx].msebCtcNo);
		                
		                $("#locationId").val(treeNameData[ui.item.idx].location);
		                
		                $("#apartmentId").val(treeNameData[ui.item.idx].apartmentComplex);
		                
		                $("#roadId").val(treeNameData[ui.item.idx].road);
		                
		                $("#buildingId").val(treeNameData[ui.item.idx].building);
		                
		                $("#localityId").val(treeNameData[ui.item.idx].locality);
		                
		                $("#lon").val(treeNameData[ui.item.idx].longitude);
		                
		                $("#lat").val(treeNameData[ui.item.idx].latitude);
		                
		                $("#remark").val(treeNameData[ui.item.idx].observationRemarks);
		                
						$("#scientificListId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treeSciNameEn+"/"+treeNameData[ui.item.idx].tmTreeNameMaster.treeSciNameRg);
		                
		                $("#vernaListId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treeVerNameEn+"/"+treeNameData[ui.item.idx].tmTreeNameMaster.treeVerNameRg);
		                
		                $("#treeFamilyListId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treeFamNameEn+"/"+treeNameData[ui.item.idx].tmTreeNameMaster.treeFamNameRg);
		                
		                $("#scientificId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treenameId);
		                
		                getNameOfField(treeNameData[ui.item.idx].tmTreeNameMaster.treenameId);
	                }
	                return false;
	            },
	            focus: function (event, ui) {
	                this.value = ui.item.label;	                 
	                event.preventDefault();
	            }
	        	
	        });
	        
	        
	        $("#treeNo").autocomplete({
	            source:function(request, response){
	            	console.log(request.term);
	            	$.get('${pageContext.request.contextPath}/treecensus/getDataBySrnNumber', {numberType:'treeid', searchString:request.term}, function(data){
	            		treeNameData = [];
	            		treeNameData = data;
	            		if(treeNameData.length == 0){
	            			$("#scientificListId").val("");
	    	                $("#scientificId").val("");
	    	                
	            		}
	            		response($.map(data, function(element, index) {
	            		    	return {
	                                label: element.treeIdentificationNo,
	                                value: element.treeSurveyId,
	                                idx:index
	                            };
	                    }));
	            	})
	            },
	            select: function(event, ui) {
	                event.preventDefault();
	                if($('input[name=optradio]:checked').val() == 1 || $('input[name=optradio]:checked').val() == '1'){
		                $("#surveyDate").val(treeNameData[ui.item.idx].surveyDate);
		                
		                $("#treeNo").val(treeNameData[ui.item.idx].treeIdentificationNo);
		                
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
		                
		                $("#breastheight").val(treeNameData[ui.item.idx].girthAtBreastHieght);
		                
		                $("#gheight").val(treeNameData[ui.item.idx].hieght);
		                
		                $("#approxage").val(treeNameData[ui.item.idx].approxAge);
		                
		                $("#cwidth").val(treeNameData[ui.item.idx].canopyWidth);
		                
		                $("#mseb").val(treeNameData[ui.item.idx].msebCtcNo);
		                
		                $("#locationId").val(treeNameData[ui.item.idx].location);
		                
		                $("#apartmentId").val(treeNameData[ui.item.idx].apartmentComplex);
		                
		                $("#roadId").val(treeNameData[ui.item.idx].road);
		                
		                $("#buildingId").val(treeNameData[ui.item.idx].building);
		                
		                $("#localityId").val(treeNameData[ui.item.idx].locality);
		                
		                $("#lon").val(treeNameData[ui.item.idx].longitude);
		                
		                $("#lat").val(treeNameData[ui.item.idx].latitude);
		                
		                $("#remark").val(treeNameData[ui.item.idx].observationRemarks);
		                
		                $("#scientificListId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treeSciNameEn+"/"+treeNameData[ui.item.idx].tmTreeNameMaster.treeSciNameRg);
		                
		                $("#vernaListId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treeVerNameEn+"/"+treeNameData[ui.item.idx].tmTreeNameMaster.treeVerNameRg);
		                
		                $("#treeFamilyListId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treeFamNameEn+"/"+treeNameData[ui.item.idx].tmTreeNameMaster.treeFamNameRg);
		                
		                $("#treeCommonListId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treeComNameEn+"/"+treeNameData[ui.item.idx].tmTreeNameMaster.treeComNameRg);
		                
		                $("#scientificId").val(treeNameData[ui.item.idx].tmTreeNameMaster.treenameId);
		               
		                $(".wardData").val(treeNameData[ui.item.idx].lookupDetHierIdAwz1);
		                
		                $(".zoneData").val(treeNameData[ui.item.idx].lookupDetHierIdAwz2);
		                
		                getNameOfField(treeNameData[ui.item.idx].tmTreeNameMaster.treenameId);
	                }
	                return false;
	            },
	            focus: function (event, ui) {
	                this.value = ui.item.label;	                 
	                event.preventDefault();
	            }
	        });
    	
        </script>
        
        
        <script type="text/javascript">
        
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
	
	
	<script>
	
	var treeNameData;
	
	 $(document).ready(function () {
		 var srnId = $("#srnId1").val();
	       
	        if(srnId > 0){
	        	$('#viewRequest').css('display', 'inline-block');
	        	$("#addBtn").hide();
	        	$("#updateBtn").show();
	        }else{
	        	$("#updateBtn").hide();
	        	$("#addBtn").show();
	        }
	       $("#applicantFirstName").val($("#fName1").val());
	        $("#applicantMiddName").val($("#mName1").val());
	        $("#applicantLastName").val($("#lName1").val());
	        $("#applicantMobile").val($("#applicantMobile1").val());
	        $("#applicantEmail").val($("#applicantEmail1").val());
	        $("#aadharNo").val($("#applicantUid1").val());
	        $("#applicantAddress").val($("#applicantAddress1").val());
	        $("#organisationName").val($("#organisationName1").val());
	        $("#organisationAddress").val($("#organisationAddress1").val());
	        $("#locationId1").val($("#location1").val());
	        $("#apartmentId1").val($("#apartmentComplex1").val());
	        $("#roadId1").val($("#road1").val());
	        $("#localityId1").val($("#locality1").val());
	        $("#lon1").val($("#longitude1").val());
	        $("#lat1").val($("#latitude1").val());
	        $("#wardId1").val($("#ward").val());
	        $("#zoneId1").val($("#zone").val());
	        
		 
	        
	        
	        $("#barkListId").autocomplete({
	            source:function(request, response){
	            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'BSM'}, function(data){
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
	                
	                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn);
	                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn);
	                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn);
	                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
	                
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
	                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn);
	                $("#scientificId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#vernaListId").val(ui.item.label);
	                $("#vernaId").val(ui.item.value);
	                
	                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn);
	                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn);
	                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
	                
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
	                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn);
	                $("#scientificId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn);
	                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeCommonListId").val(ui.item.label);
	                $("#treeCommonId").val(ui.item.value);
	                
	                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn);
	                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
	                
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
	                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn);
	                $("#scientificId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn);
	                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn);
	                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeFamilyListId").val(ui.item.label);
	                $("#treeFamilyId").val(ui.item.value);
	                
	                return false;
	            } ,
	            focus: function (event, ui) {
	                this.value = ui.item.label;	                 
	                event.preventDefault();
	            }
	        });
	        
	 	   
	       	   
	       	//update start
	    		 $('#updateBtn').click(function () 
	    	        { 
	    			/*  if (confirm("Are You Sure You want To Update Data")) { */
	    			var srnId=$("#srnId1").val();
	    			 var surveyDate=$("#surveyDate").val();
	    			 var treeNameID=$("#scientificId").val();
	    			 var vernaListId = $("#vernaId").val();
	    			 var treespeciesListId=$("#treespeciesId").val();
	    			 var treeCommonListId=$("#treeCommonId").val();
	    			 var barkListId =$("#barkId").val();
	    			 var surveyNumber=$("#surveyNumber").val();
	    			 var textureId=$("#textureId").val();
	    			 var colorMasterListId =$("#colorMasterId").val();
	    			 var flowernameId=$("#flowernameId").val();
	    			 var fruitnameId=$("#fruitnameId").val();
	    			 var sizeId=$("#sizeId").val();
	    			 var shapeListId = $("#shapeId").val();
	    			 var breastheight=$("#breastheight").val();
	    			 var gheight=$("#gheight").val();
	    			 var approxage =$("#approxage").val();
	    			 var cwidth=$("#cwidth").val();
	    			 var treestatusListId=$("#treestatusId").val();
	    			 var odourListId = $("#odourId").val();
	    			 var msebCtcNo=$("#msebCtcNo").val();
	    			 var treeFamilyListId=$("#treeFamilyListId").val();
	    			 var locationId=$("#locationId").val();
	    			 var apartmentId=$("#apartmentId").val();
	    			 var roadId = $("#roadId").val();
	    			 var buildingId=$("#buildingId").val();
	    			 var localityId=$("#localityId").val();
	    			 var lon = $("#lon").val();
	    			 var lat=$("#lat").val();
	    			 var remark=$("#remark").val();
	    			
	    			 
	    		 var datavar={"surveyDate":surveyDate,
	    				      "treemasIdTsm":treespeciesListId, "treeCommonListId":treeCommonListId,"treemasIdBsm":barkListId, 
	    				      "surveyNumber":surveyNumber ,"treemasIdTms":textureId, "treemasIdLcm":colorMasterListId, "treemasIdFrm":fruitnameId,
	    				       "sizeValue":sizeId,"treemasIdLsm":shapeListId, 
	    				      "girthAtBreastHieght":breastheight,"hieght":gheight, "approxAge":approxage,"canopyWidth":cwidth,
	    				      "treemasIdFnm":flowernameId, "treemasIdTst":treestatusListId,
	    				      "treemasIdOdm":odourListId,"msebCtcNo":msebCtcNo, "treeFamilyListId":treeFamilyListId,
	    				      "location":locationId,"apartmentComplex":apartmentId, "road":roadId,
	    				     "building":buildingId,"locality":localityId, "longitude":lon, "latitude":lat, "observationRemarks":remark,"srnId":srnId,
	    				     "treeNameId":treeNameID};
	    		 
	    	      
	    	     	$.ajax({
	    	         type: "POST",
	    	         url: "${update} ",
	    	         contentType : "application/json",
	    	         dataType : 'json',
	    	         data: JSON.stringify(datavar),
	    	         async: false,
	    	         headers: 
	    	         {
	    	         
	    	         },
	    	         success: function (data)
	    	         {
	    	        	 PNotify.removeAll();
	    	        	 
	    			        	 
	    			        	  new PNotify({
	    			                    title: 'Data Updated Successfully.',
	    			                    styling: 'bootstrap3',
	    			                    type: 'success',
	    			                    animate_speed: 'fast'
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
	    			                     return false;    
	    			                 }
	    			                 });//ajax end
	    			 
	    	        /* }//if */
	    			 
	    	});//click end
	       	     
	       
	    });
	 
	 	/*locationId*/
	 	$("#locationId").autocomplete({
			source:function(request, response){
				if(request.term.length < 3) {
					return false;
				}
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
				if(request.term.length < 3) {
					return false;
				}
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
				/* if(request.term.length < 3) {
					return false;
				} */
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
				if(request.term.length < 3) {
					return false;
				}
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
				if(request.term.length < 3) {
					return false;
				}
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
	            $("#RoadName").val(ui.item.value);
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
				if(request.term.length < 3) {
					return false;
				}
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
	
	<script>
	

	
	</script>
	
	
	<script type="text/javascript">

function getOwnershipOfLand(){
	
	var shortCode = 'OLT';
	var getOwnershipOfLand = "${getOwnershipOfLand}"; 
	//var obj = {ulbId : $('#ulbId').val()}
	
	$.ajax({
     type: "GET",
     url: getOwnershipOfLand,
     contentType : "application/json",
     dataType : 'json',
     //data : "code="+shortCode,
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

function getReasonForSurvey(){
	
	var shortCode = 'RSU';
	var reasonForSurvey = "${reasonForSurvey}"; 
	//var obj = {ulbId : $('#ulbId').val()}
	
	$.ajax({
     type: "GET",
     url: reasonForSurvey,
     contentType : "application/json",
     dataType : 'json',
     //data : "code="+shortCode,
     async: false,
      headers: {
          "Authorization": "Basic " + btoa("ashok:pass") 
      },
      success: function (data){
    	
    	$.each(data.resultData, function (i, result) {
    		
    		$('.rfoSur').append($("<option></option>").val(result.lookupDetId).html(result.lookupDetName));
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

function getWard(){
	
	//var shortCode = 'RSU';
	var getWard = "${getWard}"; 
	//var obj = {ulbId : $('#ulbId').val()}
	
	$.ajax({
     type: "GET",
     url: getWard,
     contentType : "application/json",
     dataType : 'json',
     //data : "code="+shortCode,
     async: false,
      headers: {
          "Authorization": "Basic " + btoa("ashok:pass") 
      },
      success: function (data){
    	
    	$.each(data.resultData, function (i, result) {
    		
    		if(result.ulbId == 115){
        		//$('.wardData').append($("<option></option>").val(result.lookupDetId).html(result.lookupDetName));
    			lookDetId = result.lookupDetId;
    		}
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
	
	
	$.ajax({
	      type: "POST",
	      url: jsonLookupHierDetUrl,
	      contentType : "application/json",
	      dataType : 'json',
	      async: false,
	      headers: {
	          "Authorization": "Basic " + btoa("ashok:pass") 
	      },
	      success: function (data){
	    	 
	    	  var ldi;
	    	  var subdrop = 0;
	    	
	    	$.each(data.resultData, function (i, result) {
	      
	    		if(lookDetId == result.lookupDetId && $('#ulbid').val() == result.ulbId){
	    			$('.wardData').css("display","block");
		    		$('.wardDataLabel').css("display","block");
	    			$('.wardData').append('<option value="'+result.lookupDetHierId+'">'+result.lookupDetHierDescEn+'</option>');
	    		}
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

<script type="text/javascript">

var subbond;
$('.wardData').change(function() {
	 var ulbId = $('#ulbId').val();
	 $.ajax({
 	      type: "POST",
 	      url: jsonLookupHierDetUrl,
 	      contentType : "application/json",
 	      dataType : 'json',
 	      async: false,
 	      headers: {
 	          "Authorization": "Basic " + btoa("ashok:pass") 
 	      },
 	      success: function (data){
 	    	  
 	    	if(subbond != $('.wardData option:selected').val()){
	 	    	$('.zoneData').empty();
	 	    	$('.zoneData').append('<option value="0">--Select--</option>');
 	    	}
 	    	
 	    	$.each(data.resultData, function (i, result) {
  	    		if(ulbId == result.ulbId && $('.wardData option:selected').val() == result.lookupDetHierParentId && lookDetId == result.lookupDetId){
  	    			$('.zoneData').css("display","block");
		    		$('.zoneDataLabel').css("display","block");
  	    			$('.zoneData').append('<option value="'+result.lookupDetHierId+'">'+result.lookupDetHierDescEn+'</option>');
 	    		} 
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
	// $('#modCode').val(noyes);
	 subbond = $('.wardData option:selected').val();
})


</script>



<script type="text/javascript">

$('.rfoSur').change(function() {
	
	if($('.rfoSur option:selected').text() == 'Application'){
		$('#refNolab').css("display","block");
		$('#refNo').css("display","block");
	}else{
		$('#refNolab').css("display","none");
		$('#refNo').css("display","none");
	}
	
});

</script>	

</body>
</html>
</compress:html>

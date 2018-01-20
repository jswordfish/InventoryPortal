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
 	<jsp:include page="../homeheader.jsp" />
  </head>
  <body>
  <div class="prop-section">
         
    <div class="container">
    			<div class="form-title">
    				<h3 style="display:inline-block"><spring:message code="label.document.newwaterconnection.title" /></h3> <span class="home-icon"><i class="fa fa-home"></i></span> 
    			</div><!-- form-title -->
    			
                    <div>
                      <div class="ulb-section">
                       
                       <form:form action="" name="property-nodue-form" id="frmData" method="POST" modelAttribute="applicationBean">
                    <form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide}"/>
                	<form:hidden path="" id="servDeschide" value="${servDeschide}"/>
                	<div class="" id="application-details">	
                      <div class="toggle-header" data-target="#application-details">
                      <h2 class="StepTitle"><spring:message code="label.document.newtradelic.applicantdet" /> 
                      <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2></div>
                       				
				            <div class="row">
				              <div class="form-group col-md-12 col-sm-12 col-xs-12">
				                 
				                <label class="col-md-2" for="ulb-name"><spring:message code="label.document.newtradelic.ulbname" /></label>
				                <div class="col-md-6">
				               
				                <select class=" form-control" id="ulbIdDesc" name="ulbIdDesc">
											<option value="0"><spring:message code="label.document.servicereq.selulb" /></option>
						                </select> 
				                </div>
				              </div>
				              <div class="form-group col-md-12 col-sm-12 col-xs-12">
					               <label class="col-md-2" for="ulb-name"><spring:message code="label.document.newtradelic.servicename" /></label>
					                <div class="col-md-6">
					                
					                 <input type="hidden" id="setServiceId" name="setServiceId">
					                <input type="hidden" id="srn_id" name="srn_id">
					                <input type="hidden" id="srn_id_view" name="srn_id_view" value="${srnId}">
					                	<select class=" form-control" name="serviceId" id="serviceId" disabled>
					                			<option value="0" ><spring:message code="label.document.servicereq.selsername" /></option>
					                	</select>
					                </div>
					            </div>
				           	 </div>
				           	  <jsp:include page="applicant-details.jsp" />
				           	  </div>
				           	  </form:form> 
				           	  
                      	 
                      	 <form  id="WaterConsumer_form">
						
						<div class="row" id="water-con-details">
						
						
						<%-- <form  id="WaterConsumer_form"> --%>
						<div class="form-group" style="display:none;">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.applicannamer" /> :<span class="required">*</span> 
                            	</label>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                            		<select class="form-control" id="propowner_pref_m">
                            			<option value="Mr." ><spring:message code="label.document.newtradelic.mr" /></option>
                            			<option value="Mrs." ><spring:message code="label.document.newtradelic.mrs" /></option>
                            			<option value="Miss" ><spring:message code="label.document.newtradelic.miss" /></option>
                            		</select>
                            		
                           		</div>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                              		<input type="text" id="propowner_fname_m" name="firstName" class="form-control"  placeholder="First Name"  maxlength="15" required>
                           		</div>     		 
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                              		<input type="text" id="propowner_mname_m" name="middleName" class="form-control"  placeholder="Middle Name">
                            	</div>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="propowner_lname_m" name="lastName" class="form-control"  placeholder="Last Name"  maxlength="15" required>
                            	</div>
                         	
                          	</div>
                          	
                          	<!-- <div class="toggle-header" data-target="#water-con-details"><h2 class="StepTitle toggle-header">Water Connection Details <i class="material-icons toggle-icon">keyboard_arrow_down</i></h2></div> -->
                          <div class="toggle-header" data-target="#application-details">
                      <h2 class="StepTitle">Water Connection Details 
                      <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2></div>
                          	
                        <div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.ownername" />:<span class="required">*</span> 
                            	</label>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                            		<select class="form-control" id="propowner_pref_e">
                            			<option value="Mr." ><spring:message code="label.document.newtradelic.mr" /></option>
                            			<option value="Mrs." ><spring:message code="label.document.newtradelic.mrs" /></option>
                            			<option value="Miss" ><spring:message code="label.document.newtradelic.miss" /></option>
                            		</select>
                            		<input type="hidden" id="lastPk" value="0">
                            		<input type="hidden" id="lastSrnId" value="0">
                           		</div>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                              		<input type="text" id="propowner_fname_e" name="firstNameOwner" class="form-control" required="required" placeholder="First Name" maxlength="15">
                           		</div>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                              		<input type="text" id="propowner_mname_e" name="middleNameOwner" class="form-control"  placeholder="Middle Name" maxlength="15">
                            	</div>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="propowner_lname_e" name="lastNameOwner" class="form-control" required="required" placeholder="Last Name" maxlength="15">
                            	</div>
                         	
                          	</div>
                        	
                        	
                          	<div class="form-group" style="display:none;">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.orgname" />: 
                            	</label>
                            	<div class="col-md-10 col-sm-10 col-xs-12">
                              		<input type="text" id="" name="organisationName" class="form-control" maxlength="20">
                            	</div>
                          	</div>
                          	<div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.mobno" />. : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="mobile_no" name="contactNumberOwner" class="form-control" required maxlength="10">
                            	</div>
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.emailid" />  : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="email" id="email_id" name="emailId" class="form-control">
                            	</div>
                          </div>
                          
                          <div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.aadharno" />. : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="uidId" name="uidId" class="form-control" required maxlength="12">
                            	</div>
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.houseno" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="flatNoOwner" name="flatNoOwner" class="form-control" required onkeyup="house_no_valdi(this.value);">
                            	    <span id="status0"></span><br>
                            	</div>
                          </div>
                          <div class="form-group">
    			
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.roadname" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="road_name" name="roadNameOwner" class="form-control" required>
                              		<span id="status1"></span><br>
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.district" /> 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select name="lookupDetIdDistrictO" id="districtDrop" class="form-control" onchange="getlookupHier('districtDrop','talukaDrop')" required>
                              				<option value="0" selected>- Select District -</option>
                              				<c:forEach items = "${LookupHierarchical}" var="LookupHierarchicalCountry" >
											   <option value= "${LookupHierarchicalCountry.lookupDetHierId}" > ${LookupHierarchicalCountry.lookupDetHierDescEn} (${LookupHierarchicalCountry.lookupDetHierDescRg})</option>
										</c:forEach>
                              		</select>
                            	</div>
                          </div>
                          
                          <div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.taluka" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select name="lookupDetIdTalukaO" id="talukaDrop" class="form-control" onchange="getlookupHier('talukaDrop','cityDrop')" required>
                              			<option value="0" selected>- <spring:message code="label.document.newwaterconnection.pleaseselectdis" /> -</option>
                              		</select>
                              		
                            	</div>
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.city" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select name="lookupDetIdCityO" id="cityDrop" class="form-control" required>
                              			<option value="0" selected>-<spring:message code="label.document.newwaterconnection.pleasetaluka" />-</option>
                              		</select>
                            	</div>
                          </div>
                          
                          <div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.pincode" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="pincode" name="pincode" class="form-control" required maxlength="6" onkeyup="postcode_vald(this.value);">
                              		<span id="status"></span><br>
                            	</div>
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.oldpropno" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="oldPropNum" name="manualPropertyNumber" class="form-control">
                            	</div>
                          </div>
                          
                          <div class="form-group is-billing-div" style="display:none">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12">Billing address Is Same ?</label> 
                          		<div class="col-md-4 col-sm-4 col-xs-12">
                          			<label class="radio-inline"><input type="radio" name="isbilling" value="" class="rdo-yes">Yes</label>
                          			<label class="radio-inline"><input type="radio" name="isbilling" value="" class="rdo-no">No</label>
                          		</div>
                          </div>
                          
                          <div class="billing-no-div" style="display:none">
                          	<div class="form-group">
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.houseno" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="flatNoOwnerBill" name="flatNoBill" class="form-control" required onkeyup="house_no_valdi(this.value);">
                            	    <span id="status0"></span><br>
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.roadname" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="road_name_Bill" name="roadNameBill" class="form-control" required>
                              		<span id="status1"></span><br>
                            	</div>
                          </div>
                          <div class="form-group">
    			
                            	
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.district" /> 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select name="lookupDetIdDistrictB" id="districtDropBill" class="form-control" onchange="getlookupHier('districtDropBill','talukaDropBill')" required>
                              				<option value="0" selected>- Select District -</option>
                              				<c:forEach items = "${LookupHierarchical}" var="LookupHierarchicalCountry" >
											   <option value= "${LookupHierarchicalCountry.lookupDetHierId}" > ${LookupHierarchicalCountry.lookupDetHierDescEn} (${LookupHierarchicalCountry.lookupDetHierDescRg})</option>
										</c:forEach>
                              		</select>
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.taluka" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select name="lookupDetIdTalukaB" id="talukaDropBill" class="form-control" onchange="getlookupHier('talukaDropBill','cityDropBill')" required>
                              			<option value="0" selected>- <spring:message code="label.document.newwaterconnection.pleaseselectdis" /> -</option>
                              		</select>
                              		
                            	</div>
                            	
                          </div>
                          
                          <div class="form-group">
                            	
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.city" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select name="lookupDetIdCityB" id="cityDropBill" class="form-control" required>
                              			<option value="0" selected>-<spring:message code="label.document.newwaterconnection.pleasetaluka" />-</option>
                              		</select>
                            	</div>
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.pincode" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="pincodeBill" name="pincodeBill" class="form-control" required maxlength="6" onkeyup="postcode_vald(this.value);">
                              		<span id="status"></span><br>
                            	</div>
                          </div>
                          
                          </div>
                          <%-- </form> --%>
                          
                         <%--  <div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.property.registration.form.gender" /> :<span class="required">*</span> 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<label class="radio-inline"><input type="radio" name="gender" value="<spring:message code="label.property.registration.form.male" />"><spring:message code="label.property.registration.form.male" /></label>
									<label class="radio-inline"><input type="radio" name="gender" value="<spring:message code="label.property.registration.form.female" />"><spring:message code="label.property.registration.form.female" /></label>
									<label class="radio-inline"><input type="radio" name="gender" value="<spring:message code="label.property.registration.form.trans" />"><spring:message code="label.property.registration.form.trans" /></label>
                            	</div>
                          </div> --%>
                          
                          
                          
                          
                          <div class="form-group" id="addAddiDiv" style="display:none;">
                          	<button type="button" id="addAddiBtn" data-toggle="modal" data-target="#addAdditionalDiv" data-dismiss="modal"
                          	 name="submitBtn" class="btn btn-primary active" >Add Additional Consumer</button>
                          </div>
                         
                        
                    <div id="addAdditionalDiv" class="modal fade bill-details" role="dialog" style="display:none;">
						<div class="modal-dialog modal-lg">
						    <!-- Modal content-->
						    <div class="modal-content">
						    
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" id="taxup-close">&times;</button>
							        <h4 class="modal-title">Add Additional Consumer</h4>
							      </div>
							      
							      <div class="modal-body">
							      	<div class="application-type col-md-12">
							       
											<div class="panel panel-sucess">
											
												<div class="panel-body">
												
													<div class="form-group">
						                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.ownername" />:<span class="required">*</span> 
						                            	</label>
						                            	<div class="col-md-2 col-sm-2 col-xs-12">
						                              		<input type="text" id="firstNameAddi" name="firstNameAddi" class="form-control" placeholder="First Name" maxlength="15">
						                           		</div>
						                            	<div class="col-md-2 col-sm-2 col-xs-12">
						                              		<input type="text" id="middleNameAddi" name="middleNameAddi" class="form-control"  placeholder="Middle Name" maxlength="15">
						                            	</div>
						                            	<div class="col-md-4 col-sm-4 col-xs-12">
						                              		<input type="text" id="lastNameAddi" name="lastNameAddi" class="form-control" placeholder="Last Name" maxlength="15">
						                            	</div>
                          							</div>
                          							
                          							<div class="form-group">
						                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.mobno" />. : 
						                            	</label>
						                            	<div class="col-md-4 col-sm-4 col-xs-12">
						                              		<input type="text" id="mobileNumAddi" name="mobileNumAddi" class="form-control" required maxlength="10">
						                            	</div>
                          							</div>
                          							<div class="form-group">
						                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.modal.survey.dataentry.address" />. : 
						                            	</label>
						                            	<div class="col-md-4 col-sm-4 col-xs-12">
						                              		<textarea name="addressAddi" id="addressAddi" cols="30" rows="10"></textarea>
						                            	</div>
                          							</div>
													
												</div>
											</div>
										
								
				                 	<div class="form-group" style="text-align:center"> 
				                		<button type="submit" id="addAddi-save" value="1" class="btn btn-primary">Save</button>
				               		</div>
				               		
				         			</div>
							      </div>
							      
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal" id="addAddi-close">Close</button>
							      </div>
							      
						    </div>
						  </div>
						</div>
                          
                          <div class="x_content">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="x_content">
										<div class="panel panel-sucess">
											<div class="panel-body" id="addAdditionalTabDiv" style="display: none;">
												<table id="waterowner-table"
													 class="table table-striped table-bordered no-footer" role="grid" aria-describedby="datatable_info">
													<thead>
														<tr>
															<!-- <th><input type="checkbox" value=""></th> -->
															<!-- <th><label class="control-label">Old CCN</label></th>
															<th><label class="control-label">New CCN</label></th> -->
															<th><label class="control-label"><spring:message code="label.document.newtradelic.ward" /></label></th>
															<th><label class="control-label"><spring:message code="label.document.newwaterconnection.zone" /></label></th>
															<th><label class="control-label"><spring:message code="label.document.newtradelic.ownername" /></label></th>
															<th><label class="control-label"><spring:message code="label.document.newwaterconnection.orgname" /></label></th>
														</tr>
													</thead>
													<tbody>	
														
													</tbody>
												</table>
												<div class="form-group" style="text-align:center"> 
							                		<!-- <button type="reset" class="btn btn-primary">Cancel</button>
							                		<button type="button" class="btn btn-primary">Update</button> 
							                		<button type="button" class="btn btn-primary">Remove</button>-->
							               		</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
						<!-- <div class="form-group">
                          	<button type="button" id="aplliNextBtn" name="aplliNextBtn" class="btn btn-primary active" >Save and Proceed</button>
                          </div> -->
							
                      	
							</div>
						
						
						<div class="toggle-header" data-target="#water-con">
                      <h2 class="StepTitle toggle-header conDetailsDiv"><spring:message code="label.document.newwaterconnection.connectiondet" />
                      <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2></div>
                      
						
						<div class="row" id="water-con">
                     
                        <div class="form-group col-md-12" id="boundaryDiv">	
														<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.newwaterconnection.revenuebond" /> :	</label>
													  	<div class="col-md-2 col-sm-12 col-xs-12 subboundry1">
													    <select class="form-control subDroped1" id="subDroped1">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
 													  	<div class="col-md-2 col-sm-12 col-xs-12 subboundry2">
													    	<select class="form-control subDroped2" id="subDroped2">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
														<div class="col-md-2 col-sm-12 col-xs-12 subboundry3">
													    	<select class="form-control subDroped3" id="subDroped3">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
														<div class="col-md-2 col-sm-12 col-xs-12 subboundry4" >
													    	<select class="form-control subDroped4" id="subDroped4">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
														<div class="col-md-2 col-sm-12 col-xs-12 subboundry5" >
													    	<select class="form-control subDroped5"id="subDroped5">
													    		<option value="0">Select Zone</option>
													    	</select>
														</div>
								            		 </div>
								            		 
								            		 
								            		 
							<div class="form-group col-md-12 editBtn" style="display:none;">
                          		<div class="row">
		                       	 	<div class="actionBar">
			                             <button type="button" class="btn" id="editBtn" name="editBtn"><spring:message code="label.btn.edit" /></button>
		                            </div>
                       	 		</div>
                          	</div>
                          	
                        	<div class="form-group col-md-12">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.connectype" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<select class="form-control contype-chbox" id="connectionType" name="connectionType" required>
                              			<option value="0">- Select Connection Type -</option>
                              				<c:forEach items="${connectnType}" var="connectnTypeL">
													<option value="${connectnTypeL.lookupDetValue}">${connectnTypeL.lookupDetDescEn}-(${connectnTypeL.lookupDetDescRg})</option>
											</c:forEach>
                              		</select>
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.connectsize" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<select class="form-control" id="pipeSize" name="pipeSize" required>
                              			<option value="0">- <spring:message code="label.document.newwaterconnection.selcontsize" /> -</option>
                              		</select>
                            	</div>
                          	</div>
                          	
                          	<div class="form-group col-md-12">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.usagetype" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<select class="form-control" id="lookupDetHierIdUsageId1" name="lookupDetHierIdUsage1" required>
                              			<option value="0">- <spring:message code="label.document.newwaterconnection.selusagetype" /> -</option>
                              			<c:forEach items="${usageType}" var="usageTypel">
												<option value= "${usageTypel.lookupDetHierId}" > ${usageTypel.lookupDetHierDescEn} (${usageTypel.lookupDetHierDescRg})</option>
										</c:forEach>
                              		</select>
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.usagesub" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<select class="form-control" id="subUsageIdd" name="subUsageId" required>
                              			<option value="0">- First Select Usage Type -</option>
                              			
                              		</select>
                            	</div>
                          	</div>
                       		
                       		<div class="form-group col-md-12" style="display: none;">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.physcondate" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                            	<div class='input-group date  ' id="phycondate" >
				                    	<input type='text' name="physicalConnectionDate" class="form-control " required />
				                    	<span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    	</span>
			                	  	</div>
                            	</div>
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.plumbername" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<!-- <input type="text" name="pumberId" class="form-control"> -->
                              		<select class="form-control" id="pumberId" name="pumberId">
                              			<option value="0">- Select Plumber -</option>
                              			
                              		</select>
                          		</div>
							</div>
							
							<div class="form-group col-md-12" style="display: none;">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.connectionstatus" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<select class="form-control" name="connectionStatus" required>
                              			<option value="0">- Select Connection Status -</option>
                              			<c:forEach items="${connectnStatus}" var="connectnStatusL">
										 	<option value="${connectnStatusL.lookupDetValue}">${connectnStatusL.lookupDetDescEn}-(${connectnStatusL.lookupDetDescRg})</option>	 --%>
										</c:forEach>
										<option value="N">NA</option>
                              		</select>
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.nooftap" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            			<input type="text" class="form-control" value="0" name="noOfTap">
                            	</div>
                          	</div>
                          	
                          	<div class="form-group col-md-12">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.noofper" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" class="form-control" id="numberOfPersons" name="numberOfPersons">
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.nooffamily" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" class="form-control" id="numberOfFamily" name="numberOfFamily">
                            	</div>
                          	</div>
		                 	
		                 	<div class="form-group col-md-12">
                          		
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.presentcon" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" class="form-control" id="prestConNum" name="prestConNum">
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12 waterViewDiv" style="display: none;"><spring:message code="label.document.newwaterconnection.sourceofwater" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12 waterViewDiv" style="display: none;">
                            		<select name="sourceOfWater" id="sourceOfWaterId" class="form-control" required>
                              				<option value="0">- Select Source of Water -</option>
                              		</select>
                            	</div>
                            	
                          	</div>
                          	
                          	
                          	<div class="form-group col-md-12 waterViewDiv" style="display: none;">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.reservior" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select name="reservoir" id="reservoirId" class="form-control" required>
                              				<option value="0">- Select Reservoir -</option>
                              			
                              		</select>
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.waterplant" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select name="waterTreatPlant" id="waterTreatPlantId" class="form-control" required>
                              				<option value="0">- Select Water Treatment Plant -</option>
                              			
                              		</select>
                            	</div>
                            	
                          	</div>
                          	
                          	<!-- <div class="form-group col-md-12 " >
                          		
                          	</div> -->
                          	
                          	<div class="form-group col-md-12" style="display: none;">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.outULB" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="checkbox" value="">
                            	</div>
                            	
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.noofconnection" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" class="form-control">
                            	</div>
                          	</div>
                      
                      <div class="metered-div" style="display:none;">
	                      	<div class="application-type col-md-12 x_panel"> 
		               			<div class="x_title">
									<h2 class="StepTitle"><spring:message code="label.document.newwaterconnection.metereconnection" /></h2>
									<!-- <ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul> -->
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									
										<div class="form-group col-md-12">
			                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.meterownership" />: 
			                            	</label>
			                            	<div class="col-md-4 col-sm-4 col-xs-12">
			                            	
			                              		<!-- <input type="text" value="" name="meterOwnership" class="form-control"> -->
			                              		
			                              		<select class="form-control" name="meterOwnership">
			                              			<option value='P'><spring:message code="label.document.newwaterconnection.private" /></option>
			                              			<option value='M'><spring:message code="label.document.newwaterconnection.municipalulb" /></option>
			                              		</select>
			                              		
			                            	</div>
			                            	
			                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.metermodelno" />: 
			                            	</label>
			                            	<div class="col-md-4 col-sm-4 col-xs-12">
			                              		<input type="text" value="" class="form-control">
			                            	</div>
			                          	</div>
			                          	
			                          	<div class="form-group col-md-12">
			                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.metermake" />: 
			                            	</label>
			                            	<div class="col-md-4 col-sm-4 col-xs-12">
			                              		<input type="text" value="" name="meterMake" class="form-control">
			                            	</div>
			                            	
			                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.meterno" />: 
			                            	</label>
			                            	<div class="col-md-4 col-sm-4 col-xs-12">
			                              		<input type="text" value="" name="meterNo" class="form-control">
			                            	</div>
			                          	</div>
			                          	
			                          	<div class="form-group col-md-12">
			                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.metercost" />: 
			                            	</label>
			                            	<div class="col-md-4 col-sm-4 col-xs-12">
			                              		<input type="text" value="" name="meterCost" class="form-control">
			                            	</div>
			                            	
			                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.initmeterreading" />: 
			                            	</label>
			                            	<div class="col-md-4 col-sm-4 col-xs-12">
			                              		<input type="text" value="" class="form-control">
			                            	</div>
			                          	</div>
			                          	
			                          	<div class="form-group col-md-12">
			                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.maxmeter" />: 
			                            	</label>
			                            	<div class="col-md-4 col-sm-4 col-xs-12">
			                              		<input type="text" value="" name="maxMeterReading" class="form-control">
			                            	</div>
			                          	</div>
									
								</div>
							</div>
                     
	                      	<div class="application-type col-md-12 x_panel"> 
		               			<div class="x_title">
									<h2 class="StepTitle"><spring:message code="label.document.newwaterconnection.meterdet" /></h2>
									<!-- <ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul> -->
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="panel panel-sucess">
										<div class="panel-body">
											<table id=""
												 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
												<thead>
													<tr>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.currentmeterreading" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.currentmeterdate" /></label></th>
														<!-- <th><label class="control-label">Usage Type</label></th>
														<th><label class="control-label">Usage Sub Type</label></th> -->
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.consumption" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.meterstatus" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.uploadphoto" /></label></th>
													</tr>
												</thead>
												<tbody>	
													<tr>
														<td><input type="text" class="form-control" name="meterReading"></td>
														<td><div class='input-group date'  id="meterreaddate">
										                    	<input type='text' class="form-control " name="readingDate" />
										                    	<span class="input-group-addon">
										                        <span class="glyphicon glyphicon-calendar"></span>
										                    	</span>
									                	  	</div>
									                	</td>
														<!-- <td><input type="text" class="form-control"></td>
														<td><input type="text" class="form-control"></td> -->
														<td><input type="text" class="form-control"></td>
														<td><input type="text" class="form-control"></td>
														<td><div class="input-group">
													            <span class="input-group-btn">
													                <span class="btn btn-default btn-file">
													                    Browse… <input type="file" id="imgInp">
													                </span>
													            </span>
													            <input type="text" class="form-control" readonly>
													        </div>
													        <img id='img-upload'/>
													    </td>
													</tr>
												</tbody>
											</table>
											<div class="form-group" style="text-align:center"> 
						                		<!-- <button type="submit" class="btn btn-primary">Submit</button>
						                		<button type="reset" class="btn btn-primary">Cancel</button> -->
						                		<!-- <button type="button" class="btn btn-primary history-btn">View Reading History</button> -->
						               		</div>
						               		
						               		<table id="" class="history-tbl table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info" style="display:none">
												<thead>
													<tr>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.lastmeter" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.meterreadingdate" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.usagetype" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.usagesub" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.consumption" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.meterstatus" /></label></th>
														<th><label class="control-label"><spring:message code="label.document.newwaterconnection.uploadphot" /></label></th>
													</tr>
												</thead>
												<tbody>	
													<tr>
														<td><label class="control-label">0</label></td>
														<td><label class="control-label">0</label></td>
														<td><label class="control-label">0</label></td>
														<td><label class="control-label">0</label></td>
														<td><label class="control-label">0</label></td>
														<td><label class="control-label">0</label></td>
														<td><label class="control-label">0</label></td>
													</tr>
												</tbody>
											</table>
										</div>
			
									</div>
								</div>
							</div>
							
							<div class="application-type col-md-12 x_panel"> 
		               			<div class="x_title">
									<h2 class="StepTitle"><spring:message code="label.document.newwaterconnection.metercut" /></h2>
									<!-- <ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul> -->
									<div class="clearfix"></div>
								</div>
								
								<div class="x_content">
										<div class="form-group col-md-12">
			                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.meterreset" />: 
			                            	</label>
			                            	<div class="col-md-4 col-sm-4 col-xs-12">
			                              		<input type="checkbox" value='Y' id="resetCheck" name="meterReset">
			                            	</div>
			                            	
			                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.lastmeter" />: 
			                            	</label>
			                            	<div class='input-group date col-md-4 col-sm-4 col-xs-12 ' id="lastmetercutof">
						                    	<input type='text' class="form-control " id="meterCutoff" readonly/>
						                    	<span class="input-group-addon">
						                        <span class="glyphicon glyphicon-calendar"></span>
						                    	</span>
					                	  	</div>
			                          	</div>
			                          	<div class="form-group col-md-12">
			                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.meterrestore" />: 
			                            	</label>
			                            	<div class='input-group date col-md-4 col-sm-4 col-xs-12 ' id="meterresto">
						                    	<input type='text' class="form-control " id="meterRestor" readonly/>
						                    	<span class="input-group-addon">
						                        <span class="glyphicon glyphicon-calendar"></span>
						                    	</span>
					                	  	</div>
			                          	</div>
			                          	
									
								</div>
								
							</div>
                      </div>
	                      <!-- <div class="form-group">
	                        	<button type="button" id="conNextBtn" name="conNextBtn" class="btn btn-primary active" >Save and Proceed</button>
	                      </div> -->
                          
               		</div>
        
        </form> 
        <div class="toggle-header" data-target="#upload-div">
                      <h2 class="StepTitle toggle-header"><spring:message code="label.document.newwaterconnection.uploaddoc" />
                      <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2></div>
                      
                         			
                           <div class="row" id="upload-div">
                           		<c:url var='jsonCommonChecklistUrl' value='/common/service/saveChecklist' />
                           		
	                          <%--  <form:form modelAttribute="filesBean"  method="post" action="${jsonCommonChecklistUrl}" enctype="multipart/form-data"  id="checkListForm">
		                           <form:hidden path="returnURL" id="returnURL"/> 
		                           <jsp:include page="checklist.jsp" />
	                           </form:form> --%>
	                           
	                           <input type="hidden" id="modeVorA" value="${action}"/> 
	                                                     
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
                          	
                          	
                          	<div class="toggle-header chargeColl" data-target="#charges-details"><h2 class="StepTitle toggle-header docCheckDiv"><spring:message code="label.document.newwaterconnection.newconcharge" /> <i class="material-icons toggle-icon">keyboard_arrow_down</i></h2></div>
               	 <div id="charges-details" class="chargeColl">
	                          	<div class="form-group">
	                            	 <label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newwaterconnection.charge" />:
		                            	</label>
		                            <div class="col-md-4 col-sm-4 col-xs-12">
		                              <input type="text" id="payAmt" name="payAmt" class="form-control" required="required" readonly>
		                              <input type="hidden" id="taxId" value="0">
		                              <input type="hidden" id="taxDetId" value="0">
		                            </div>
		                            
		                            <!-- <div class="col-md-4 col-sm-4 col-xs-12">
		                              <button type="button" id="payCharges" name="payCharges" class="btn">Pay</button>
		                            </div> -->
	                         	
	                          	</div>
                          </div>
                          
                          <div class="row">
                       	 	<div class="actionBar">
	                             <button type="button" class="btn" id="conNextBtn" name="conNextBtn"><spring:message code="label.btn.save" /></button>
                          		<button type="reset" class="btn"><spring:message code="label.btn.reset" /></button>
                          		<button type="button" class="btn"><spring:message code="label.btn.close" /></button>
                            </div>
                       	 </div>
                       	 
                       	 </div>
                       	                          
             </div>
             <!-- <div class="form-group">
	                        	<button type="button" id="conNextBtn" name="conNextBtn" class="btn btn-primary active" >Save and Proceed</button>
	                      </div> -->
             
             	
             
             
		<%-- </form:form>  <form:form id="ackFrm" name="ackFrm" modelAttribute="ackFrm">
                                        <form:hidden id="srnIdAck" path="srn_id"/>
                               </form:form> --%>
                               
            </div>                   
      </div>
        

<jsp:include page="jsFooter.jsp" />
<jsp:include page="../citizenFooter.jsp" />

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	   <!-- Include all compiled plugins (below), or include individual files as needed -->
  
<script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>

<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 

<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
<c:url var='getULBNewWater' value='/water/getULBNewWater' />
<c:url var="lookupHier" value="/water/lookupHier" />
<c:url var='consumerInfo' value='/water/consumerInfo' />
<c:url var='consumerTempAdd1' value='/water/consumerTempAdd1' />
<c:url var='additionalOwnTempAdd1' value='/water/additionalOwnTempAdd1' />
<c:url var='consumerStep2Add' value='/water/consumerStep2Add' />
<c:url var='jsonpaymentgateway' value='/water/rest/send/waterPaymentGateway' />
<c:url var='home' value='/' />
<c:url var='ackUrl' value='/water/view/acknowledgment' />
<c:url var='jsonLookupUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookup' /> 
<c:url var='jsonLookupDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupDet' /> 
<c:url var='jsonLookupHierDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupHeirDet' />
<c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
<c:url var="getUsageSubTypeDrop" value="/water/getUsageSubTypeDrop" />
<c:url var='getWaterTretment' value='/water/getWaterTretment' />
<c:url var='getStorageReservior' value='/water/getStorageReservior' />
<c:url var='getSourceofWater' value='/water/getSourceofWater' />
<c:url var='getPlumberList' value='/water/getPlumberList' />
<c:url var='getPipeSize' value='/water/getPipeSize' />
<c:url var='saveAppliData' value='/common/application/save'/>
<c:url var='getNewWaterData' value='/water/getNewWaterData'/>

<script>
	$(document).ready(function(){
		$(document).on('click', '.toggle-header', function(e){
			$content = $($(this).data('target'));
		    
		    if(!$content.is(':visible')){
		      $content.slideDown('slow');
		      $(this).find('i.toggle-icon').html('keyboard_arrow_up')
		    }
		    else{
		    	$content.slideUp('slow');
		      $(this).find('i.toggle-icon').html('keyboard_arrow_down')
		    }
		  });
	});

</script>

  <script type="text/javascript" src="http://www.google.com/jsapi"></script> 
	
	
	<script type="text/javascript">
	
	var jsonULBListUrl = "${jsonULBListUrl}";
	var jsonServiceListUrl = "${jsonServiceListUrl}";
	var getULBNewWater = "${getULBNewWater}";
	var lookupHier = "${lookupHier}";
	var consumerInfo = "${consumerInfo}";
	var consumerTempAdd1 = "${consumerTempAdd1}";
	var additionalOwnTempAdd1 = "${additionalOwnTempAdd1}";
	var consumerStep2Add = "${consumerStep2Add}";
	var jsonpaymentgateway = "${jsonpaymentgateway}";
	var home = "${home}";
	var ackUrl = "${ackUrl}";
	var jsonLookupUrl = "${jsonLookupUrl}";
	var jsonLookupDetUrl = "${jsonLookupDetUrl}";
	var jsonLookupHierDetUrl = "${jsonLookupHierDetUrl}";
	var jsonsearchWaterChargesUrl = "${jsonsearchWaterChargesUrl}";
	var getUsageSubTypeDrop = "${getUsageSubTypeDrop}";
	var getWaterTretmentURL = "${getWaterTretment}";
	var getStorageReserviorURL = "${getStorageReservior}";
	var getSourceofWaterURL = "${getSourceofWater}";
	var getPlumberListURL = "${getPlumberList}";
	var getPipeSizeURL = "${getPipeSize}";
	var saveAppliData = "${saveAppliData}";
	var getNewWaterData = "${getNewWaterData}";
	
	google.load("elements", "1", {packages: "transliteration"});
	
	</script>
	
	
	<!-- User Define Script For Page (Himanshu)-->
	<script type="text/javascript" src="<c:url value="../../static/js/upload.js" />"></script>
	<script type="text/javascript" src="<c:url value="/maha-dma/js/surveyReqForm-validation.js" />"></script>
	<script type="text/javascript" src="<c:url value="/maha-dma/js/new-water-connection.js" />"></script>
	<%-- <script src="<c:url value="/home/js/water_validation.js" />"></script> --%>
	
	
     

  </body>
</html>
</compress:html>
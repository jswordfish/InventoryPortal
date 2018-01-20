<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<compress:html >

<html lang="en" style="height:100%;">
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

</style>
  </head>
<body>
			<jsp:include page="../../common/citizenHeaderTop.jsp" /> 
			
<c:url var="jsonMarketChecklistUrl" value="/market/saveChecklist" />
  <div class="prop-section">

    <div class="container" >
    			<div class="form-title">
    				<h3 style="display:inline-block"><spring:message code="label.document.newtradelic.title" /></h3> <span class="home-icon"><i class="fa fa-home"></i></span> 
    			</div>
       <!-- Smart Wizard -->
                    <div id="wizard" class="form_wizard wizard_horizontal">
                    
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                <spring:message code="label.property.registration.form.step1" /><br />
                                <small><spring:message code="label.document.newtradelic.applicantdet" /></small>
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                              <spring:message code="label.property.registration.form.step2" /><br />
                              <small><spring:message code="label.document.newtradelic.tradeowner" /></small>
                          	</span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                <spring:message code="label.property.registration.form.step3" /><br />
                                <small><spring:message code="label.document.newtradelic.estabdet" /></small>
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-4">
                            <span class="step_no">4</span>
                            <span class="step_descr">
                                <spring:message code="label.property.registration.form.step4" /><br />
                                <small><spring:message code="label.document.newtradelic.tradeloc" /></small>
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-5">
                            <span class="step_no">5</span>
                            <span class="step_descr">
                                Step 5<br />
                                <small><spring:message code="label.document.newtradelic.lecdet" /></small>
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-6">
                            <span class="step_no">6</span>
                            <span class="step_descr">
                                Step 6<br />
                                <small><spring:message code="label.document.newtradelic.checklist" /></small>
                            </span>
                          </a>
                        </li>
                      </ul>
                      
                     <div id="step-1" class="ulb-section col-md-12">
                      	<h2 class="StepTitle"><spring:message code="label.document.newtradelic.applicantdet" /></h2>
                 
                      	<form:form action="" method="POST" modelAttribute="applicationBean" id="frmData">
                      		 			
			            <div class="row">
			              <div class="form-group col-md-12 col-sm-12 col-xs-12">
			                 
			                <label class="col-md-2" for="ulb-name"><spring:message code="label.document.newtradelic.ulbname" /></label>
			                <div class="col-md-6">
			                   <form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
			                <form:hidden path="" id="servDeschide" value="${servDeschide }"/>
			                 <form:hidden path="" id="holderData" value="${holderData }"/>
			              <form:select class=" form-control" path="ulbIdDesc" id="ulbIdDesc">
								<form:option value="">Select ULB</form:option>
			                </form:select> 
			                </div>
			              </div>
			              <div class="form-group col-md-12 col-sm-12 col-xs-12">
				               <label class="col-md-2" for="ulb-name"><spring:message code="label.document.newtradelic.servicename" /></label>
				                <div class="col-md-6">
				                 <form:select class=" form-control" path="setServiceId" id="setServiceId" readonly="true" >
			                			<form:option value="" readonly="true" ><spring:message code="label.document.newtradelic.selservicename" /></form:option>
			                	</form:select>
				                </div>
				            </div>
			           	 </div>
			           
                      		 <jsp:include page="applicant-details.jsp" /> 
                      	<div class="actionCustomBar">
							 <a class="btn buttonNextbtn" id="applicantSave"><spring:message code="label.btn.next" /></a>
						</div>
						</form:form>
                      </div>
                      <div id="step-2" class="ulb-section col-md-12">
                      	<h2 class="StepTitle"><spring:message code="label.document.newtradelic.tradeownerdetails" /></h2>
	                    <form:form class="" id="ownerDetail" name="ownerDetail"
											modelAttribute="tradeLicense" action="${jsonMarketUrl}">
	                     	<div class="form-group col-md-12">
                         	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.aadharno" /> <span class="required">*</span>:
	                            </label>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                             <input  name="holderUid" class=" form-control"  placeholder="" id="holderUid"
														required  maxlength="12"/>
                            </div>
                            
                            <label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.ownertype" /> <span class="required">*</span>:
	                            </label>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                              <select class="form-control" id="holderType" name="ttTlsLicHoldReq.holderType">
															<option value="">-Please Select-</option>
															<option value="M">Primary Owner</option>
												<option value="O">Secondary Owner</option>

														


													</select>
                            </div>
                            
                          </div>
                       
													<div class="form-group">
														<label class="control-label col-md-2 col-sm-2 col-xs-12">
															Owner Name<span class="required">*</span>:
														</label>
														<div class="col-md-2 col-sm-1 col-xs-12">
															<select class="form-control" id="title"
																name="ttTlsLicHoldReq.tmCmLookupDetByLookupDetIdTitleId">
																<option value="">-Select-</option>
																<c:forEach items="${title}" var="lookUp">
																	<option value="${lookUp.lookupDetId}">${lookUp.lookupDetDescEn}</option>
																</c:forEach>
															</select>
														</div>
														<div class="col-md-2 col-sm-3 col-xs-12">
															<input type="text" id="firstNameEn"
																class="form-control hasCharacter" required
																placeholder="First Name" name="ttTlsLicHoldReq.firstNameEn" />
														</div>
														<div class="col-md-3 col-sm-3 col-xs-12">
															<input type="text" id="middleNameEn"
																class="form-control hasCharacter" 
																placeholder="Middle Name"
																name="ttTlsLicHoldReq.middleNameEn" />
														</div>
														<div class="col-md-3 col-sm-3 col-xs-12">
															<input type="text" id="lastNameEn"
																class="form-control hasCharacter" required
																placeholder="Last Name" name="ttTlsLicHoldReq.lastNameEn" />
														</div>
													</div>
                            	
                          	
													<div class="form-group">
														<label class="control-label col-md-2 col-sm-2 col-xs-12">मालकाचे
															नाव<span class="required">*</span>:
														</label>
														<div class="col-md-2 col-sm-1 col-xs-12">
																		</div>
														<div class="col-md-2 col-sm-3 col-xs-12">
															<input type="text" id="firstNameRg" class="form-control"
																required placeholder="पहिले नाव"
																name="ttTlsLicHoldReq.firstNameRg" />
														</div>
														<div class="col-md-3 col-sm-3 col-xs-12">
															<input type="text" id="middleNameRg" class="form-control"
																 placeholder="मधले नाव"
																name="ttTlsLicHoldReq.middleNameRg" />
														</div>
														<div class="col-md-3 col-sm-3 col-xs-12">
															<input type="text" id="lastNameRg" class="form-control"
																required placeholder="आडनाव"
																name="ttTlsLicHoldReq.lastNameRg" />
														</div>
													</div>
											
												<%-- <div class="col-md-6 col-sm-12 col-xs-12 ">
													<div class="form-group">
														<label class="control-label col-md-4 col-sm-12 col-xs-12">Gender <span class="required">*</span>:</label>
													<div class="col-md-8 col-sm-12 col-xs-12">
															<select class="form-control" >
																<option value="0"> Select </option>
																<c:forEach items="${gender}" var="lookUp">
																	<option value="${lookUp.lookupDetId}">${lookUp.lookupDetDescEn}</option>
																	 value="${lookUp.lookupDetId}" title="${lookUp.lookupDetDescEn}" id="gender"
																  name="ttTlsLicHoldReq.tmCmLookupDetByLookupDetIdGenderId.lookupDetId" style="width: auto;"/>${lookUp.lookupDetDescEn}
																</c:forEach>
                                                       		
												</select>
														
														</div>
													</div> 
												</div> --%>
												<div class="form-group">
													<label class="control-label col-md-2 col-sm-12 col-xs-12">Gender <span class="required">*</span>:</label>
													<div class="col-md-4 col-sm-12 col-xs-12">
															<select class="form-control" id="gender"  name="ttTlsLicHoldReq.tmCmLookupDetByLookupDetIdGenderId.lookupDetId">
																<option value="0"> Select </option>
																<c:forEach items="${gender}" var="lookUp">
																	<option value="${lookUp.lookupDetId}">${lookUp.lookupDetDescEn}</option>
																</c:forEach>
															</select>
														
														</div>
														<label class="control-label col-md-2 col-sm-12 col-xs-12">Birth
															Date:</label>
														<div class="col-md-4 col-sm-12 col-xs-12">
															<div class="input-group">
																<input type="text" id="birth_year" 
																	class="form-control" name="ttTlsLicHoldReq.birthDate" />
																<span class="input-group-addon"> <span
																	class="glyphicon glyphicon-calendar"></span>
																</span>
															</div>
														</div>
												</div>
												
                          	<%-- <div class="form-group col-md-12">
	                            <label class="control-label col-md-2 col-sm-2 col-xs-12" >Gender :
	                            </label>
	                            <div class="col-md-4 col-sm-4 col-xs-12" id="container">
	                              		<c:forEach items="${gender}" var="lookUp">
														<label class="radio-inline">
														
														<input type="radio"
																 value="${lookUp.lookupDetId}"
																title="${lookUp.lookupDetDescEn}" id="gender"
																name="ttTlsLicHoldReq.tmCmLookupDetByLookupDetIdGenderId.lookupDetId" style="width: auto;"/>${lookUp.lookupDetDescEn}</label>

													</c:forEach>	</div>
	                            <label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.birthdate" />:
                            	</label>
	                           <div class="col-md-4 date col-sm-4 col-xs-12">
	                           <input type="text" id="birthYear"
															class="form-control" name="ttTlsLicHoldReq.birthYear" />
															<span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span></span>
	                              </div> -->
	                              <div class="col-md-6">
													<div class="form-group">
														<label class="control-label col-md-4 col-sm-12 col-xs-12">Birth
															Date:</label>
														<div class="col-md-8 col-sm-12 col-xs-12">
															<div class="input-group">
																<input type="text" id="birth_year" 
																	class="form-control" name="ttTlsLicHoldReq.birthDate" />
																<span class="input-group-addon"> <span
																	class="glyphicon glyphicon-calendar"></span>
																</span>
															</div>
														</div>
													</div>
													<!-- form-group -->
												</div>
												<!-- col-md-6 -->
                           </div> --%>
                           
                           <div class="form-group col-md-12">
	                       	  	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.resdetails" /> <span class="required">*</span> :
	                            </label>
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <textarea class="form-control" name="ttTlsLicHoldReq.residentialAddress" id="res_add">
	                              </textarea>
	                            </div>
	                            
	                            <label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.country" /><span class="required">*</span>: </label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select class="form-control" id="tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry"
										name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry.lookupDetHierId"
										 onChange="getState(this.value);">
										<option value="0">-select-</option>
										<c:forEach items="${country}" var="lookUp">

											<option value="${lookUp.lookupDetHierId}">${lookUp.lookupDetHierDescEn}</option>

										</c:forEach>
									</select>
								</div>
                            </div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.state" />
													<span class="required">*</span>: </label>
												<div class="col-md-4 col-sm-4 col-xs-12">
													<select class="form-control" id="state"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId2ResiState.lookupDetHierId"
														 onChange="getDistrict(this.value);">

														<option value="0">-select-</option>
													</select>
												</div>

												<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.district" /><span class="required">*</span>:
												</label>
												<div class="col-md-4 col-sm-4 col-xs-12">
													<select class="form-control" id="district"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId3ResiDist.lookupDetHierId"
														onChange="getTaluka(this.value);">

														<option value="0">-select-</option>
													</select>

												</div>


											</div>
											<div class="form-group col-md-12">
												<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.taluka" /><span class="required">*</span>
													: </label>
												<div class="col-md-4 col-sm-4 col-xs-12">
													<select class="form-control" id="taluka"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId4ResiTalu.lookupDetHierId"
														 onChange="getCity(this.value);">

														<option value="0">-select-</option>
													</select>

												</div>

												<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.city" /><span class="required">*</span>:
												</label>
												<div class="col-md-4 col-sm-4 col-xs-12">
													<select class="form-control" id="city"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId5ResiCity.lookupDetHierId"
														>

														<option value="0">-select-</option>
													</select>

												</div>


											</div>

                          <div class="form-group col-md-12">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.pincode" /> <span class="required">*</span>:
                            </label>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                              <input type="text" id="pincode" class="form-control"  maxlength="6" required="required" name="ttTlsLicHoldReq.resiPincode">
                            </div>
                         	
                          </div>
                          <div class="form-group col-md-12">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.mobno" /> :
                            </label>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                              <input type="text" id="mobile_no" class="form-control" maxlength="10" required="required" name="ttTlsLicHoldReq.mobileNo">
                            </div>
                            
                           	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.phoneno" />:
                            </label>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                              <input type="text" id="phone_no" class="form-control" maxlength="12"  name="ttTlsLicHoldReq.contactNo1">
                            </div>
                            
                           </div>
                            <div class="form-group col-md-12">
                           	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.emailid" />:
                            </label>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                              <input type="email" id="email_id" class="form-control" required="required" name="ttTlsLicHoldReq.emailAddress">
                            </div>
                            
                             <label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.photo" /> :
	                            </label>
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <div class="input-group">
						            <span class="input-group-btn">
						                <span class="btn btn-default btn-file">
						                    Browse… <input type="file" id="imgInp">
						                </span>
						            </span>
						            <input type="text" class="form-control" name="ttTlsLicHoldReq.holderBiophoto" readonly>
						          </div>
						        <img id='img-upload'/>
			                            	</div>
			                           	</div>
				                           		
				                           		<div class="row">
																<div class="col-md-offset-2 col-md-10 col-sm-12 col-xs-12">
																	<div class="form-group">
																		
																	 <label class="">
																	      <input type="checkbox" id="isSameAddress" style="width:auto;display:inline-block"> Is Correspondence Address Same As Residential?
																	    </label>
																	</div><!-- form-group -->
																</div>
															 </div>
                           		
                           		
											
													<div class="form-group">
														<label class="control-label col-md-2 col-sm-12 col-xs-12">
															Correspondence Address<span class="required">*</span>:
														</label>
														<div class="col-md-4 col-sm-12 col-xs-12">
															<textarea class="form-control" id="corr_add"
																name="ttTlsLicHoldReq.correspondenceAddress"></textarea>
														</div>
													</div><!-- form-group -->
												
											
											
                           	
                           					<div class="marB10 text-right">
                           						<a class="btn btn-primary active" onclick="savelicensedetails();">Add</a>
                           					</div>
			                           		
			                           		
											<div class="panel panel-sucess">
												<div class="panel-body table-responsive">
													<table id="propertyowner-table"
														 class="table table-striped table-bordered no-footer" role="grid" aria-describedby="datatable_info">
														<thead>
															<tr>
															
																<th><label class="control-label">Owner Type</label></th>
													<th><label class="control-label"><spring:message code="label.document.newtradelic.aadharno" /></label></th>
													<th><label class="control-label"><spring:message code="label.document.newtradelic.fullname" /></label></th>
													
													<th><label class="control-label"><spring:message code="label.document.newtradelic.resaddress" /></label></th>
													
													<th><label class="control-label"><spring:message code="label.document.newtradelic.mobno" /></label></th>
													<th><label class="control-label"><spring:message code="label.document.newtradelic.emailaddress" /></label></th>
												
													<th><label class="control-label"><spring:message code="label.btn.editview" /></label></th>
															</tr>
														</thead>
														<tbody>	
														</tbody>
													</table>
												</div>
											${payFlag}
										</div>
							
                            
                            <div class="marB10 text-right">
							 	<a class="btn buttonNextbtn1"><spring:message code="label.btn.next" /></a>
							 	 <a class="btn buttonPrevbtn"><spring:message code="label.btn.previous" /></a>
							</div>
                            
	                     			</form:form>
                      </div>
                      <div id="step-3" class="ulb-section col-md-12">
                      	<h2 class="StepTitle">Business Details</h2>
							<form:form id="establishDetails" modelAttribute="tradeLicense">
								<div class="form-group col-md-12">
	                          		<label class="control-label col-md-2 col-sm-2 col-xs-12">Business Status: <span class="required">*</span> 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            	<form:select class="form-control" id="establish_type"
														path="tmCmLookupDetByLookupDetIdBusinessType" required="required">
															<option value="0">-select-</option>
														<c:forEach items="${establishType}" var="lookUp">
															<option value="${lookUp.lookupDetId}">${lookUp.lookupDetDescEn}</option>
														</c:forEach>
													</form:select>
	                            	</div>
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12">Business Name: <span class="required">*</span>
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<form:input type="text" id="" path="businessName" class="form-control" required="required"/>
	                            	</div>
	                          	</div>
	                          	
	                          	<div class="form-group col-md-12">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12">Registration No. <span class="required">*</span>: 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<form:input type="text" id="" path="registrationNo" class="form-control" required="required"/>
	                            	</div>
	                         		
	                         		<label class="control-label col-md-2 col-sm-2 col-xs-12">Correspondence address  : <span class="required">*</span>
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<form:textarea class="form-control" path="businessAddress"></form:textarea>
	                            	</div>
	                          </div>
	                          
	                        
                            	<div class="form-group col-md-12">
                            		<label class="control-label col-md-2 col-sm-2 col-xs-12">
										Country <span class="required">*</span> : 
									</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<select class="form-control" required 
																id="tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry_step2"
																name="tmCmLookupDetHierarchicalByLookupDetHierId1BusiCntry"
																 onChange="getState_id(this.value);">
																<option value="0">-Select-</option>
																 <c:forEach items="${country}" var="lookUp">
																	<option value="${lookUp.lookupDetHierId}">${lookUp.lookupDetHierDescEn}</option>
																</c:forEach> 
																
															</select>
									</div>
                            	<!-- <div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="" class="form-control" name="tmCmLookupDetHierarchicalByLookupDetHierId5BusiCity">
                            	</div> -->
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12">State <span class="required">*</span> :  
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<select  class="form-control"id="state_id"
										name="tmCmLookupDetHierarchicalByLookupDetHierId2BusiState" required
										onChange="getDistrict_Id(this.value);">
											<option value="0">-Select-</option>
										</select> 
                            	</div>
                          	</div>
                          	
                          	<div class="form-group col-md-12">
                            		<label class="control-label col-md-2 col-sm-2 col-xs-12">
										District <span class="required">*</span> : 
									</label>
									
									<div class="col-md-4 col-sm-4 col-xs-12">
									 <select class="form-control"  id="district_id"
										
										name="tmCmLookupDetHierarchicalByLookupDetHierId3BusiDist"
										onChange="getTaluka_id(this.value);">
											<option value="0">-Select-</option>
										</select> 
									</div>
                        <!-- name="tmCmLookupDetHierarchicalByLookupDetHierId3ResiDist" -->
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12">Taluka <span class="required">*</span> :   
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
										 <select class="form-control" id="taluka_id" 
										 name="tmCmLookupDetHierarchicalByLookupDetHierId4BusiTalu" required
										
										onChange="getCity_id(this.value);">
											<option value="0">-Select-</option>
										</select>
									</div>
                          	</div>
                          	
                          	
                          	<div class="form-group col-md-12">
                            		<label class="control-label col-md-2 col-sm-2 col-xs-12">
										City <span class="required">*</span>: 
									</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<select id="city_id" class="form-control" required
														name="tmCmLookupDetHierarchicalByLookupDetHierId5BusiCity"
														>
									<option value="0">-Select-</option>
										</select>
									</div>
									
					 		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.pincode" />: <span class="required">*</span>
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<form:input type="text" id="" class="form-control" path="businessPincode"/>
                            	</div>
                          	</div>
                          	
                          	
                          	 <div class="form-group col-md-12">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.mobno" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<form:input type="text" id="" class="form-control"  maxlength="10" path="businessMobileNo" required="required"/>
                            	</div>
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.phoneno" />: 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<form:input type="text" id="" class="form-control" path="businessPhoneNo"/>
                            	</div>
                          </div>
                          
                           <div class="form-group col-md-12">
                           	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.emailid" /> :
                            </label>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                              <form:input type="email" id="" class="form-control" required="required" path="businessEmailAddress"/>
                            </div>
                            
                            </div>
	                            <!--  <div class="actionCustomBar"> -->
<div class="marB10 text-right">
							 	<a class="btn buttonNextbtn2"><spring:message code="label.btn.next" /></a>
							 	 <a class="btn buttonPrevbtn"><spring:message code="label.btn.previous" /></a>
							</div>
	                          
							</form:form>
                      </div>
                      <div id="step-4" class="ulb-section col-md-12">
                      	<h2 class="StepTitle"><spring:message code="label.document.newtradelic.tradeloc" /></h2>
							<form:form id="locationDetails" modelAttribute="tradeLicense">
							
								 <div class="form-group col-md-12">
	                          		<label class="control-label col-md-2 col-sm-2 col-xs-12">Property No :  
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            	<form:input type="text" id="" class="form-control" path="propertyNo"/>
	                            	</div>
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12">Connection No. : 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<form:input type="text" id="" class="form-control" path="connectionNo"/>
	                            	</div>
	                         	</div>
							
							 
								<div class="form-group col-md-12">
	                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.surveyno" />:  
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            	<form:input type="text" id="" class="form-control" path="surveyGatNo"/>
	                            	</div>
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.ctsno" />: 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<form:input type="text" id="" class="form-control" path="citySurveyNo"/>
	                            	</div>
	                         	</div>
	                         	
	                         	
	                         	<div class="form-group col-md-12">
	                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.plotno" />  :  
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            	<form:input type="text" id="" class="form-control" path="plotNo"/>
	                            	</div>
	                         	</div>
	                         	<div class="form-group col-md-12">
	                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.ward" /><span class="required">*</span> : 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            	<form:select class="form-control" id="ward"
														onchange="getZone=(this.value);" path="tmCmLookupDetHierarchicalByLookupDetHierId1Ward" required="required">
															
														<c:forEach items="${licenWardHiear}" var="lookUp">
															<option value="${lookUp.lookupDetHierId}">${lookUp.lookupDetHierDescEn}</option>
														</c:forEach>
														<option value="0">-Select-</option>
													</form:select>
	                            	</div>
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12">Zone :
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<select class="form-control" id="zone" name="tmCmLookupDetHierarchicalByLookupDetHierId2Ward" >
														<option></option>
													</select>
	                            	</div>
	                         	</div>
	                         	<div class="form-group col-md-12">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Block:
									</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<select class="form-control"id="block" 
											                name="ttTlsLicHold.tmCmLookupDetHierarchicalByLookupDetHierId2Ward.lookupDetHierId"
											                	 onChange="getRoute(this.value);">
																<option value="0">-Select-</option>
										</select>
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">
									Route:
									</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<select class="form-control"id="route" 
											                name="ttTlsLicHold.tmCmLookupDetHierarchicalByLookupDetHierId2Ward.lookupDetHierId"
											                	 onChange="getBlock(this.value);">
																<option value="0">-Select-</option>
										</select>
									</div>
								</div>
								
								 <div class="form-group col-md-12"> 
									<label class="control-label col-md-2 col-sm-2 col-xs-12">
									Route 1:
									</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<select class="form-control"id="route_1" 
											                name="ttTlsLicHold.tmCmLookupDetHierarchicalByLookupDetHierId2Ward.lookupDetHierId">
                                                   <option value="0">-Select-</option>
										</select>
									</div>
									</div>
	                         	<div class="form-group col-md-12">
	                          		<label class="control-label col-md-2 col-sm-2 col-xs-12">Location :  
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            	
		                            	<select class="form-control" id="locality"
										name="localityId"
										 onChange="getApartment(this.value);">
										<option value="0">-select-</option>
										<c:forEach items="${location}" var="lookUp">

											<option value="${lookUp.lookupDetHierId}">${lookUp.lookupDetHierDescEn}</option>

										</c:forEach>
								
		                            		<option></option>
		                            	</select>
	                            	</div>
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.bldgcomplex" /><span class="required">*</span>: 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                            		<!-- input type="text" id="" class="form-control" --> <select class="form-control" id="apartment"
										name="apartmentId"
										 required>
										<option value="0">-select-</option>
										<c:forEach items="${apartment}" var="lookUp">

											<option value="${lookUp.lookupDetHierId}">${lookUp.lookupDetHierDescEn}</option>

										</c:forEach>
								
		                            		<option></option>
		                            	</select>
	                            	</div>
	                         	</div>
	                         	<div class="form-group col-md-12">
	                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.floorno" /> :  
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            	<select class="form-control" id="tmCmLookupDetByLookupDetIdFloorNo"
														name="tmCmLookupDetByLookupDetIdFloorNo" required>
														<option value="0">-select-</option>
														<c:forEach items="${floorNo}" var="lookUp">
															<option value="${lookUp.lookupDetId}">${lookUp.lookupDetDescEn}</option>
														</c:forEach>
														</select>
	                            	</div>
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.flatshop" />: 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                            	<form:input type="text" id="flat_no" class="form-control"
														path="flatNo" required="required"/>
	                            	</div>
	                         	</div>
	                         	<div class="form-group col-md-12">
	                          		<label class="control-label col-md-2 col-sm-2 col-xs-12">Business Place Type   <span class="required">*</span>:
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            	<select class="form-control" id="tmCmLookupDetByLookupDetIdMarketType"
														name="tmCmLookupDetByLookupDetIdMarketType">
															<option value="0">-select-</option>
														<c:forEach items="${marketType}" var="lookUp">

															<option value="${lookUp.lookupDetId}">${lookUp.lookupDetDescEn}</option>

														</c:forEach>
													</select>
		                            	
	                            	</div>
	                            	
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.landowner" />:  <span class="required">*</span>
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
		                            <form:input type="text" id="land_owner_name"
														class="form-control hasCharacter" path="landOwnerName" required="required"/>
	                            	</div>
	                         	</div>
	                         	<div class="form-group col-md-12">
                          		
	                            	<div class="col-md-4 col-sm-6 col-xs-12 col-md-offset-2">
	                            		 	<label class="">
										      <input type="checkbox" value="1" id="trade_owner" name="isTraderPropOwner" style="display:inline-block;width:auto"/> <spring:message code="label.document.newtradelic.istradepro" />
										    </label>
	                            	
	                            	</div>
	                            	<div class="col-md-2 col-sm-6 col-xs-12 col-md-offset-2">
										<div class="checkbox">
										  <label><input type="checkbox" value="1" id="property_legal" name="isPropertyLegal" style="display:inline-block;width:auto" /> <spring:message code="label.document.newtradelic.ispropleg" /></label>
										</div>
	                            	</div>
	                         	</div>
	                         	<div class="form-group col-md-12">
	                          		<div class="col-md-4 col-sm-6 col-xs-12 col-md-offset-2">
										<div class="checkbox">
										  <label><input type=checkbox value="1" id="map_approve"	name="isMapApproved" style="display:inline-block;width:auto"/><spring:message code="label.document.newtradelic.ismapapproved" /></label>
										</div>
	                            	</div>
	                            	<div class="col-md-4 col-sm-6 col-xs-12 col-md-offset-2">
	                            		<div class="checkbox">
										  <label><input type="checkbox" value="1" id="is_consent" name="isConsentLetterTakenOwner" style="display:inline-block;width:auto"/>Is Consent letter taken from owner?</label>
										</div>
	                            	</div>
	                         	</div>
							
								<!-- <div class="actionCustomBar"> -->
								      <div class="marB10 text-right">
								 	<a class="btn buttonNextbtn3">Next</a>
								 	 <a class="btn buttonPrevbtn">Previous</a>
								</div>
							</form:form>
                      </div>
                      
                      <div id="step-5" class="ulb-section col-md-12">
                      	<h2 class="StepTitle"><spring:message code="label.document.newtradelic.licensedet" /></h2>
                      	<form id="licenseDetail">
                      		<div class="form-group col-md-12">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.licensetype" />:
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<select class="form-control required" id="tmCmLookupDetHierarchicalByLookupDetHierId1LicType"
															name="licenTypeList"
															onChange="getSubType(this.value,'subtype');" >
																<option value="">-select-</option>
															<c:forEach items="${licenTypeHiear}" var="lookUp">
																<option value="${lookUp}">${lookUp.lookupDetHierDescEn}</option>
															</c:forEach>
														</select>
	                            	</div>
                           
	                           	<!-- 	<label class="control-label col-md-2 col-sm-2 col-xs-12" >License Sub Type :
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<select class="form-control" id="sub_type"
															name="ttTlsLicDet.tmCmLookupDetHierarchicalByLookupDetHierId2LicType" onChange="getSubType(this.value,'category');" required>
															<option></option>
														</select>
	                            	</div> -->
                          		</div>
                          	<!-- 	<div class="form-group col-md-12">
                          		
                          		 <label class="control-label col-md-2 col-sm-2 col-xs-12" >License Category :
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<select class="form-control" id="category"
															name="ttTlsLicDet.tmCmLookupDetHierarchicalByLookupDetHierId3LicType" onChange="getSubType(this.value,'category1');" required>
															<option></option>
														</select>
	                            	</div> 
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" >License Sub Category :
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<select class="form-control" id="subcategory1"
															name="ttTlsLicDet.tmCmLookupDetHierarchicalByLookupDetHierId4LicType" onChange="getSubType(this.value,'category2');" required >
															<option></option>
														</select>
	                            	</div>
                          		
                          		</div> -->
                          	<!-- 	<div class="form-group col-md-12">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12" >License Sub Category2 :
	                            	</label>
                          		<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<select class="form-control" id="subcategory2"
															name="ttTlsLicDet.tmCmLookupDetHierarchicalByLookupDetHierId5LicType"  required>
															<option></option>
														</select>
	                            	</div>
	                            	</div> -->
                          	                          		<div class="form-group col-md-12">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.temppermenant" /> : <span class="required">*</span>
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<select class="form-control" id="temp_perm"
															name="licenseTempFlag" required onchange="selectDate(this.value);">
															
															<option Value="P"><spring:message code="label.document.newtradelic.permanent" /></option>
															<option value="T"><spring:message code="label.document.newtradelic.temp" /></option>
														</select>
	                            	</div>
                         
	                           		
                          		</div>
                          		  <div class="form-group col-md-12" id="tempDate" style="display: inline-flex;">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.fromdate" /><span class="required">*</span>:
	                            	</label>
	                            	<div class="input-group date col-md-4 col-sm-4 col-xs-12" id="fromDate">
	                              		<input type="text" id="fromDate"
															class="form-control" name="tempFromDate" />
															<span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span></span>

	                            	</div>
                           
	                           		<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.todate" />:<span class="required">*</span>
	                            	</label>
	                            	<div class='input-group date col-md-4 col-sm-4 col-xs-12' id='toDate'>
				                    	<input type='text' class="form-control"
															id="toDate" name="tempToDate" />
				                    	<span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    	</span>
			                	  	</div>
                          		</div> 
                          		<div class="form-group col-md-12">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.tradearea" /> : <span class="required">*</span>
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<input type="text" id="trade_area"
															class="form-control" name="businessArea" required />
	                            	</div>
                           
	                           		
                          		</div>
                          		<div class="form-group col-md-12">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.prevlic" /> :
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<input type="text" id="prev_lice_no"
															class="form-control" name="previousLicenseNo" />
															

	                            	</div>
                           
	                           		<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.prevlicdate" />:<span class="required">*</span>
	                            	</label>
	                            	<div class='input-group date col-md-4 col-sm-12 col-xs-12' id='prelicdate'>
				                    	<input type='text' class="form-control"
															id="prev_lice_date" name="" />
				                    	<span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    	</span>
			                	  	</div>
                          		</div>
                          		<div class="form-group col-md-12">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.totalnoemp" /> : <span class="required">*</span>
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<input type="text" id="no_of_emp"
															class="form-control hasNumber" name="totalEmployee" required/>
	                            	</div>
                           
	                           		<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.totalnomachine" /> : <span class="required">*</span>
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<input type="text" id="no_of_machine"
															class="form-control hasNumber" name="totalMachines" />
	                            	</div>
                          		</div>
                          		<div class="form-group col-md-12">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.licrej" /> :
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<select class="form-control" id="lice_rej"
															name="isLicenseRejectedBefore">
															<option value="Y"><spring:message code="label.document.newtradelic.yes" /></option>
															<option value="N"><spring:message code="label.document.newtradelic.no" /></option>
														</select>
	                            	</div>
                           
	                           		<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.lichold" />:
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<input type="text" id="" class="form-control">
	                            	</div>
                          		</div>
                          		
                          		<div class="form-group col-md-12">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12" ><spring:message code="label.document.newtradelic.remark" /> :
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<textarea class="form-control" name="remarks"></textarea>
	                            	</div>
                          		</div>
                          		
                          			<div class="panel panel-sucess">
											<div class="panel-body">
												<table id="subTypeTable"
													 class="table table-striped table-responsive table-bordered dataTable" role="grid" aria-describedby="datatable_info">
													<thead>
														<tr>
														
															<th><label class="control-label"><spring:message code="label.document.newtradelic.subtype" /></label></th>
														
															<th><label class="control-label"><spring:message code="label.document.newtradelic.category" /></label></th>
															<th><label class="control-label"><spring:message code="label.document.newtradelic.subcat" /></label></th>
															<th><label class="control-label"><spring:message code="label.document.newtradelic.subcat1" /></label></th>
															
															<th><label class="control-label"><spring:message code="label.document.newtradelic.quantity" /></label></th>
															<th><label class="control-label"><spring:message code="label.document.newtradelic.uom" /></label></th>
															<th><label class="control-label"><spring:message code="label.document.newtradelic.units" /></label></th>
														
															<th><label class="control-label"><spring:message code="label.document.newtradelic.charge" /></label></th>
															<th><label class="control-label"><spring:message code="label.document.newtradelic.addremove" /></label></th>
														</tr>
													</thead>
													<tbody>	
														<tr>
															
															<td><select class="chargeDet" id="sub_type"
															name="tmCmLookupDetHierarchicalByLookupDetHierId2LicType" onChange="getSubType(this.value,'category');getCharge(this.value,0);" >
															<option value="0">-select-</option>
														</select></td>
															<td><select class="" id="category"
															name="tmCmLookupDetHierarchicalByLookupDetHierId3LicType" onChange="getSubType(this.value,'category1');" >
															<option value="0">-select-</option>
														</select></td>
															<td><select class="" id="subcategory1"
															name="tmCmLookupDetHierarchicalByLookupDetHierId4LicType" onChange="getSubType(this.value,'category2');"  >
															<option value="0">-select-</option>
														</select></td>
															<td><select class="" id="subcategory2"
															name="tmCmLookupDetHierarchicalByLookupDetHierId5LicType"  >
															<option value="0">-select-</option>
														</select></td>
															<td><input type="text" class="" name="licenseQty" id="quantity" value="0"></td>
															<td><select class="" id="uom"
															name="tmCmLookupDetHierarchicalByLookupDetHierId1Uom"
															onchange="getUnits(this.value);">
																<option value="0">-select-</option>
															<c:forEach items="${unitOfMeasure}" var="lookUp">
																<option value="${lookUp.lookupDetHierId}">${lookUp.lookupDetHierDescEn}</option>
															</c:forEach>

														</select></td>
														<td>	<select class="" id="units"
															name="tmCmLookupDetHierarchicalByLookupDetHierId2Uom">
															<option value="0">-select-</option>
														</select></td>
														<td><input type="text" name="chargeAmt" id="charge0"></td>
															<td>
																<a><i class="fa fa-plus btnAdded" id="addSutype" aria-hidden="true"></i></a><!--  / <a><i class="fa fa-minus btnDeleted" aria-hidden="true"></i></a> -->
															</td>
														</tr>
													</tbody>
													<tfoot>
														<tr>
															<td colspan="5"><spring:message code="label.document.newtradelic.total" /></td>
															<td colspan="2"><label id="amount"></label></td>
															
														</tr>
													</tfoot>
												</table>
											</div>

										</div>
										
		                          		<!-- 	<div class="actionCustomBar"> -->
		                          	      <div class="marB10 text-right">
										 	<a class="btn buttonNextbtn4"><spring:message code="label.btn.next" /></a>
										 	 <a class="btn buttonPrevbtn"><spring:message code="label.btn.previous" /></a>
										</div>
										
										
						
                      	</form>
                      </div> 
                     <!--  step-6 -->
                      <div id="step-6" class="ulb-section col-md-12">
                        <h2 class="StepTitle"><spring:message code="label.document.newtradelic.uploaddoc" /></h2>
                       	
 <form:form modelAttribute="filesBean"  method="post" enctype="multipart/form-data" action="${jsonMarketChecklistUrl}" id="checkListForm"> 
 
  <c:choose>

	<c:when test="${action == 'V'}">
                          	<input type="hidden"  id="srnIdView" value="${srnId }">
                          	 <jsp:include page="view-checklist.jsp" />	
                          	</c:when>
                          		<c:otherwise>
                          	 <jsp:include page="checklist.jsp" />
                          	</c:otherwise>
                          	</c:choose>
		<h2 class="StepTitle">Fees</h2>  
		                          <div class="form-group">
		                            	 <label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.newtradelic.charges" />:
			                            	</label>
			                            <div class="col-md-4 col-sm-4 col-xs-12">
			                              <input type="text" id="totalAmt" class="form-control" required="required" name="finalAmount">
			                            </div>
			                            </div>
		</form:form>
                          
                          	
                          	<!-- <div class="actionCustomBar"> -->
                          	<div class="marB10 text-right">
							 	<a class="btn buttonfnshbtn"><spring:message code="label.btn.next" /></a>
							 	 <a class="btn buttonPrevbtn"><spring:message code="label.btn.previous" /></a>
							</div>
                      </div>
                      
                      
                      
                      

                    </div>

      
    </div>
  </div>




<jsp:include page="jsFooter.jsp" />
<jsp:include page="../citizenFooter.jsp" />
     <c:url var="fileUploadUrl" value="/fileupload/upload" />
   <c:url var="jsonMarketDetUrl" value="/market/saveDetLicense" />
    
   <c:url var="jsonChargesUrl" value="/market/charge"/>
<c:url var="ownerListUrl" value="/market/licenseOwnerList" />
<c:url var="jsonMarketUrl" value="/market/saveLicense" />
<c:url var='jsonPropertyUrl' value='/property/rest/search/knowproperty' />
<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
<c:url var='jsonWaterUrl' value='/water/rest/search/knowwater' />
<c:url var='jsonBillDetailUrl' value='/water/rest/search/waterPayDue' />
<c:url var='sendForPay' value='/water/send/waterPayMoney' />
<c:url var="getTryList" value="/market/getTryList" />
<c:set var='sessionId' value='${pageContext.session.id}' />
<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
<c:url var='jsonLoadDataUrl' value='/issuance/load' />
 <c:url var='jsonLookupUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookup' /> 
<c:url var='jsonLookupDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupDet' /> 
<c:url var='jsonLookupHierDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupHeirDet' /> 
<c:url var='jsonLookupLevelUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookup' />
<c:url var ='localityIDAutoComplt' value='/rest/common/locality/localitylist'/>

<c:url var='sendNoDuePayProperty' value='/common/application/save'/>
<c:url var="paymentUrl" value="/market/PayCharge"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	   <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
<script>
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
</script>
<script>
var rows = "";
var itemIndex = "";
var noofrow="";
$('table').on('click', '.btnAdded', function(){  
	
	noofrow++;
	
  
    rows = '<tr><td><select class="chargeDet" id="sub_type'+noofrow+'"'+
		'name="tmCmLookupDetHierarchicalByLookupDetHierId2LicType" onChange="getSubTypeData(this.value,\''+'category'+'\','+noofrow+');getCharge(this.value,'+noofrow+');" required> '+
	'<option value="0">-select-</option></select></td>'+
	'<td><select class="" id="category'+noofrow+'" '+
	'name="tmCmLookupDetHierarchicalByLookupDetHierId3LicType" onChange="getSubTypeData(this.value,\''+'category1'+'\','+noofrow+');">'+
	'<option value="0">-select-</option>'+
'</select></td>'+
	'<td><select class="" id="subcategoryA'+noofrow+'" '+
	'name="tmCmLookupDetHierarchicalByLookupDetHierId4LicType" onChange="getSubTypeData(this.value,\''+'category2'+'\','+noofrow+');">'+
	'<option value="0">-select-</option></select></td>'+
	'<td><select class="" id="subcategoryB'+noofrow+'"'+
	'name="tmCmLookupDetHierarchicalByLookupDetHierId5LicType">'+
	'<option value="0">-select-</option></select></td>'+
	'<td><input type="text" class="" name="licenseQty" id="quantity'+noofrow+'" value="0"/></td>'+
	'<td><select class="" id="uom'+noofrow+'"'+
	'name="tmCmLookupDetHierarchicalByLookupDetHierId1Uom"'+
	'onchange="getUnitList(this.value,'+noofrow+');">'+
		'<option value="0">-select-</option>'+
'</select></td>'+
'<td>	<select class="" id="units'+noofrow+'"'+
	'name="tmCmLookupDetHierarchicalByLookupDetHierId2Uom">'+
	'<option value="0">-select-</option></select></td>'+
'<td><input type="text" name="chargeAmt" id="charge'+noofrow+'"></td><td><a><i class="fa fa-plus btnAdd" aria-hidden="true"></i></a></span><span>/</span><span><a><i class="fa fa-minus btnDeleted" aria-hidden="true"></i></a></span></td> '+
' </tr>';

		
    var $this     = $(this);
    var appd=$this.closest('tr');
    $(rows).insertAfter(appd);
    
    
    $("#licenTypeList"+noofrow).val($("#licenTypeList").val());
    
    
    $.ajax({
		type : "GET",
		url : "${getTryList}",
		data : "parentId=" + $('#tmCmLookupDetHierarchicalByLookupDetHierId1LicType option:selected').val(),
		dataType : "json",
		success : function(data) {

			//window.location="${suceesSavePropDataUrl}";

			//console.log("VAL: "+data.resultData[0].applicantName);

			var newArray = [];
			var totCol = 0;
			
			$("#sub_type"+noofrow).empty();
			$("#sub_type"+noofrow).append(
					$("<option></option>").attr("value", '0').text(
							'Please select'));
			$.each(data.resultData, function(i, result) {

				$("#sub_type"+noofrow).append(
						$("<option></option>").attr("value",
								result.lookupDetHierId).text(
								result.lookupDetHierDescEn));

			});
				
		}
	});
    
    
    $.ajax({
 	      type: "GET",
 	      url: "${jsonLookupUrl}",
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
	      		      
 	      		if(result.lookupCode == "UOM") 
	      		   {
	      			 lookupId=result.lookupId;
	      			lookupCode=result.lookupCode;
	      			
	      			 $.ajax({
	      	     	      type: "POST",
	      	     	      url: "${jsonLookupDetUrl}",
	      	     	      contentType : "application/json",
	      	     	      dataType : 'json',
	      	     	      //data : "deptId="+aaa,
	      	     	      async: false,
	      	     	      headers: {
	      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
	      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
	      	     	          //"USER":btoa(getUserId(storeInvUser)),
	      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
	      	     	      },
	      	     	      success: function (data){
	      	     	    	
	      	     	    	var lookupDetId;
	      	     	    	$.each(data.resultData, function (i, result) {

	      	     	    		if(result.lookupDetValue =='MRC' && result.lookupId==lookupId){
	    	     	    			lookupId=result.lookupDetId;
	    	     	    			 $.ajax({
	    			      	     	      type: "POST",
	    			      	     	      url: "${jsonLookupHierDetUrl}",
	    			      	     	      contentType : "application/json",
	    			      	     	      dataType : 'json',
	    			      	     	      //data : "deptId="+aaa,
	    			      	     	      async: false,
	    			      	     	      headers: {
	    			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
	    			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
	    			      	     	          //"USER":btoa(getUserId(storeInvUser)),
	    			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
	    			      	     	      },
	    			      	     	      success: function (data){
	    			      	     	    
	    			      	     	    	 $("#uom"+noofrow).empty();
	    				      					$("#uom"+noofrow).append(
	    				      							$("<option></option>").attr("value", '0').text(
	    				      									'Please select'));
	    				      	     	    	$.each(data.resultData, function (i, result) {
	    				      	     	    		if(lookupId == result.lookupDetId){
	    				      	     	    			
	    				      	     	    			$("#uom"+noofrow).append(
	    				      	    							$("<option></option>").attr("value",
	    				      	    									result.lookupDetHierId).text(
	    				      	    									result.lookupDetHierDescEn));
	    				      	     	    		}
	    				      	     	    		}); 
	    			      	     	    		
	    			      	     	      
	    			      	     	      }
	    			      	              });

	    	     	    		}
	      	     	    	});
	      		   	         
	      		   	      },
	      		   	      
	      		   	      });    }
	      		   	      
		   	      }); 
 	      }
    });
	      			
    
    
    
}).on('click', '.btnDeleted', function(){
	
	if(noofrow == 0){
		alert("can not delete all rows");
	}
	else{
		$(this).closest('tr').remove();
	}
	noofrow--;
});
function getSubTypeData(val,type,noofrow) {

	$.ajax({
		type : "GET",
		url : "${getTryList}",
		data : "parentId=" + val,
		dataType : "json",
		success : function(data) {

			//window.location="${suceesSavePropDataUrl}";

			//console.log("VAL: "+data.resultData[0].applicantName);

			var newArray = [];
			var totCol = 0;
			
			
			if(type=='category')
			{
		$("#category"+noofrow).empty();
		$("#category"+noofrow).append(
				$("<option></option>").attr("value", '0').text(
						'Please select'));
		$.each(data.resultData, function(i, result) {

			$("#category"+noofrow).append(
					$("<option></option>").attr("value",
							result.lookupDetHierId).text(
							result.lookupDetHierDescEn));

		});
			}
			if(type=='category1')
			{
		$("#subcategoryA"+noofrow).empty();
		$("#subcategoryA"+noofrow).append(
				$("<option></option>").attr("value", '0').text(
						'Please select'));
		$.each(data.resultData, function(i, result) {

			$("#subcategoryA"+noofrow).append(
					$("<option></option>").attr("value",
							result.lookupDetHierId).text(
							result.lookupDetHierDescEn));

		});
			}
			if(type=='category2')
			{
		$("#subcategoryB"+noofrow).empty();
		$("#subcategoryB"+noofrow).append(
				$("<option></option>").attr("value", '0').text(
						'Please select'));
		$.each(data.resultData, function(i, result) {

			$("#subcategoryB"+noofrow).append(
					$("<option></option>").attr("value",
							result.lookupDetHierId).text(
							result.lookupDetHierDescEn));

		});
			}

		}

	});
}
function getUnitList(val,noofrow) {

	$.ajax({
		type : "GET",
		url : "${getTryList}",
		data : "parentId=" + val,
		dataType : "json",
		success : function(data) {

			//window.location="${suceesSavePropDataUrl}";

			//console.log("VAL: "+data.resultData[0].applicantName);

			var newArray = [];
			var totCol = 0;
			$("#units"+noofrow).empty();
			$("#units"+noofrow).append(
					$("<option></option>").attr("value", '0').text(
							'Please select'));
			$.each(data.resultData, function(i, result) {

				$("#units"+noofrow).append(
						$("<option></option>").attr("value",
								result.lookupDetHierId).text(
								result.lookupDetHierDescEn));

			});

		}

	});
}



</script>


  <script>
  	$(document).ready(function(){
  		
  		
  		/* var propertyData =  $("#holderData").val();
		console.log(propertyData);
		var data = $.parseJSON(propertyData);
		$.each(data.resultData, function (i, item){     
				 $("#propertyowner-table tbody").append("<tr> <td>"+item.holderType+"</td> <td>"+item.holderUid+"</td> <td>"+item.firstNameEn+"</td> <td>"+item.residentialAddress+"</td> <td>"+item.mobileNo+"</td> <td>"+item.emailAddress+"</td>  <td></tr>");
	        }); */

  		
  		
  		
  		
  		
  		$("#tempDate").hide();
  		
  		
  		$('#birth_year').datetimepicker({
			format : "DD/MM/YYYY",
			maxDate: new Date() 
		});
  		
  		$(".actionBar").hide();
  		$('#fromDate').datetimepicker({
			format : "DD/MM/YYYY"
		});
  		
  		$('#toDate').datetimepicker({
			format : "DD/MM/YYYY"
		});
  		
  		$('#prev_lice_date').datetimepicker({
			format : "DD/MM/YYYY"
		});
  		
  		 getULBListIDnDesc("${jsonULBListUrl}","ulbIdDesc");
  		 getServiceList("${jsonServiceListUrl}","setServiceId");
  		 $("#setServiceId").val($("#servDeschide").val());

  		 if($("#ulbIdDeschide").val() != "0")
  			{
  	   	  		$("#ulbIdDesc").val($("#ulbIdDeschide").val());
  			}
  		$('.buttonNextbtn').click(function()
				{
		//markect_validations.js
		if(submitApplicantValidations())
			{
				addApplicant();
	           	 $(".buttonNext").click();
	           	 $('html, body').animate({ scrollTop: 0 }, 'fast');
					
			}
		});
  		 
  		$('.buttonNextbtn1').click(function()
					{
			///* markect_validations.js
  			 var count = $('#propertyowner-table tbody').children('tr').length;
 			if(count!=0){
 				var dataSet = [];
				var formData = $("#ownerDetail")
						.serializeObject();

				console.log(formData)
				/* $.ajax({
					type : "POST",
					url : "${ownerListUrl}",
					// contentType : "application/json",
					dataType : 'json',
					data : formData,
					async : false,
					headers : {
						"Authorization" : "Basic "
								+ btoa("ashok:pass")

					},
					success : function(data) {
						
					}
				}); */
				$.ajax({
					type : "POST",
					url : "${jsonMarketUrl}",
					// contentType : "application/json",
					dataType : 'json',
					data : formData,
					async : false,
					headers : {
						"Authorization" : "Basic "
								+ btoa("ashok:pass")

					},
					success : function(data) {
						
					}
				});
				
	           	 $(".buttonNext").click();
	           	 $('html, body').animate({ scrollTop: 0 }, 'fast');
			
 			
 						
 			}	
 			else
 			{
 				new PNotify({
 					
 					title : 'Please fill all required fields',
 					styling : 'bootstrap3',
 					type : 'error'
 				});
 			}
				
				
 					
 					
			});
			
			$('.buttonNextbtn2').click(function()
					{
			
				 if (MarketFormValid_step2()) { 
					
					
					var formData = $("#establishDetails")
					.serializeObject();

			
			$.ajax({
				type : "POST",
				url : "${jsonMarketUrl}",
				// contentType : "application/json",
				dataType : 'json',
				data : formData,
				async : false,
				headers : {
					"Authorization" : "Basic "
							+ btoa("ashok:pass")

				},
				success : function(data) {
					

				}
			});
			
						$('.buttonNext').click();
					
				 }
				
				
 				
 					
			});
			  $('.buttonNextbtn3').click(function()
						{
					
					/* if (MarketFormValid_step4()) { */

						var formData = $("#locationDetails")
						.serializeObject();

				
				$.ajax({
					type : "POST",
					url : "${jsonMarketUrl}",
					// contentType : "application/json",
					dataType : 'json',
					data : formData,
					async : false,
					headers : {
						"Authorization" : "Basic "
								+ btoa("ashok:pass")

					},
					success : function(data) {
						
					}
				});
						$('.buttonNext').click();
					
					/* } */
					
					
					
	 					// alert("Next Button Clicked");
	 					
				});	  
      $('.buttonNextbtn4').click(function()
					{
				
				if (MarketFormValid_step3()) {
					
					var formData = $("#licenseDetail")
					.serializeObject();
					var json_string = JSON.stringify(formData);
					console.log("json --- " + json_string);

					var finalArry = removeEmptyValueFromJSON(json_string);
					console.log("final array" + finalArry);

			
			$.ajax({
				type : "POST",
				url : "${jsonMarketDetUrl}",
				contentType : "application/json",
				dataType : 'json',
				data : finalArry,
				async : false,
				headers : {
					"Authorization" : "Basic "
							+ btoa("ashok:pass")

				},
				success : function(data) {
					
				}
			});
					$('.buttonNext').click();
				
				}
				
				
				
 					// alert("Next Button Clicked");
 					
			});	 
  		 
      $('.buttonfnshbtn').click(function()
				{
    	  console.log("Ready for submiy.......");
    	  if(validateCheckList())
    		  {
    	 		$("#checkListForm").submit();
    		  }
			/* if (MarketFormValid_step3()) { */
				
				
			
				//$('.buttonFinish').click();
			
			/* } */
			
			
			
					// alert("Next Button Clicked");
					
		});
  		 
    
  		 $(".buttonPrevbtn").click(function(event){
          	$(".buttonPrevious").click();
          	$('html, body').animate({ scrollTop: 0 }, 'fast');
          });
  		 
        });
  	
 /* //rupali
  	function getLocality(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#locality").empty();
				$("#locality").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#locality").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
  	//rupali
  	function getApartment(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#state").empty();
				$("#state").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#state").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
  	
  	 */
  	
	function getState(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#state").empty();
				$("#state").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#state").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
	
	
	
	
	function getState_id(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#state_id").empty();
				$("#state_id").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#state_id").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}

	function getDistrict(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#district").empty();
				$("#district").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#district").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
	function getDistrict_Id(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#district_id").empty();
				$("#district_id").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#district_id").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	} 
	

	function getTaluka(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#taluka").empty();
				$("#taluka").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#taluka").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
	
	function getTaluka_id(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#taluka_id").empty();
				$("#taluka_id").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#taluka_id").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
	function getCity(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#city").empty();
				$("#city").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#city").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
	
	function getCity_id(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#city_id").empty();
				$("#city_id").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#city_id").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
	

	function getSubType(val,type) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				if(type=='subtype')
					{
				$("#sub_type").empty();
				$("#sub_type").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#sub_type").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});
					}
				
				if(type=='category')
				{
			$("#category").empty();
			$("#category").append(
					$("<option></option>").attr("value", '0').text(
							'Please select'));
			$.each(data.resultData, function(i, result) {

				$("#category").append(
						$("<option></option>").attr("value",
								result.lookupDetHierId).text(
								result.lookupDetHierDescEn));

			});
				}
				if(type=='category1')
				{
			$("#subcategory1").empty();
			$("#subcategory1").append(
					$("<option></option>").attr("value", '0').text(
							'Please select'));
			$.each(data.resultData, function(i, result) {

				$("#subcategory1").append(
						$("<option></option>").attr("value",
								result.lookupDetHierId).text(
								result.lookupDetHierDescEn));

			});
				}
				if(type=='category2')
				{
			$("#subcategory2").empty();
			$("#subcategory2").append(
					$("<option></option>").attr("value", '0').text(
							'Please select'));
			$.each(data.resultData, function(i, result) {

				$("#subcategory2").append(
						$("<option></option>").attr("value",
								result.lookupDetHierId).text(
								result.lookupDetHierDescEn));

			});
				}

			}

		});
	}

	function getZone(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#zone").empty();
				$("#zone").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#zone").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
	

	function getBlock(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#block").empty();
				$("#block").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#block").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	} 
	
	function getRoute(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#route").empty();
				$("#route").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#route").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	} 
	
	
	function getRoute_1(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#route_1").empty();
				$("#route_1").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#route_1").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	} 

	function getUnits(val) {

		$.ajax({
			type : "GET",
			url : "${getTryList}",
			data : "parentId=" + val,
			dataType : "json",
			success : function(data) {

				//window.location="${suceesSavePropDataUrl}";

				//console.log("VAL: "+data.resultData[0].applicantName);

				var newArray = [];
				var totCol = 0;
				$("#units").empty();
				$("#units").append(
						$("<option></option>").attr("value", '0').text(
								'Please select'));
				$.each(data.resultData, function(i, result) {

					$("#units").append(
							$("<option></option>").attr("value",
									result.lookupDetHierId).text(
									result.lookupDetHierDescEn));

				});

			}

		});
	}
	
	function selectDate(val)
	{
		if(val=='T')
			{
			$("#tempDate").show();
			}
		else
			{
			$("#tempDate").hide();
			}
	}
	
	function addApplicant()
	{
		
		
		var datavar = $("#frmData").serializeObject();
		 console.log(" >>> datavar <<< "+datavar);
		var json_string = JSON.stringify(datavar);
		 console.log(" >>> json_string <<< "+json_string);
		var datavar = removeEmptyValueFromJSON(json_string);
		 console.log(" >>> datavar <<< "+datavar);
		
		
		$.ajax({
			type : "POST",
			url : "${sendNoDuePayProperty}",
			contentType: "application/json; charset=UTF-8",
			dataType : 'json',
			data : datavar,
			async : false,
			success : function(data2) 
			{
				 console.log("VAL: "+data2.serviceId);
				 
	  	          var row = 1;
	  	          dataSet = [];
	  	        
	  	       	   var newArray = [];
	  	       	   var totCol = 0;
	  	       	   
				
	  	       		   var datavar2 = {"ulbId":data2.ulbId,"serviceId":data2.serviceId,"finalAmount":$("#charges").val(),"mobNo":data2.applicantMobile,"noOfCopies":$("#noOfCopies").val(),"licNo":$("#licNO").val()};
	  	       		loadData(data2.ulbId);
			 //success
			}
		
		});
		
		
		}
	
	function loadData(ulbId)
	{
		var lookupId;
		var lookupCode;
		$.ajax({
	   	      type: "GET",
	   	      url: "${jsonLookupUrl}",
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
		      		      
		      		   if(result.lookupCode == "APT") 
		      		   {
		      			 lookupId=result.lookupId;
		      			lookupCode=result.lookupCode;
		      			
		      			 $.ajax({
		      	     	      type: "POST",
		      	     	      url: "${jsonLookupDetUrl}",
		      	     	      contentType : "application/json",
		      	     	      dataType : 'json',
		      	     	      //data : "deptId="+aaa,
		      	     	      async: false,
		      	     	      headers: {
		      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
		      	     	          //"USER":btoa(getUserId(storeInvUser)),
		      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		      	     	      },
		      	     	      success: function (data){
		      	     	    	$("#ownerType").empty();
		      					$("#ownerType").append(
		      							$("<option></option>").attr("value", '0').text(
		      									'Please select'));
		      	   	    		
		      	     	    	$.each(data.resultData, function (i, result) {

		      	     	    		if(lookupId == result.lookupId && lookupCode =='APT'){
		      	     	    			$("#ownerType").append(
		      	    							$("<option></option>").attr("value",
		      	    									result.lookupDetId).text(
		      	    									result.lookupDetDescEn));
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
		      		
		      		   if(result.lookupCode == "MAT") //not in both ui
		      		   {
		      			 lookupId=result.lookupId;
			      			lookupCode=result.lookupCode;
			      			 $.ajax({
			      	     	      type: "POST",
			      	     	      url: "${jsonLookupDetUrl}",
			      	     	      contentType : "application/json",
			      	     	      dataType : 'json',
			      	     	      //data : "deptId="+aaa,
			      	     	      async: false,
			      	     	      headers: {
			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
			      	     	          //"USER":btoa(getUserId(storeInvUser)),
			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
			      	     	      },
			      	     	      success: function (data){
			      	     	    	$("#tmCmLookupDetByLookupDetIdMarketType").empty();
			      					$("#tmCmLookupDetByLookupDetIdMarketType").append(
			      							$("<option></option>").attr("value", '0').text(
			      									'Please select'));
			      	   	    		
			      	     	    	$.each(data.resultData, function (i, result) {


			      	     	    		if(lookupId == result.lookupId && lookupCode =='MAT'){
			      	     	    			$("#tmCmLookupDetByLookupDetIdMarketType").append(
			      	    							$("<option></option>").attr("value",
			      	    									result.lookupDetId).text(
			      	    									result.lookupDetDescEn));
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
		      		   
		      		  
		      		   
		      		   if(result.lookupCode == "ETY") //not in ui
		      		   {
		      			 lookupId=result.lookupId;
			      			lookupCode=result.lookupCode;
			      			 $.ajax({
			      	     	      type: "POST",
			      	     	      url: "${jsonLookupDetUrl}",
			      	     	      contentType : "application/json",
			      	     	      dataType : 'json',
			      	     	      //data : "deptId="+aaa,
			      	     	      async: false,
			      	     	      headers: {
			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
			      	     	          //"USER":btoa(getUserId(storeInvUser)),
			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
			      	     	      },
			      	     	      success: function (data){
			      	     	    	  
			      	     	    	$("#establish_type").empty();
			      					$("#establish_type").append(
			      							$("<option></option>").attr("value", '0').text(
			      									'Please select'));
			      	     	    	$.each(data.resultData, function (i, result) {

			      	     	    		
			      	     	    		
			      	     	    		if(lookupId == result.lookupId && lookupCode =='ETY'){
			      	     	    			$("#establish_type").append(
			      	    							$("<option></option>").attr("value",
			      	    									result.lookupDetId).text(
			      	    									result.lookupDetDescEn));
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
		      		   
		      		  
		      		   
		      		   if(result.lookupCode == "IDE") 
		      		   {
		      			 lookupId=result.lookupId;
			      			lookupCode=result.lookupCode;
			      			 $.ajax({
			      	     	      type: "POST",
			      	     	      url: "${jsonLookupDetUrl}",
			      	     	      contentType : "application/json",
			      	     	      dataType : 'json',
			      	     	      //data : "deptId="+aaa,
			      	     	      async: false,
			      	     	      headers: {
			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
			      	     	          //"USER":btoa(getUserId(storeInvUser)),
			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
			      	     	      },
			      	     	      success: function (data){
			      	     	    	$("#tmCmLookupDetByLookupDetIdFloorNo").empty();
			      					$("#tmCmLookupDetByLookupDetIdFloorNo").append(
			      							$("<option></option>").attr("value", '0').text(
			      									'Please select'));
			      	   	    		
			      	     	    	$.each(data.resultData, function (i, result) {

			      	     	    	
			      	     	    		if(lookupId == result.lookupId && lookupCode =='IDE'){
			      	     	    			$("#tmCmLookupDetByLookupDetIdFloorNo").append(
			      	    							$("<option></option>").attr("value",
			      	    									result.lookupDetId).text(
			      	    									result.lookupDetDescEn));
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
		      		   
		      		   
		      		   
		      		   if(result.lookupCode == "TTL") 
		      		   {
		      			 lookupId=result.lookupId;
			      			lookupCode=result.lookupCode;
			      			 $.ajax({
			      	     	      type: "POST",
			      	     	      url: "${jsonLookupDetUrl}",
			      	     	      contentType : "application/json",
			      	     	      dataType : 'json',
			      	     	      //data : "deptId="+aaa,
			      	     	      async: false,
			      	     	      headers: {
			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
			      	     	          //"USER":btoa(getUserId(storeInvUser)),
			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
			      	     	      },
			      	     	      success: function (data){
			      	     	    	  
			      	     	    	$("#title").empty();
			      					$("#title").append(
			      							$("<option></option>").attr("value", '0').text(
			      									'Please select'));
			      	     	    	$.each(data.resultData, function (i, result) {
			      	     	    		if(lookupId == result.lookupId && lookupCode =='TTL'){
			      	     	    			$("#title").append(
			      	    							$("<option></option>").attr("value",
			      	    									result.lookupDetId).text(
			      	    									result.lookupDetDescEn));
			      	     	    		}
			      	     	    		

			      	     	    		
			      	              });

			      	     	      },
			      	     	      
			      	     	      });   
		      		   }
		      		   
		      		   if(result.lookupCode == "GEN") 
		      		   {
		      			 lookupId=result.lookupId;
			      			lookupCode=result.lookupCode;
			      			 $.ajax({
			      	     	      type: "POST",
			      	     	      url: "${jsonLookupDetUrl}",
			      	     	      contentType : "application/json",
			      	     	      dataType : 'json',
			      	     	      //data : "deptId="+aaa,
			      	     	      async: false,
			      	     	      headers: {
			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
			      	     	          //"USER":btoa(getUserId(storeInvUser)),
			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
			      	     	      },
			      	     	      success: function (data){
			      	     	    	  
			      	     	    	$("#container").empty();
			      					
			      	     	    	$.each(data.resultData, function (i, result) {

			      	     	    		$("#gender").empty();
				      					$("#gender").append(
				      							$("<option></option>").attr("value", '0').text(
				      									'Please select'));
				      	     	    	$.each(data.resultData, function (i, result) {
				      	     	    		if(lookupId == result.lookupId && lookupCode =='GEN'){
				      	     	    			$("#gender").append(
				      	    							$("<option></option>").attr("value",
				      	    									result.lookupDetId).text(
				      	    									result.lookupDetDescEn));
				      	     	    		}
				      	     	    		

				      	     	    		
				      	              });
			      	     	    		
			      	              });

			      	     	      },
			      	     	     
			      	     	      });   
		      		   }
		      		   
		      		   if(result.lookupCode == "MFW") 
		      		   {
		      			 lookupId=result.lookupId;
		      			lookupCode=result.lookupCode;
		      			
		      			 $.ajax({
		      	     	      type: "POST",
		      	     	      url: "${jsonLookupDetUrl}",
		      	     	      contentType : "application/json",
		      	     	      dataType : 'json',
		      	     	      //data : "deptId="+aaa,
		      	     	      async: false,
		      	     	      headers: {
		      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
		      	     	          //"USER":btoa(getUserId(storeInvUser)),
		      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		      	     	      },
		      	     	      success: function (data){
		      	     	    	
		      	     	    	var lookupDetId;
		      	     	    	$.each(data.resultData, function (i, result) {

		      	     	    		if(result.lookupDetValue =='W' && result.lookupId==lookupId && result.ulbId==ulbId){
		    	     	    			lookupId=result.lookupDetId;
		    	     	    			 $.ajax({
		    			      	     	      type: "POST",
		    			      	     	      url: "${jsonLookupHierDetUrl}",
		    			      	     	      contentType : "application/json",
		    			      	     	      dataType : 'json',
		    			      	     	      //data : "deptId="+aaa,
		    			      	     	      async: false,
		    			      	     	      headers: {
		    			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		    			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
		    			      	     	          //"USER":btoa(getUserId(storeInvUser)),
		    			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		    			      	     	      },
		    			      	     	      success: function (data){
		    			      	     	    
		    			      	     	    	$("#ward").empty();
		    			      					$("#ward").append(
		    			      							$("<option></option>").attr("value", '0').text(
		    			      									'Please select'));
		    			      	     	    	$.each(data.resultData, function (i, result) {
		    			      	     	    		if(lookupId == result.lookupDetId){
		    			      	     	    			$("#ward").append(
		    			      	    							$("<option></option>").attr("value",
		    			      	    									result.lookupDetHierId).text(
		    			      	    									result.lookupDetHierDescEn));
		    			      	     	    		}
		    			      	     	    		});
		    			      	     	    		
		    			      	     	      
		    			      	     	      }
		    			      	              });

		    	     	    		}
		      	     	    		

		      	     	    		
		      	              });

		      	     	      },
		      	     	      
		      	     	      });   
		      			
		      			
		      			
		      			
		      			
		      		   }
		      		   if(result.lookupCode == "UOM") 
		      		   {
		      			 lookupId=result.lookupId;
		      			lookupCode=result.lookupCode;
		      			
		      			 $.ajax({
		      	     	      type: "POST",
		      	     	      url: "${jsonLookupDetUrl}",
		      	     	      contentType : "application/json",
		      	     	      dataType : 'json',
		      	     	      //data : "deptId="+aaa,
		      	     	      async: false,
		      	     	      headers: {
		      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
		      	     	          //"USER":btoa(getUserId(storeInvUser)),
		      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		      	     	      },
		      	     	      success: function (data){
		      	     	    	
		      	     	    	var lookupDetId;
		      	     	    	$.each(data.resultData, function (i, result) {

		      	     	    		if(result.lookupDetValue =='MRC' && result.lookupId==lookupId){
		    	     	    			lookupId=result.lookupDetId;
		    	     	    			 $.ajax({
		    			      	     	      type: "POST",
		    			      	     	      url: "${jsonLookupHierDetUrl}",
		    			      	     	      contentType : "application/json",
		    			      	     	      dataType : 'json',
		    			      	     	      //data : "deptId="+aaa,
		    			      	     	      async: false,
		    			      	     	      headers: {
		    			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		    			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
		    			      	     	          //"USER":btoa(getUserId(storeInvUser)),
		    			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		    			      	     	      },
		    			      	     	      success: function (data){
		    			      	     	    
		    			      	     	    	 $("#uom").empty();
		    				      					$("#uom").append(
		    				      							$("<option></option>").attr("value", '0').text(
		    				      									'Please select'));
		    				      	     	    	$.each(data.resultData, function (i, result) {
		    				      	     	    		if(lookupId == result.lookupDetId){
		    				      	     	    			
		    				      	     	    			$("#uom").append(
		    				      	    							$("<option></option>").attr("value",
		    				      	    									result.lookupDetHierId).text(
		    				      	    									result.lookupDetHierDescEn));
		    				      	     	    		}
		    				      	     	    		}); 
		    			      	     	    		
		    			      	     	      
		    			      	     	      }
		    			      	              });

		    	     	    		}
		      	     	    		

		      	     	    		
		      	              });

		      	     	      },
		      	     	      
		      	     	      });   
		      			
		      			
		      			
		      			
		      			
		      		   }
		      		   
		             });
	   	         
	   	      },
	   	      
	   	      });   
		
		     
		 $.ajax({
	     	      type: "POST",
	     	      url: "${jsonLookupDetUrl}",
	     	      contentType : "application/json",
	     	      dataType : 'json',
	     	      //data : "deptId="+aaa,
	     	      async: false,
	     	      headers: {
	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
	     	          "Authorization": "Basic " + btoa("ashok:pass") 
	     	          //"USER":btoa(getUserId(storeInvUser)),
	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
	     	      },
	     	      success: function (data){
	     	    	 var lookupId;
	 	    		
	     	    	$.each(data.resultData, function (i, result) {
              
	     	    		if(result.lookupDetValue =='CRY'){
	     	    			lookupId=result.lookupDetId;
	     	    			 $.ajax({
			      	     	      type: "POST",
			      	     	      url: "${jsonLookupHierDetUrl}",
			      	     	      contentType : "application/json",
			      	     	      dataType : 'json',
			      	     	      //data : "deptId="+aaa,
			      	     	      async: false,
			      	     	      headers: {
			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
			      	     	          //"USER":btoa(getUserId(storeInvUser)),
			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
			      	     	      },
			      	     	      success: function (data){
			      	     	    
			      	     	    	$("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry").empty();
			      					$("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry").append(
			      							$("<option></option>").attr("value", '0').text(
			      									'Please select'));
			      	     	    	$.each(data.resultData, function (i, result) {
			      	     	    		if(lookupId == result.lookupDetId){
			      	     	    			$("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry").append(
			      	    							$("<option></option>").attr("value",
			      	    									result.lookupDetHierId).text(
			      	    									result.lookupDetHierDescEn));
			      	     	    		}
			      	     	    		});
			      	     	    		
			      	     	      
			      	     	      }
			      	              });

	     	    		}
	     	    		
	     	    		if(result.lookupDetValue =='LT'){
	     	    			lookupId=result.lookupDetId;
	     	    			 $.ajax({
			      	     	      type: "POST",
			      	     	      url: "${jsonLookupHierDetUrl}",
			      	     	      contentType : "application/json",
			      	     	      dataType : 'json',
			      	     	      //data : "deptId="+aaa,
			      	     	      async: false,
			      	     	      headers: {
			      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
			      	     	          //"USER":btoa(getUserId(storeInvUser)),
			      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
			      	     	      },
			      	     	      success: function (data){
			      	     	    
			      	     	    	 $("#tmCmLookupDetHierarchicalByLookupDetHierId1LicType").empty();
			      					$("#tmCmLookupDetHierarchicalByLookupDetHierId1LicType").append(
			      							$("<option></option>").attr("value", '0').text(
			      									'Please select'));
			      	     	    	$.each(data.resultData, function (i, result) {
			      	     	    		if(lookupId == result.lookupDetId){
			      	     	    			$("#tmCmLookupDetHierarchicalByLookupDetHierId1LicType").append(
			      	    							$("<option></option>").attr("value",
			      	    									result.lookupDetHierId).text(
			      	    									result.lookupDetHierDescEn));
			      	     	    		}
			      	     	    		}); 
			      	     	    		
			      	     	      
			      	     	      }
			      	              });

			      	     	     
	     	    			
	     	    		
	     	    		}
	     	    	
	     	    		
	              });
	     	  //rupali  	
	     	  	 $.ajax({
		     	      type: "POST",
		     	      url: "${jsonLookupDetUrl}",
		     	      contentType : "application/json",
		     	      dataType : 'json',
		     	      //data : "deptId="+aaa,
		     	      async: false,
		     	      headers: {
		     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
		     	          "Authorization": "Basic " + btoa("ashok:pass") 
		     	          //"USER":btoa(getUserId(storeInvUser)),
		     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
		     	      },
		     	      success: function (data){
		     	    	 var lookupId;
		 	    		
		     	    	$.each(data.resultData, function (i, result) {
	              
		     	    		if(result.lookupDetValue =='CRY'){
		     	    			lookupId=result.lookupDetId;
		     	    			 $.ajax({
				      	     	      type: "POST",
				      	     	      url: "${jsonLookupHierDetUrl}",
				      	     	      contentType : "application/json",
				      	     	      dataType : 'json',
				      	     	      //data : "deptId="+aaa,
				      	     	      async: false,
				      	     	      headers: {
				      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
				      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
				      	     	          //"USER":btoa(getUserId(storeInvUser)),
				      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
				      	     	      },
				      	     	      success: function (data){
				      	     	    
				      	     	    	$("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry_step2").empty();
				      					$("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry_step2").append(
				      							$("<option></option>").attr("value", '0').text(
				      									'Please select'));
				      	     	    	$.each(data.resultData, function (i, result) {
				      	     	    		if(lookupId == result.lookupDetId){
				      	     	    			$("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry_step2").append(
				      	    							$("<option></option>").attr("value",
				      	    									result.lookupDetHierId).text(
				      	    									result.lookupDetHierDescEn));
				      	     	    		}
				      	     	    		});
				      	     	    		
				      	     	      
				      	     	      }
				      	              });

		     	    		}
		     	    		
		     	    		if(result.lookupDetValue =='LT'){
		     	    			lookupId=result.lookupDetId;
		     	    			 $.ajax({
				      	     	      type: "POST",
				      	     	      url: "${jsonLookupHierDetUrl}",
				      	     	      contentType : "application/json",
				      	     	      dataType : 'json',
				      	     	      //data : "deptId="+aaa,
				      	     	      async: false,
				      	     	      headers: {
				      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
				      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
				      	     	          //"USER":btoa(getUserId(storeInvUser)),
				      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
				      	     	      },
				      	     	      success: function (data){
				      	     	    
				      	     	    	 $("#tmCmLookupDetHierarchicalByLookupDetHierId1LicType").empty();
				      					$("#tmCmLookupDetHierarchicalByLookupDetHierId1LicType").append(
				      							$("<option></option>").attr("value", '0').text(
				      									'Please select'));
				      	     	    	$.each(data.resultData, function (i, result) {
				      	     	    		if(lookupId == result.lookupDetId){
				      	     	    			$("#tmCmLookupDetHierarchicalByLookupDetHierId1LicType").append(
				      	    							$("<option></option>").attr("value",
				      	    									result.lookupDetHierId).text(
				      	    									result.lookupDetHierDescEn));
				      	     	    		}
				      	     	    		}); 
				      	     	    		
				      	     	      
				      	     	      }
				      	              });

				      	     	     
		     	    			
		     	    		
		     	    		}
		     	    	
		     	    		
		              });

		     	      },
		     	     
		     	      }); 

	     	      },
	     	     
	     	      }); 

		   }
	
	
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
	

	function savelicensedetails() {
		var rows = "";
	

		var holderUid = document.getElementById("holderUid").value;
			var firstNameRg = document
				.getElementById("firstNameRg").value;
		var middleNameRg = document
				.getElementById("middleNameRg").value;
		var lastNameRg = document
				.getElementById("lastNameRg").value;
		var firstNameEn = document
				.getElementById("firstNameEn").value;
		var middleNameEn = document
				.getElementById("middleNameEn").value;
		var lastNameRg = document
				.getElementById("lastNameRg").value;
		//var birth_year = document.getElementById("birth_year").value;
		var res_add = document.getElementById("res_add").value;
		var pincode = document.getElementById("pincode").value;
		var email_id = document.getElementById("email_id").value;
		var mobile_no = document.getElementById("mobile_no").value;
		var phone_no = document.getElementById("phone_no").value;
		//var corr_add = document.getElementById("corr_add").value;
		
		var gender =  $('#gender option:selected').val();
			var ownerType =  $('#holderType option:selected').text();
		var title = $('#title option:selected').text();
		 if (MarketFormValid_step1()) {
		
		
			rows += "<tr><td>"+ownerType+"</td><td>" + holderUid
					+ "</td><td>" + title + " " + firstNameRg + " "
					+ middleNameRg + " " + lastNameRg +
					/*  "</td><td>"+ propowner_fname_e +" "+ propowner_mname_e + " "+ propowner_lname_e + */
					"</td><td>" + res_add + "</td><td>" + mobile_no + "</td><td>" + email_id
					+ "</td></tr>";
			$(rows).appendTo("#propertyowner-table tbody");
			var formData = $("#ownerDetail").serializeObject();

			console.log(formData)
 
					var dataSet = [];
					var formData = $("#ownerDetail")
							.serializeObject();

					console.log(formData)
			$.ajax({
				type : "POST",
				url : "${ownerListUrl}",
				// contentType : "application/json",
				dataType : 'json',
				data : formData,
				async : false,
				headers : {
					"Authorization" : "Basic " + btoa("ashok:pass")

				},
				success : function(data) {
					//window.location="${suceesSavePropDataUrl}";
					alert("Data Save SuccesFully");

				}
			});
			document.getElementById("ownerDetail").reset();

		}
		}
	
	var total;
	function getCharge(subtype,noofrow) {
	var type=document.getElementById("tmCmLookupDetHierarchicalByLookupDetHierId1LicType").value;
		
		 $.ajax({
			type : "GET",
			url : "${jsonChargesUrl}",
			//contentType : "application/json",
			dataType : 'json',
			//data: finalArry, 
			// async: false,
			data : "type="+type+"&subtype="+subtype,
			async : false,
			success : function(data) {
			
				
				 var row = 1;
                dataSet = [];
           	 $('#charge'+noofrow).val(data);
           	 
           	
             	
             	
             	
			}

		});

		 calc(noofrow); 
	
        	
	}
	function calc(noofrow)
    {
        	 var totall = parseInt(0);
        	 var total2 = parseInt(0);
    		         $(".chargeDet").each(function(){
    		        	 var currentVal=parseInt( $('#charge'+noofrow).val());
    		        	 
    		        	 if(isNaN(currentVal)){
    		        		 currentVal=parseInt(0);
    		        	 }
    		        	 console.log(" >>>currentVal "+currentVal);
    		        	 totall= totall+currentVal;
    		        	console.log(" >>>total "+totall);
    		        	 $('#totalAmt').val(totall);
    		        	 $('#amount').text(totall);
    		         });
    		         
    		        
    		        return true; 
        }
	function payNow(){
		 var datavar2 = {"serviceId": $("#setServiceId").val(),"finalAmount":$("#totalAmt").val()};
	       	
		console.log(datavar2);
		$.ajax({
			type : "POST",
			url : "${paymentUrl}",
			contentType: "application/json; charset=UTF-8",
			 
			data : JSON.stringify(datavar2),
			async : false,
			 cache: false,
			success : function(data)
			{
				//console.log("**** OHHH ");
				//console.log("data"+data);
				//window.location = data;
			
				window.location = data;
				
			} ,
			error : function(request, status, error) {
				 //console.log("error "+request);
				// console.log("error "+error);
			} 
		});
		       		
	}
	 
	$('#isSameAddress').on('change', function() {

		if (this.checked) {
			$('#corr_add').attr("disabled", "disabled");
			$('#corr_add').val($('#res_add').val());
		} else {
			$('#corr_add').removeAttr("disabled");
			$('#corr_add').val('');
		}
	});
	 
  </script>
<script src="<c:url value="/home/js/market_validations.js" />"></script> 
<script src="<c:url value="/js/applicant_validation.js" />"></script> 
  </body>
</html>
</compress:html>

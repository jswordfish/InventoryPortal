	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	
	<div class="toggle-header" data-target="#license-details">
		<h2 class="StepTitle toggle-header">
			<spring:message code="label.service.changepartnerservice.pageTitle" />
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
	
	<div id="license-details">
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_no" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.changepartnerservice.license_no" /><span class="required">*</span>:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="licenseno" id="licenseno" class=" form-control" />
							<span class="input-group-addon">
								<a href="#" id="searchLicenDet">
									<i	class="fa fa-question-circle" style="font-size: 20px"></i>
								</a>
							</span>
						</div>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_holder_name" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.changepartnerservice.license_holder_name" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_holder_name"  id="license_holder_name" class="form-control" readonly="readonly">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-12 -->
			
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_fromdate" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.changepartnerservice.license_fromdate" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_fromdate" id="license_fromdate" class="form-control"	readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_businessname" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.changepartnerservice.license_todate" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_todate" id="license_todate" class="form-control"	readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_business_name" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.changepartnerservice.license_business_name" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_business_name" id="license_business_name"	class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_business_name"
						class="col-md-4 col-sm-12 col-xs-12"> <spring:message
							code="label.service.changepartnerservice.license_type" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_partnertype" id="license_partnertype"
							class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
		
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearix">
					<label for="license_dues"
						class="control-label col-md-4 col-sm-2 col-xs-12">
						<spring:message	code="label.service.changepartnerservice.license_dues" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="license_dues" id="license_dues" class="form-control"	readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearfix">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<button class="btn btn-primary">
							<spring:message
								code="label.service.changepartnerservice.license_pay" />
						</button>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	</div><!-- #add-partner-details -->
	
	<div class="toggle-header" data-target="#add-partner-details">
		<h2 class="StepTitle toggle-header">
			<spring:message	code="label.service.changepartnerservice.partnerDetails" />
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
	
	<div class="table-container" id="add-partner-details">
		<table class="table dataTable table-striped table-bordered"
			id="ownerDetailstbl">
			<thead>
				<tr>
					<th><spring:message	code="label.service.changepartnerservice.col_fullname" /></th>
					<th><spring:message	code="label.service.changepartnerservice.col_aadharno" /></th>
					<th><spring:message code="label.service.changepartnerservice.col_residentaddress" /></th>
					<th><spring:message	code="label.service.changepartnerservice.col_mobileno" /></th>
					<th><spring:message	code="label.service.changepartnerservice.col_emailid" /></th>
					<th><spring:message	code="label.service.changepartnerservice.col_status" /></th>
					<th><spring:message code="label.btn.add" /> / <spring:message code="label.btn.remove" /></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="text-center">
						<span>
							<a>
								<i class="fa fa-plus btnAdded" aria-hidden="true"></i>
							</a>
						</span>
						<span>/</span>
						<span>
							<a>
								<i class="fa fa-minus btnDeleted" aria-hidden="true"></i>
							</a>
						</span>
					</td>
				</tr>
			</tbody>
		</table>
		<!-- table -->
	</div>
	<!-- table-container -->
	
	<div id="owner-details" style="margin-top: 30px; display: none">
		<form id="transferLicense"> 
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_type" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.type" />:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12 input-group">
							<input name="partner_type" id="partner_type" class="form-control required-field" value="Secondary" disabled="disabled"/>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
				
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_subtype" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.subtype" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12 input-group">
							<select name="partner_subtype" id="partner_subtype"
								class="form-control required-field">
							<option value="">Please Select</option>
							
							</select>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			</div><!-- row -->
			
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group">
						<label for="partner_aadharno" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message
								code="label.service.changepartnerservice.aadhar_no" /><span
							class="required">*</span>:
						</label>
						
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input class="form-control required-field" name="partner_aadharno" id="partner_aadharno" minlength="12" maxlength="12" />
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
				
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_gender" class="col-md-4 col-sm-12 col-xs-12"><spring:message
								code="label.service.changepartnerservice.gender" /><span
							class="required">*</span>:</label>
	
						<div class="col-md-8 col-sm-12 col-xs-12">
							<select name="partner_gender" id="partner_gender"
								class="form-control required-field">
							<option value="">Please Select</option>
							<option value="33">Male</option>
							<option value="34">Female</option>
							<option value="35">Transgender</option>
							<option value="907">Not stated</option>
							</select>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		  	</div><!-- row -->
		  	
		  	<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_title"
							class="control-label col-md-2 col-sm-12 col-xs-12"> <spring:message
								code="label.service.changepartnerservice.title" /><span
							class="required">*</span>:
						</label>
	
						<div class="col-md-2 col-sm-2 col-xs-12">
							<select class="form-control required-field" id="partner_title" name="partner_title">
							<option value="">--select title --</option>
							<option value="24">Mrs.</option>
							<option value="25">Miss.</option>
							<option value="26">Other</option>
							<option value="917">Smt.</option>
							<option value="910">Shree</option>
							<option value="23">Mr.</option>
							<option value="981">Org</option>
							<option value="982">Mis.</option>
							</select>
						</div>
	
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" id="partner_fisrtname" name="partner_fisrtname"
								class="form-control required-field" placeholder="First Name" />
						</div>
	
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" id="partner_middlename"
								name="partner_middlename" class="form-control required-field"
								placeholder="Middle Name" />
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" id="partner_lastname" name="partner_lastname"
								class="form-control" placeholder="Last Name" />
						</div>
					</div>
					<!-- from-input-group -->
				</div>
				<!-- col-md-12 col-sm-12 col-xs-12 -->
	
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">
							नाव:<span class="required">*</span>
						</label>
	
						<div class="col-md-2 col-sm-2 col-xs-12">
							<select class="form-control required-field" id="partner_title_rg" name="partner_title_rg">
								<option>--शीर्षक निवडा--</option>
							</select>
						</div>
	
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" id="partner_l_firstname"
								name="partner_l_firstname" class="form-control required-field"
								placeholder="पहिले नाव" />
						</div>
	
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" id="partner_l_middlename"
								name="partner_l_middlename" class="form-control required-field"
								placeholder="मधले नाव" />
						</div>
	
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" id="partner_l_lastname" name="partner_l_lastname"
								class="form-control required-field" placeholder="आडनाव" />
						</div>
					</div><!-- from-input-group -->
				</div><!-- col-md-12 col-sm-12 col-xs-12 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_birthdate" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message	code="label.service.changepartnerservice.birthdate" /><span
							class="required">*</span>:
						</label>
						
						<div class="col-md-8 col-sm-12 col-xs-12 input-group">
							<input type="text" name="partner_birthdate" id="partner_birthdate"
								class="form-control datetime-control"> <label
								class="input-group-addon" for="partner_birthdate"> <span
								class="glyphicon glyphicon-calendar"></span>
							</label>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
				
				
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_address" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.address" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<textarea class="form-control" name="partner_address"
								id="partner_address" rows="2"></textarea>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
	
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_country" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.country" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<!-- <select class="form-control" name="partner_country"
								id="partner_country">
								<option></option>
							</select> -->
							<select class="form-control" id="tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry"
	                         	name="country" onChange="getState(this.value);" required="required">
					        	<option value="">-select-</option>
                                <c:forEach items="${country}" var="lookUp">
		                            <option value="${lookUp.lookupDetHierId}">${lookUp.lookupDetHierDescEn}</option>
                                </c:forEach>
                       </select>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_state" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.state" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<!-- <select class="form-control" name="partner_state"
								id="partner_state">
								<option></option>
							</select> -->
							 <select class="form-control" id="state"
									name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId2ResiState.lookupDetHierId"
														 onChange="getDistrict(this.value);" required="required">

														<option value="">-select-</option>
													</select>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
	
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_district" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.district" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<!-- <select class="form-control" name="partner_district"
								id="partner_district">
								<option></option>
							</select> -->
							<select class="form-control" id="district"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId3ResiDist.lookupDetHierId"
														onChange="getTaluka(this.value);" required="required">

														<option value="">-select-</option>
													</select>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_taluka" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.taluka" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<!-- <select class="form-control" name="partner_taluka"
								id="partner_taluka">
								<option></option>
							</select> -->
							<select class="form-control" id="taluka"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId4ResiTalu.lookupDetHierId"
														 onChange="getCity(this.value);" required="required">

														<option value="">-select-</option>
													</select>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
	
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_city" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.city" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<!-- <select class="form-control" name="partner_district"
								id="partner_city">
								<option></option>
							</select> -->
							<select class="form-control" id="city"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId5ResiCity.lookupDetHierId"
													required="required"	>

														<option value="">-select-</option>
													</select>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_pincode" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.pincode" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="partner_pincode"
								id="partner_pincode" minlength="6" maxlength="6"/>
						</div>
					</div>
					<!-- form-input-group -->
				</div>
				<!-- col-md-6 col-sm-12 col-xs-12 -->
	
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_emailid" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.emailid" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="partner_emailid"
								id="partner_emailid"/>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_mobileno" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message
								code="label.service.changepartnerservice.mobile_no" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="partner_mobileno"
								id="partner_mobileno" minlength="10" maxlength="10" />
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
	
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_phoneno" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changepartnerservice.phone_no" />:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input class="form-control" name="partner_phoneno"
								id="partner_phoneno"/>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-offset-2 col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group check-group">
						<input type="checkbox" value="isCorrospondence"
							name="isCorrospondence" id="isCorrospondence"
							class="check-control"> <label for="isCorrospondence">
							<spring:message
								code="label.service.changepartnerservice.isCorrespondence" />
						</label>
					</div>
				</div><!-- col-md-6 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="partner_correspondence_address"
							class="col-md-4 col-sm-12 col-xs-12"> <spring:message
								code="label.service.changepartnerservice.correspondence_address" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<textarea class="form-control" name="partner_correspondence_address"
								id="partner_correspondence_address" /></textarea>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="uploadPhoto" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message	code="label.service.changepartnerservice.uploadPhoto" /><span class="required">*</span>:
						</label>
						
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div class="input-group">
								<span class="input-group-btn"> <span
									class="btn btn-default btn-file"> <spring:message
											code="label.service.changepartnerservice.browse" />… <input
										type="file" id="imgInp">
								</span>
								</span> <input type="text" class="form-control" readonly="readonly">
							</div>
							<img id="img-upload">
						</div>
					</div>
				</div>
			</div>
			<!-- row -->
	
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-input-group">
						<div class="actionBar">
							<button type="button" id="addDiv" class="btn">
								<spring:message code="label.btn.add" />
							</button>
							<input class="btn" type="reset"
								value="<spring:message code="label.btn.reset" />"> <input
								class="btn btnClose" type="reset"
								value="<spring:message code="label.btn.close" />">
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6  -->
			</div><!-- row -->
		</form>
	</div><!-- #owner-details -->

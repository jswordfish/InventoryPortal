<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="toggle-header" data-target="#license-trfdetails">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.transferlicense.pageTitle" /> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div class="row" id="license-trfdetails">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12">
			<spring:message code="label.service.transferlicense.licenseno"/><span class="required">*</span>:
		</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="input-group">
				<input type="text" class=" form-control" id="licenseno" name="licenseno" required="required">
				<span class="input-group-addon"> 
					<a href="#" id="searchLicenDet"><i class="fa fa-question-circle" style="font-size:20px"></i>
					</a>
				</span>
			</div> 
		</div>
	</div><!-- form-group -->
	

	<div class="form-group">
		<label class="control-label col-md-2 col-sm-12 col-xs-12">
			<spring:message code="label.service.transferlicense.licenseusername"/>:
		</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<input type="text" name="license_username" id="license_username" class="form-control" disabled="disabled"/>
		</div>
	</div><!-- form-group -->
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.fromdate"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="license_fromdate"  id="license_fromdate" class="form-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.todate"/>:
		</label>
		<div class="col-md-4 col-sm-4 col-xs-12">
				<input type="text" name="license_todate" id="license_todate" class="form-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
	</div><!-- form-group -->
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.businesname"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="businesname" id="businesname" class="form-control input-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.lictype"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="lictype" id="lictype" class="form-control" disabled="disabled"/>
		</div>
	</div><!-- form-group -->
	
	
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.dues"/>:
		</label>
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="dues" class="form-control" id="dues"  disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
		<!--
		<div class="col-md-2 col-sm-2 col-xs-12">
			<input type="button" name="" class="btn form-control input-control" value="<spring:message code="label.document.citizenser.pay"/>"/>
		</div> col-md-4 col-sm-4 col-xs-12 -->
	</div><!-- form-group -->
	
</div><!-- #license-details -->


<div class="toggle-header" data-target="#transfer-details">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.propertytransfer.transferTitle"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div id="transfer-details">
	<div class="row">
		<div class="form-input-group col-md-6 col-sm-12 col-xs-12">
			<label for="transfer_type" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.propertytransfer.transferType"/><span class="required">*</span>: 
			</label>
			<div class="col-md-8 col-sm-12 col-xs-12">
				<input type="text" name="transfer_type" id="transfer_type" class="form-control" disabled="disabled"/>
			</div>
		</div><!-- from-input-group -->

		<div class="form-input-group col-md-6 col-sm-12 col-xs-12">
			<label for="name" class="col-md-4 col-sm-12 col-xs-12">
			<spring:message code="label.service.propertytransfer.transferSubType"/><span class="required">*</span>:</label>
			<div class="col-md-8 col-sm-12 col-xs-12">
				<select name="transfer_subtype" class="form-control">
					<option></option>
				</select>
			</div>
		</div><!-- from-input-group -->
	</div><!-- row -->

</div><!-- #transfer-details -->

<div class="toggle-header" data-target="#add-owner-details">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.propertytransfer.trgnewownertitle"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div class="table-container" id="add-owner-details">
	<table class="table dataTable table-striped table-bordered" id="ownerDetailstbl">
		<thead>
			<tr>
				<th><spring:message code="label.service.propertytransfer.newownertype"/></th>
				<th><spring:message code="label.service.propertytransfer.newownerfullName"/></th>
				<th><spring:message code="label.service.propertytransfer.newownerregionalfullName"/></th>
				<th><spring:message code="label.service.propertytransfer.status"/></th>
				<th><spring:message code="label.btn.add"/> / <spring:message code="label.btn.remove"/></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="text-align: center;">
					<span><a><i class="fa fa-plus btnAdded" aria-hidden="true"></i></a></span><span>/</span><span><a><i class="fa fa-minus btnDeleted" aria-hidden="true"></i></a></span>
				</td>
			</tr>
		</tbody>
	</table><!-- table -->
</div><!-- table-container -->

<div id="owner-details" style="margin-top:30px;display:none">
	<form id="transferLicense"> 
		<div class="">
			<div class="form-group">
					<label for="owner_type" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownertype"/><span class="required">*</span>:
					</label>
					<input type="hidden" id="owner_type_hidden" name="owner_type_hidden">
					<div class="col-md-4 col-sm-12 col-xs-12 ">
						<select name="owner_type" id="owner_type" class="form-control required-field" required>
						<option value="">Please Select</option>
							<option value="M">Primary</option>
							<option value="O">Secondary</option>
						</select>
					</div>
				
					<label for="owner_type" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownersubtype"/>:
					</label>
					<input type="hidden" id="ownersubtype_hidden" name="ownersubtype_hidden">
					<div class="col-md-4 col-sm-12 col-xs-12 ">
						<select name="ownersubtype" id="ownersubtype" class="form-control required-field">
							<option></option>
						</select>
					</div>
				</div><!-- form-input-group -->
				
				<div class="form-group">
					<label for="owner_type" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.transferlicense.aadharno"/><span class="required">*</span>:
					</label>
					<input type="hidden" id="adhar_hidden" name="adhar_hidden">
					<div class="col-md-4 col-sm-12 col-xs-12 ">
						<input type="text" class="form-control" id="adhar" name="adhar" maxlength="12">
					</div>
					<label for="owner_gender" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertytransfer.newownergender"/><span class="required">*</span>:</label>
				     <input type="hidden" id="owner_gender_hidden" name="owner_gender_hidden">
					<div class="col-md-4 col-sm-12 col-xs-12">
						<select name="owner_gender" id="owner_gender" class="form-control required-field" required="required">
						    <option value="">Please Select</option>
							<option value="33">Male</option>
							<option value="34">Female</option>
							<option value="35">Transgender</option>
							<option value="907">Not stated</option>
						</select>
					</div>
				</div><!-- form-input-group -->
				
				
		</div><!-- row -->
	
		
			<div class="">
				<div class="form-group col-md-12 col-sm-12 col-xs-12 clearfix">
					<label class="control-label col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownerusername"/> :<span class="required">*</span>
					</label>
					 <input type="hidden" id="propowner_pref_e_hidden" name="propowner_pref_e_hidden">
					<div class="col-md-2 col-sm-2 col-xs-12">
						<select class="form-control required-field" id="propowner_pref_e" name="propowner_pref_e" required="required">
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
					<input type="hidden" id="ulb_hidden" name="ulb_hidden">
		<input type="hidden" id="fname_hidden" name="fname_hidden">
					<div class="col-md-2 col-sm-2 col-xs-12">
						<input type="text" id="firstname" name="fname" class="form-control required-field"	placeholder="First Name" />
					</div>
			<input type="hidden" id="mname_hidden" name="mname_hidden">
					<div class="col-md-2 col-sm-2 col-xs-12">
						<input type="text" id="middlename" name="mname" class="form-control required-field"	placeholder="Middle Name" />
					</div>
					<input type="hidden" id="lname_hidden" name="lname_hidden">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<input type="text" id="lastname" name="lname" class="form-control"	placeholder="Last Name"/>
					</div>
				</div><!-- from-group -->
		
				<div class="form-group col-md-12 col-sm-12 col-xs-12 ">
					<label class="control-label col-md-2 col-sm-2 col-xs-12">
						नाव:<span class="required">*</span>
					</label>
			<input type="hidden" id="propowner_pref_m_hidden" name="propowner_pref_m_hidden">
					<div class="col-md-2 col-sm-2 col-xs-12">
						<select class="form-control required-field" id="propowner_pref_m">
							<option>--शीर्षक निवडा--</option>
						</select>
					</div>
		<input type="hidden" id="fnameRg_hidden" name="fnameRg_hidden">
					<div class="col-md-2 col-sm-2 col-xs-12">
						<input type="text" id="fnameRg" class="form-control required-field" name="fnameRg" placeholder="पहिले नाव"/>
					</div>
		<input type="hidden" id="mnameRg_hidden" name="mnameRg_hidden">
					<div class="col-md-2 col-sm-2 col-xs-12">
						<input type="text" id="mnameRg" name="mnameRg" class="form-control required-field" placeholder="मधले नाव"/>
					</div>
		<input type="hidden" id="lnameRg_hidden" name="lnameRg_hidden">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<input type="text" id="lnameRg" class="form-control required-field" name="lnameRg"	placeholder="आडनाव"/>
					</div>
				</div><!-- from-group -->
			</div><!-- row -->
		
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.bdate"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<div class='input-group date' id='bdate'>
						<input type="hidden" id="bdate_hidden" name="bdate_hidden">
                    	<input type='text' id="bdate" name="bdate" class="form-control"/>
                    	<span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    	</span>
               	  	</div>
				</div>
				
			</div>
			
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.resaddress"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<input type="hidden" id="resadd_hidden" name="resadd_hidden">
					<textarea class="form-control" id="resadd" name="resadd" ></textarea>
				</div>
				
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.country"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<input type="hidden" id="country_hidden" name="country_hidden">
				<!-- 	<select class="form-control" id="country" name="country">
						<option>Select</option>
					</select> -->
					
						<select class="form-control" id="tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry"
	                         	name="country" onChange="getState(this.value);" required="required">
					        	<option value="">-select-</option>
                                <c:forEach items="${country}" var="lookUp">
		                            <option value="${lookUp.lookupDetHierId}">${lookUp.lookupDetHierDescEn}</option>
                                </c:forEach>
                       </select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.state"/><span class="required">*</span>:</label>
				<div class="col-md-4">
				<input type="hidden" id="state_hidden" name="state_hidden">
					<!-- <select class="form-control" id="status" name="status">
						<option>Select</option>
					</select> -->
					   <select class="form-control" id="state"
									name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId2ResiState.lookupDetHierId"
														 onChange="getDistrict(this.value);" required="required">

														<option value="">-select-</option>
													</select>
				</div>
				
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.dis"/><span class="required">*</span>:</label>
				<div class="col-md-4">
				<input type="hidden" id="district_hidden" name="district_hidden">
					<!-- <select class="form-control" id="district" name="district">
						<option>Select</option>
					</select> -->
						<select class="form-control" id="district"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId3ResiDist.lookupDetHierId"
														onChange="getTaluka(this.value);" required="required">

														<option value="">-select-</option>
													</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.taluka"/><span class="required">*</span>:</label>
				<div class="col-md-4">
				<input type="hidden" id="taluka_hidden" name="taluka_hidden">
					<!-- <select class="form-control" id="taluka" name="taluka">
						<option>Select</option>
					</select> -->
						<select class="form-control" id="taluka"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId4ResiTalu.lookupDetHierId"
														 onChange="getCity(this.value);" required="required">

														<option value="">-select-</option>
													</select>
				</div>
				
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.city"/><span class="required">*</span>:</label>
				<div class="col-md-4">
				<input type="hidden" id="city_hidden" name="city_hidden">
					<!-- <select class="form-control" id="city" name="city">
						<option>Select</option>
					</select> -->
					<select class="form-control" id="city"
														name="ttTlsLicHoldReq.tmCmLookupDetHierarchicalByLookupDetHierId5ResiCity.lookupDetHierId"
													required="required"	>

														<option value="">-select-</option>
													</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.pincode"/><span class="required">*</span>:</label>
				<div class="col-md-4">
				<input type="hidden" id="pincode_hidden" name="pincode_hidden">
					<input type="text" class="form-control " name="pincode" id="pincode" maxlength="6">
				</div>
				<label for="owner_email" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.propertytransfer.newowneremailId"/><span class="required">*</span>:</label>
					<div class="col-md-4 col-sm-12 col-xs-12">
							<input type="hidden" id="owner_email_hidden" name="owner_email_hidden">
						<input type="text" class="form-control required-field" name="owner_email" id="owner_email">
					</div>
				
			</div>
			<div class="">
				<div class="form-group">
					<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.phno"/><span class="required">*</span>:</label>
					<div class="col-md-4">
					<input type="hidden" id="phone_hidden" name="phone_hidden">
						<input type="text" class="form-control " name="phone" id="phone">
					</div>
					<label for="owner_mobile" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownermobileNumber"/><span class="required">*</span>:
					</label>
					<div class="col-md-4 col-sm-12 col-xs-12">
					<input type="hidden" id="owner_mobile_hidden" name="owner_mobile_hidden">
						<input type="text" class="form-control required-field" name="owner_mobile" id="owner_mobile" maxlength="10">
					</div>
				</div>
			</div><!-- row -->
			<div class="form-group">
				<label class="col-md-offset-2 checkbox-inline">
				
			      <input type="checkbox" value="" id="chkbx" style="width: auto;"><spring:message code="label.service.transferlicense.samaddress"/>
			    </label>
			</div>
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.corraddress"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<input type="hidden" id="corraddress_hidden" name="corraddress_hidden">
					<textarea class="form-control" id="corraddress" name="corraddress"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.master.meter.add.uploadphoto" /><span class="required">*</span>:	</label>
				  <div class="col-md-4 col-sm-4 col-xs-12">
		                          <div class="input-group">
			            <span class="input-group-btn">
			                <span class="btn btn-default btn-file">
			                    Browse… <input type="file" id="imgInp" name="imgInp">
			                </span>
			            </span>
			            <input type="text" class="form-control" id="photo" name="photo" readonly>
			          </div>
			        <img id='img-upload'/>
		                      	</div>
			</div>
			<div class="form-group ">
				<div class="actionBar">
					<button type="button" id="addDiv" class="btn"><spring:message code="label.btn.add" /></button>
					<input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
					<input class="btn" id="btnClose" type="reset" value="<spring:message code="label.btn.close" />">
				</div>
			</div>
		</form> 
	</div><!-- #owner-details -->
	

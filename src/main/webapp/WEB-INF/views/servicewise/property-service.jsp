<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="toggle-header" data-target="#property-details">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.propertytransfer.headerTitle" /> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div id="property-details">
	<div class="form-input-group radio-controls col-md-12 col-sm-12 col-xs-12">
		<label class="radio-inline"><input type="radio" name="radioProperty" id="radioProperty" checked="checked" data-id="property_trf" style="width: auto;" value="Property Owner"> <spring:message code="label.service.propertytransfer.radioProperty"/></label> 
		<label class="radio-inline"><input type="radio" name="radioProperty" id="radioFlat" data-id="individual_trf" style="width: auto;" value="Flat Owner"><spring:message code="label.service.propertytransfer.radioFlatUnit"/></label>
	</div>
	
	<div id="property_trf" class="radio-fieldset">
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="property_no" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.propertyNumber"/><span class="required">*</span>:
					</label>
					
					<div class="col-md-8 col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="property_no" id="property_no" class=" form-control"/>
							
							<span class="input-group-addon">
								<a href="#" id="searchLicenDet">
									<i class="fa fa-question-circle" style="font-size: 20px"></i>
								</a>
							</span>
						</div>
					</div>
				</div><!-- form-input-group -->
			</div><!-- form-input-group -->
			
			<!--
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="">
					<div class="col-md-4 col-sm-12 col-xs-12">
						<input type="button" class="btn btn-primary" value="<spring:message code="label.service.propertytransfer.search"/>">
					</div>
				</div>
			</div> --> <!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
		
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="porperty_owner" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.propertyOwner" />:
					</label>
					
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="porperty_owner" id="porperty_owner" class="form-control" readonly="readonly">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
				
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="porperty_address" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.propertyAddress" />:
					</label>
					
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="porperty_address" id="porperty_address" class="form-control" readonly="readonly">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearix">
					<label for="flat_dues" class="control-label col-md-4 col-sm-2 col-xs-12">
						<spring:message code="label.service.propertytransfer.flatDues"/>:
					</label>
					
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="flat_dues" id="flat_dues" class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div>
			
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearfix">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<button class="btn btn-primary"><spring:message code="label.service.propertytransfer.pay"/></button>
					</div>
				</div>
			</div>
		</div><!-- row -->
	</div><!-- #property_trf -->
	
	<div id="individual_trf" class="radio-fieldset" style="display:none;">
			
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="flat_or_unit_no" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.propertyNumber"/><span class="required">*</span>:
					</label>
					
					<div class="col-md-8 col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" class=" form-control" name="flat_or_unit_no" id="flat_or_unit_no"/>
							<label class="input-group-addon" for="flat_or_unit_no">
								<a href="#" id="searchLicenDet">
									<i class="fa fa-question-circle" style="font-size: 20px"></i>
								</a>
							</label>
						</div>
					</div>
					
				</div><!-- row -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="flat_or_unit_no" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.flatNumber"/><span class="required">*</span>:
					</label>
					
					<div class="col-md-8 col-sm-12 col-xs-12">
						<select class=" form-control" name="flat_or_unit_no" id="flat_or_unit_no">
							<option>Please Select</option>	
						</select>
					</div>
				</div><!-- row -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- form-input-group -->
		
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="flat_owner" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.flatOwner" />:
					</label>
					
					<div class="col-md-4 col-sm-4 col-xs-12">
						<input type="text" name="flat_owner" id="flat_owner" class="form-control" readonly="readonly">
					</div>
					
					<label for="flat_address" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.flatAddress"/>:
					</label>
					
					<div class="col-md- col-sm-4 col-xs-12">
						<input type="text" name="flat_address" class="form-control" readonly="readonly">
					</div>
				</div><!-- form-input-group -->
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="flat_dues" class="control-label col-md-2 col-sm-2 col-xs-12">
						<spring:message code="label.service.propertytransfer.flatDues"/>:
					</label>
					
					<div class="col-md-4 col-sm-4 col-xs-12">
						<input type="text" name="flat_dues" id="flat_dues" class="form-control" readonly="readonly" />
					</div>
					
					<div class="col-md-2 col-sm-4 col-xs-12">
						<button class="btn btn-primary"><spring:message code="label.service.propertytransfer.pay"/></button>
					</div>
				</div><!-- form-input-group -->
			</div>
		</div>
	</div><!-- individual_trf -->
</div><!-- #property-details -->

<div class="toggle-header" data-target="#transfer-details">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.propertytransfer.transferTitle"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div id="transfer-details">
	<div class="row">
		<div class="col-md-6 col-sm-12 col-xs-12">
			<div class="form-input-group clearfix">
				<label for="transfer_type" class="col-md-4 col-sm-12 col-xs-12">
					<spring:message code="label.service.propertytransfer.transferType"/>: 
				</label>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<input name="transfer_type" id="transfer_type" class="form-control" readonly="readonly"/>
				</div>
			</div><!-- from-input-group -->
		</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		
		<div class="col-md-6 col-sm-12 col-xs-12">
			<div class="form-input-group clearfix">
				<label for="transfer_subtype" class="col-md-4 col-sm-12 col-xs-12">
					<spring:message code="label.service.propertytransfer.transferSubType"/><span class="required">*</span>:
				</label>
				
				<div class="col-md-8 col-sm-12 col-xs-12">
					<select name="transfer_subtype" class="form-control">
						<option></option>
					</select>
				</div>
			</div><!-- from-input-group -->
		</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	</div><!-- row -->

	<div class="row">
		<div class="col-md-6 col-sm-12 col-xs-12">
			<div class="form-input-group">
				<label class="col-md-4 col-sm-12 col-xs-12">
					<spring:message code="label.service.propertytransfer.transferDate"/><span class="required">*</span>: 
				</label>
				
				<div class="col-md-8 col-sm-12 col-xs-12 input-group">
					<input type="text" name="transfer_date" id="transfer_date" class="form-control datetime-control" /> 
					<label class="input-group-addon"> 
						<span class="glyphicon glyphicon-calendar"></span>
					</label>
				</div>
			</div><!-- from-input-group -->
		</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		
		<div class="col-md-6 col-sm-12 col-xs-12">
			<div class="form-input-group clearfix">
				<label for="transfer_reason" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.propertytransfer.transferReason"/><span class="required">*</span>: </label>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<input type="text" name="transfer_reason" id="transfer_reason" class="form-control" />
				</div>
			</div><!-- from-input-group -->
		</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	</div><!-- row -->

	<div class="row">
		<div class="col-md-6 col-sm-12 col-xs-12">
			<div class="form-input-group clearfix">
				<label for="transfer_salesvalue" class="col-md-4 col-sm-12 col-xs-12">
					<spring:message code="label.service.propertytransfer.transferSalesValue"/>:
				</label>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<input type="text" name="transfer_salesvalue" id="transfer_salesvalue" class="form-control" />
				</div>
			</div><!-- from-input-group -->
		</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		
		<div class="col-md-6 col-sm-12 col-xs-12">
			<div class="form-input-group clearfix">
				<label for="transfer_marketvalue" class="col-md-4 col-sm-12 col-xs-12">
					<spring:message code="label.service.propertytransfer.transferMarketValue"/>:
				</label>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<input type="text" name="transfer_marketvalue" id="transfer_marketvalue" class="form-control" />
				</div>
			</div><!-- from-input-group -->
		</div><!-- col-md-6 col-sm-12 col-xs-12 -->		
	</div><!-- row -->
</div><!-- #transfer-details -->

<div class="toggle-header" data-target="#add-owner-details">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.propertytransfer.trgnewownertitle"/> 
		<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
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
				<td class="text-center">
					<span><a><i class="fa fa-plus btnAdded" aria-hidden="true"></i></a></span><span>/</span><span><a><i class="fa fa-minus btnDeleted" aria-hidden="true"></i></a></span>
				</td>
			</tr>
		</tbody>
	</table><!-- table -->
</div><!-- table-container -->

<div id="owner-details" style="margin-top:30px;display:none">
	<form>
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="owner_type" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownertype"/><span class="required">*</span>:
					</label>
					<div class="col-md-8 col-sm-12 col-xs-12 input-group">
						<select name="owner_type" id="owner_type" class="form-control required-field">
							<option>Main</option>
							<option>Additional</option>
						</select>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group" style="display:none;">
					<label for="owner_title" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newowneruserTitle"/><span class="required">*</span>:
					</label>
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input class="form-control required-field" name="owner_title" id="owner_title"/>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="owner_gender" class="col-md-4 col-sm-12 col-xs-12"><spring:message code="label.service.propertytransfer.newownergender"/><span class="required">*</span>:</label>
					
					<div class="col-md-8 col-sm-12 col-xs-12">
						<select name="owner_gender" id="owner_gender" class="form-control required-field">
							<option>Male</option>
							<option>Female</option>
							<option>Transgender</option>
							<option>Not stated</option>
						</select>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="newownerusername_title" class="control-label col-md-2 col-sm-12 col-xs-12">
							<spring:message code="label.service.propertytransfer.newownerusername"/><span class="required">*</span>:
						</label>
						
						<div class="col-md-2 col-sm-2 col-xs-12">
							<select class="form-control required-field" id="newownerusername_title">
								<option>--Select title --</option>
								<option>Mrs.</option>
								<option>Miss.</option>
								<option>Other</option>
								<option>Smt.</option>
								<option>Shree</option>
								<option>Mr.</option>
								<option>Org</option>
								<option>Mis.</option>
							</select>
						</div>
			
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" id="fname" name="fname" class="form-control required-field"	placeholder="First Name" />
						</div>
			
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" id="mname" name="mname" class="form-control required-field"	placeholder="Middle Name" />
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" id="lname" name="lname" class="form-control"	placeholder="Last Name"/>
						</div>
					</div><!-- from-input-group -->
				</div><!-- col-md-12 col-sm-12 col-xs-12 -->
				
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">
							नाव:<span class="required">*</span>
						</label>
			
						<div class="col-md-2 col-sm-2 col-xs-12">
							<select class="form-control required-field" id="propowner_pref_m">
								<option>--शीर्षक निवडा--</option>
							</select>
						</div>
			
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" name="fnameRg" id="fnameRg" class="form-control required-field"  placeholder="पहिले नाव"/>
						</div>
			
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" name="mnameRg" id="mnameRg" class="form-control required-field" placeholder="मधले नाव"/>
						</div>
			
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" name="lnameRg" id="lnameRg" class="form-control required-field" placeholder="आडनाव"/>
						</div>
					</div><!-- from-input-group -->
				</div><!-- col-md-12 col-sm-12 col-xs-12 -->
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="owner_phone" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.propertytransfer.newownerphoneNumber"/>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input type="text" class="form-control required-field" name="owner_phone" id="owner_phone">
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->	
				
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="owner_mobile" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.propertytransfer.newownermobileNumber"/><span class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input type="text" class="form-control required-field" name="owner_mobile" id="owner_mobile">
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->		
			</div><!-- row -->
	
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="owner_aadhar_no" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message  code="label.service.propertytransfer.newowneraadhar_no"/><span class="required">*</span>:</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="owner_aadhar_no" id="owner_aadhar_no"/>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
				
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="owner_pan_no" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message  code="label.service.propertytransfer.newownerpan_no"/><span class="required">*</span>:</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="owner_pan_no" id="owner_pan_no"/>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			</div><!-- row -->
			
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group">
						<label for="owner_email" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newowneremailId"/>:</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input type="text" class="form-control required-field" name="owner_email" id="owner_email">
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
				
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="owner_address" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.propertytransfer.newownerownerAddress"/><span class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<textarea class="form-control" name="owner_address" id="owner_address" rows="4"></textarea>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			</div>
			
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-input-group">
						<div class="actionBar">
							<button type="button" id="addDiv" class="btn"><spring:message code="label.btn.add" /></button>
							<input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
							<input class="btn btnClose" type="reset" value="<spring:message code="label.btn.close" />">
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12  -->
			</div><!-- row -->
		</form>
	</div><!-- #owner-details -->

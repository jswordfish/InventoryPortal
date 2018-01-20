<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="toggle-header" data-target="#license-trfdetails">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.changenameownerpartner.license_title" /> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div class="row" id="license-trfdetails">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12">
			<spring:message code="label.service.changenameownerpartner.license_no"/><span class="required">*</span>:
		</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="input-group">
				<input type="text" class=" form-control" id="licenseno">
				<span class="input-group-addon"> 
					<a href="#" id="searchLicenDet"><i class="fa fa-question-circle" style="font-size:20px"></i>
					</a>
				</span>
			</div> 
		</div>
	</div><!-- form-group -->
	

	<div class="form-group">
		<label class="control-label col-md-2 col-sm-12 col-xs-12">
			<spring:message code="label.service.changenameownerpartner.license_holdername"/>:
		</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<input type="text" name="license_username"  class="form-control" disabled="disabled"/>
		</div>
	</div><!-- form-group -->
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changenameownerpartner.license_fromdate"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="license_fromdate" class="form-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changenameownerpartner.license_todate"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="license_todate" class="form-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
	</div><!-- form-group -->
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changenameownerpartner.business_name"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="" class="form-control input-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changenameownerpartner.license_type"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="license_type" id="license_type" class="form-control" disabled="disabled"/>
		</div>
	</div><!-- form-group -->
	
	
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changenameownerpartner.dues"/>:
		</label>
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="" class="form-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
		<div class="col-md-4 col-sm-12 col-xs-12">
			<button class="btn"><spring:message code="label.service.changenameownerpartner.pay"/></button>
		</div>
	</div><!-- form-group -->
	
</div><!-- #license-details -->

<div class="toggle-header" data-target="#add-owner-details">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.changenameownerpartner.ownerpartnertitle"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div class="table-container" id="add-owner-details">
	<table class="table dataTable table-striped table-bordered" id="ownerDetailstbl">
		<thead>
			<tr>
				<th><spring:message code="label.service.changenameownerpartner.ownertype"/></th>
				<th><spring:message code="label.service.changenameownerpartner.owneraadhaarno"/></th>
				<th><spring:message code="label.service.changenameownerpartner.ownerprevName"/></th>
				<th><spring:message code="label.service.changenameownerpartner.ownerregionalfullName"/></th>
				<th><spring:message code="label.service.changenameownerpartner.ownernewName"/></th>
				<th><spring:message code="label.service.changenameownerpartner.ownernewregionalName"/></th>
				<th><spring:message code="label.service.changenameownerpartner.status"/></th>
				<th></th>
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
				<td></td>
				<td style="text-align: center;">
					<span><a><i class="fa fa-edit btnAdded" aria-hidden="true"></i></a></span>
				</td>
			</tr>
		</tbody>
	</table><!-- table -->
</div><!-- table-container -->

<div id="owner-details" style="margin-top:30px;display:none">
		<form>
			<div class="form-input-group clearfix">
				<label for="owner_type" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.changenameownerpartner.ownertype"/>:
				</label>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<input name="owner_type" id="owner_type" class="form-control" disabled="disabled"/>
				</div>
				
				<label for="owner-oldname" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.changenameownerpartner.owner-prevname"/>:
				</label>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<input name="owner-oldname" id="owner-oldname" class="form-control" disabled="disabled"/>
				</div>	
			</div><!-- form-input-group -->
			
			<div class="form-input-group clearfix">
				<label for="owner-newname" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.changenameownerpartner.owner-newname"/><span class="required">*</span>:
				</label>
				<div class="col-md-2 col-sm-12 col-xs-12 ">
					<select class="form-control" name="owner-newname" id="owner-title">
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
				<div class="col-md-2 col-sm-12 col-xs-12 ">
					<input type="text" class="form-control" name="owner-newname" id="owner-name"/>
				</div>
				<div class="col-md-2 col-sm-12 col-xs-12 ">
					<input type="text" class="form-control" name="owner-newname" id="owner-middlename"/>
				</div>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<input type="text" class="form-control" name="owner-newname" id="owner-lastname"/>
				</div>
			</div><!-- form-input-group -->
			
			<div class="form-input-group clearfix">
				<label for="owner-newname" class="col-md-2 col-sm-12 col-xs-12">
					नाव<span class="required">*</span>:
				</label>
				<div class="col-md-2 col-sm-12 col-xs-12 ">
					<select class="form-control" name="owner-regional-newname" id="owner-title">
						<option>--शीर्षक निवडा--</option>
					</select>
				</div>
				<div class="col-md-2 col-sm-12 col-xs-12 ">
					<input type="text" class="form-control" name="owner-regional-name" id="owner-regional-name" placeholder="पहिले नाव"/>
				</div>
				<div class="col-md-2 col-sm-12 col-xs-12 ">
					<input type="text" class="form-control" name="owner-regional-middlename" id="owner-regional-middlename" placeholder="मधले नाव"/>
				</div>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<input type="text" class="form-control" name="owner-regional-lastname" id="owner-regional-lastname" placeholder="आडनाव"/>
				</div>
			</div><!-- form-input-group -->

			<div class="form-input-group clearfix">
				<div class="actionBar">
					<button type="button" id="addDiv" class="btn"><spring:message code="label.btn.save" /></button>
					<input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
					<input class="btn" type="reset" value="<spring:message code="label.btn.close" />">
				</div>
			</div>
		</form>
</div><!-- #owner-details -->
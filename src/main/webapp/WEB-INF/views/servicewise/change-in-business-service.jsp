<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="toggle-header" data-target="#license-trfdetails">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.changeinbusiness.license_title" /> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div class="row" id="license-trfdetails">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="license_no" class="col-md-2 col-sm-12 col-xs-12">
			<spring:message code="label.service.changeinbusiness.license_no"/><span class="required">*</span>:
		</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="input-group">
				<input type="text" class=" form-control" id="license_no"/>
				<span class="input-group-addon"> 
					<a href="#" id="searchLicenDet"><i class="fa fa-question-circle" style="font-size:20px"></i>
					</a>
				</span>
			</div> 
		</div>
	</div><!-- form-group -->
	

	<div class="form-group">
		<label for="license_holdername" class="control-label col-md-2 col-sm-12 col-xs-12">
			<spring:message code="label.service.changeinbusiness.license_holdername"/>:
		</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<input type="text" name="license_holdername" id="license_holdername"  class="form-control" disabled="disabled"/>
		</div>
	</div><!-- form-group -->
	
	<div class="form-group">
		<label for="license_fromdate" class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changeinbusiness.license_fromdate"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="license_fromdate" id="license_fromdate" class="form-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changenameownerpartner.license_todate"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="license_todate" class="form-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
	</div><!-- form-group -->
	
	<div class="form-group">
		<label for="business_name" class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changeinbusiness.business_name"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="business_name" id="business_name" class="form-control input-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
		<label for="license_type" class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changeinbusiness.license_type"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="license_type" id="license_type" class="form-control" disabled="disabled"/>
		</div>
	</div><!-- form-group -->
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.changeinbusiness.dues"/>:
		</label>
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="dues" id="dues" class="form-control" disabled="disabled"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		<div class="col-md-4 col-sm-12 col-xs-12">
			<button class="btn"><spring:message code="label.service.changeinbusiness.pay"/></button>
		</div>
	</div><!-- form-group -->
	
</div><!-- #license-details -->

<div class="toggle-header" data-target="#add-owner-details">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.changeinbusiness.tbl_title"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div class="table-container" id="add-owner-details">
	<table class="table dataTable table-striped table-bordered" id="ownerDetailstbl">
		<thead>
			<tr>
				<th><spring:message code="label.service.changeinbusiness.tbl_licenseSubtype"/></th>
				<th><spring:message code="label.service.changeinbusiness.tbl_licenseCategory"/></th>
				<th><spring:message code="label.service.changeinbusiness.tbl_licenseSubcategory1"/></th>
				<th><spring:message code="label.service.changeinbusiness.tbl_licenseSubcategory2"/></th>
				<th><spring:message code="label.service.changeinbusiness.tbl_status"/></th>
				<th><spring:message code="label.btn.add"/> / <spring:message code="label.btn.remove"/></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
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
		<form>
			<div class="form-input-group clearfix">
				<label for="licensesubtype" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.changeinbusiness.licensesubtype"/><span class="required">*</span>:
				</label>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<select name="licensesubtype" id="licensesubtype" class="form-control">
						<option value="">--Select--</option>
					</select>
				</div>
				
				<label for="licensecategory" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.changeinbusiness.licensecategory"/>:
				</label>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<select name="licensecategory" id="licensecategory" class="form-control">
						<option value="">--Select--</option>
					</select>
				</div>	
			</div><!-- form-input-group -->
			
			<div class="form-input-group clearfix">
				<label for="licensesubcategoryone" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.changeinbusiness.licensesubcategoryone"/>:
				</label>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<select class="form-control" name="licensesubcategoryone" id="licensesubcategoryone">
						<option value="">--Select--</option>
					</select>
				</div>
				<label for="licensesubcategorytwo" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.changeinbusiness.licensesubcategorytwo"/>:
				</label>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<select class="form-control" name="licensesubcategorytwo" id="licensesubcategorytwo">
						<option value="">--Select--</option>
					</select>
				</div>
			</div><!-- form-input-group -->
			
			<div class="form-input-group clearfix">
				<label for="storageqty" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.changeinbusiness.storageqty"/>:
				</label>
				<div class="col-md-4 col-sm-12 col-xs-12 ">
					<input type="text" class="form-control" name="storageqty" id="storageqty"/>
				</div>
			</div><!-- form-input-group -->

			<div class="form-input-group clearfix">
				<div class="actionBar">
					<button type="button" id="addDiv" class="btn"><spring:message code="label.btn.add" /></button>
					<input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
					<input class="btn" type="reset" value="<spring:message code="label.btn.close" />">
				</div>
			</div>
		</form>
</div><!-- #owner-details -->
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="toggle-header" data-target="#objection-notice-bill">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.specialnoticebill.headerTitle" /> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	</h2>
</div>

<div id="objection-notice-bill">
	<div class="form-input-group row">
		<div class="col-md-6 col-sm-12 col-xs-12">
			<label for="objectionSelect" class="col-md-4 col-sm-12 col-xs-12"><spring:message code="label.service.specialnoticebill.objectionSelect"/>:</label>
			
			<div class="col-md-8 col-sm-12 col-xs-12">
				<select name="objectionSelect" id="objectionSelect" class="form-control">
					<option>Special Notice</option>
					<option>Bill</option>
				</select>
			</div>
		</div>
	</div>
	
	<div class="form-input-group row">
		<div class="col-md-6 col-sm-12 col-xs-12">
			<label for="property_no" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.specialnoticebill.propertyNumber"/>:
			</label>
				
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" class=" form-control" name="property_no" id="property_no"/>
					<label class="input-group-addon" for="flat_or_unit_no">
						<a href="#" id="searchLicenDet">
							<i class="fa fa-question-circle" style="font-size: 20px"></i>
						</a>
					</label>
				</div>
			</div>
			
		</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		
		<div class="col-md-6 col-sm-12 col-xs-12">
			<label for="flat_or_unit_no" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.specialnoticebill.flatNumber"/>:
			</label>
			
			<div class="col-md-8 col-sm-12 col-xs-12">
				<select class="form-control" name="flat_or_unit_no" id="flat_or_unit_no">
					<option>Please Select</option>	
				</select>
			</div>
		</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	</div><!-- form-input-group -->
	
	
	<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="porperty_owner" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.specialnoticebill.propertyOwner" />:
					</label>
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="porperty_owner" class="form-control" readonly="readonly">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
				
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="porperty_address" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message code="label.service.specialnoticebill.propertyAddress" />:
					</label>
					
					<div class="col-md-8 col-sm-4 col-xs-12">
						<textarea name="porperty_address" class="form-control" readonly="readonly" rows="2"></textarea>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->

	
	<div class="form-input-group row">
		<div class="col-md-6 col-sm-4 col-xs-12">
			<label for="specialNotice" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.specialnoticebill.specialNotice" />:
			</label>
			
			<div class="col-md-8 col-sm-12 col-xs-12">
				<input type="text" name="specialNotice" id="specialNotice" class="form-control">
			</div>
		</div>
		
		<div class="col-md-6 col-sm-12 col-xs-12">
			<label for="billNumber" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.specialnoticebill.specialNoticeDate"/>:
			</label>
			
			<div class="col-md-8 col-sm-12 col-xs-12">
				<input type="text" name="specialNoticeDate" id="specialNoticeDate" class="form-control" readonly="readonly"/>
			</div>
		</div>
	</div><!-- form-input-group -->
	
	<div class="form-input-group row">
		<div class="col-md-6 col-sm-12 col-xs-12">
			<label for="billNumber" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.specialnoticebill.billNumber"/>:
			</label>
			
			<div class="col-md-8 col-sm-12 col-xs-12">
				<input type="text" name="billNumber" id="billNumber" class="form-control">
			</div>
		</div>
		
		<div class="col-md-6 col-sm-12 col-xs-12">
			<label for="billDate" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.specialnoticebill.billDate"/>:
			</label>
			
			<div class="col-md-8 col-sm-12 col-xs-12">
				<input type="text" name="billDate" id="billDate" class="form-control" readonly="readonly">
			</div>
		</div>
	</div>
	
	<div class="form-input-group row">
		<div class="col-md-6 col-sm-12 col-xs-12">
			<label for="specialNotice" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.specialnoticebill.objectionDetails" />:
			</label>
			
			<div class="col-md-8 col-sm-12 col-xs-12">
				<textarea name="objectionDetails" id="objectionDetails" class="form-control" readonly="readonly"></textarea>
			</div>
		</div>
	</div><!-- form-input-group -->
</div><!-- #objection-notice-bill -->
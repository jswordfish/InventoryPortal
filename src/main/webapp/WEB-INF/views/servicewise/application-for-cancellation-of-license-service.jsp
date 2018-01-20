	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	
	<div class="toggle-header" data-target="#license-details">
		<h2 class="StepTitle toggle-header">
			<spring:message code="label.service.applicationcancellation.license_title" />
			
			<i class="glyphicon glyphicon-chevron-down"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
	
	<div id="license-details">
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_no" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.applicationcancellation.license_no" /><span class="required">*</span>:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="license_no" id="license_no" class=" form-control" />
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
					<label for="license_holder_name"
						class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.applicationcancellation.license_holdername" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="license_holder_title" class="form-control" readonly="readonly">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-12 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_fromdate" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.applicationcancellation.license_fromdate" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_fromdate" id="license_fromdate" class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 -->
	
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_businessname" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.applicationcancellation.license_todate" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_todate" id="license_todate" class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="business_name" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.applicationcancellation.business_name" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="business_name" id="business_name" class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_type" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.applicationcancellation.license_type" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="license_type" id="license_type" class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearix">
					<label for="dues" class="control-label col-md-4 col-sm-2 col-xs-12">
						<spring:message	code="label.service.applicationcancellation.dues" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="dues" id="dues" class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			
			
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearfix">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<button class="btn btn-primary">
							<spring:message	code="label.service.applicationcancellation.pay" />
						</button>
					</div>
				</div>
			</div> <!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	</div><!-- #license-details -->
	
	<div class="toggle-header" data-target="#business-details">
		<h2 class="StepTitle toggle-header">
			<spring:message	code="label.service.applicationcancellation.cancellation.title" />
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span> </i> 
		</h2>
	</div>
	
	<div id="business-details">
		<form>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="business_oldname" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.applicationcancellation.cancellation.reason" /><span class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<textarea class="form-control" name="reason" id="reason" rows="4"></textarea>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			</div><!-- row -->
			
			<%-- <jsp:include page="../common/maha-dma/checklist.jsp" /> --%> 
			
			
		</form>
	</div><!-- #business-details -->
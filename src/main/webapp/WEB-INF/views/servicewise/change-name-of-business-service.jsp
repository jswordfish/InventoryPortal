	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	
	<div class="toggle-header" data-target="#license-details">
		<h2 class="StepTitle toggle-header">
			<spring:message code="label.service.changebusinessservice.businessTitle" />
			<i class="material-icons toggle-icon">keyboard_arrow_down</i>
		</h2>
	</div>
	
	<div id="license-details">
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_no" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.changebusinessservice.license_no" /><span class="required">*</span>:
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
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_holder_name"
						class="col-md-2 col-sm-12 col-xs-12"> <spring:message
							code="label.service.changebusinessservice.license_holder_name" />:
					</label>
	
					<div class="col-md-10 col-sm-12 col-xs-12">
						<div class="row">
							<div class="col-md-2 col-sm-4 col-xs-12">
								<input type="text" name="license_holder_title"
									class="form-control" readonly="readonly">
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12">
								<input type="text" name="license_holder_name"
									class="form-control" readonly="readonly">
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12">
								<input type="text" name="license_holder_middlename"
									class="form-control" readonly="readonly">
							</div>
							<div class="col-md-4 col-sm-4 col-xs-12">
								<input type="text" name="license_holder_lastname"
									class="form-control" readonly="readonly">
							</div>
						</div>
					</div>
				</div>
				<!-- form-input-group -->
			</div>
			<!-- col-md-12 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_fromdate" class="col-md-4 col-sm-12 col-xs-12">
						<spring:message
							code="label.service.changebusinessservice.license_fromdate" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_fromdate" class="form-control"
							readonly="readonly" />
					</div>
				</div>
				<!-- form-input-group -->
			</div>
			<!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_businessname"
						class="col-md-4 col-sm-12 col-xs-12"> <spring:message
							code="label.service.changebusinessservice.license_todate" />:
					</label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" name="license_businessname" class="form-control"
							readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_business_name"
						class="col-md-4 col-sm-12 col-xs-12"> <spring:message
							code="label.service.changebusinessservice.license_business_name" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="license_business_name"
							class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_ownership_type"	class="col-md-4 col-sm-12 col-xs-12">
						<spring:message	code="label.service.changebusinessservice.license_ownership_type" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="license_ownership_type" class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
		
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label for="license_business_name"
						class="col-md-4 col-sm-12 col-xs-12"> <spring:message
							code="label.service.changebusinessservice.license_type" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="license_partnertype"
							class="form-control" readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearix">
					<label for="license_dues"
						class="control-label col-md-4 col-sm-2 col-xs-12"> <spring:message
							code="label.service.changebusinessservice.license_dues" />:
					</label>
	
					<div class="col-md-8 col-sm-4 col-xs-12">
						<input type="text" name="license_dues" class="form-control"
							readonly="readonly" />
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearfix">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<button class="btn btn-primary">
							<spring:message
								code="label.service.changebusinessservice.license_pay" />
						</button>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	</div><!-- #license-details -->
	
	<div class="toggle-header" data-target="#business-details">
		<h2 class="StepTitle toggle-header">
			<spring:message
				code="label.service.changebusinessservice.businessDetails" />
			<i class="material-icons toggle-icon">keyboard_arrow_down</i>
		</h2>
	</div>
	
	<div id="business-details">
		<form>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="business_oldname" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changebusinessservice.old_name" />:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input class="form-control" name="business_oldname"
								id="business_oldname" readonly="readonly"/>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="business_newname" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changebusinessservice.new_name" /><span
							class="required">*</span>:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input class="form-control" name="business_newname"
								id="business_newname"/>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			</div><!-- row -->
			
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="form-input-group clearfix">
						<label for="business_charges" class="col-md-4 col-sm-12 col-xs-12">
							<spring:message code="label.service.changebusinessservice.charges" />:
						</label>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<input class="form-control" name="business_oldname"
								id="business_oldname" readonly="readonly"/>
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			</div><!-- row -->
			
			<%-- <jsp:include page="checklist.jsp" /> --%>
			
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-input-group">
						<div class="actionBar">
							<button type="button" id="addDiv" class="btn">
								<spring:message code="label.btn.submit" />
							</button>
							<input class="btn" type="reset"
								value="<spring:message code="label.btn.reset" />">
						</div>
					</div><!-- form-input-group -->
				</div><!-- col-md-6 col-sm-12 col-xs-12  -->
			</div><!-- row -->
		</form>
	</div><!-- #business-details -->
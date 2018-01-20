	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	
	<div class="toggle-header" data-target="#property-details">
		<h2 class="StepTitle toggle-header">
			<spring:message code="label.property.objection.form.objectiondetails" />
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
	
	<div id="property-details">
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.objection.form.objectiontype" /> :<span class="required">*</span> 
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<select class="form-control">
							<option></option>
						</select>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.objection.form.noticebill" /> :<span class="required">*</span> 
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" id="street" class="form-control" required="required">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		
		<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.objection.form.noticebilldate" /> :
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" id="" class="form-control" required="required" disabled="disabled">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.objection.form.propnum" /> :
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" id="" class="form-control" disabled="disabled">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
			
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.objection.form.flatnum" /> :
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" id="" class="form-control" disabled="disabled">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.objection.form.propaddress" /> :
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						 <textarea class="form-control" disabled="disabled"></textarea>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
		
         <div class="row">
         	<div class="form-group">
             	<label class="control-label col-md-2 col-sm-2 col-xs-12">Owner Name :
             	</label>
             	<div class="col-md-1 col-sm-2 col-xs-12">
             		<input type="text" id="" class="form-control" disabled="disabled">
             		
            		</div>
             	<div class="col-md-3 col-sm-3 col-xs-12">
               		<input type="text" id="propowner_fname_e" class="form-control" disabled="disabled">
            		</div>
             	<div class="col-md-3 col-sm-3 col-xs-12">
               		<input type="text" id="propowner_mname_e" class="form-control" disabled="disabled">
             	</div>
             	<div class="col-md-3 col-sm-3 col-xs-12">
               		<input type="text" id="propowner_lname_e" class="form-control" disabled="disabled">
             	</div>
          	
           	</div>
           </div>
           
           <div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.objection.form.objectiondesc" />:<span class="required">*</span> 
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<textarea class="form-control"></textarea>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	</div>
</div>

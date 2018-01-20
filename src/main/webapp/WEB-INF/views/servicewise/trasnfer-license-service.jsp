<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="toggle-header" data-target="#license-trfdetails">
	<h2 class="StepTitle toggle-header">
	<spring:message code="label.service.transferlicense.pageTitle" /> <i class="material-icons toggle-icon">keyboard_arrow_down</i>
	</h2>
</div>

<div class="row" id="license-trfdetails">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12">
			<spring:message code="label.service.transferlicense.licenseno"/><span class="required">*</span>:
		</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="input-group">
				<input type="text" class=" form-control" id="">
					<span class="input-group-addon"> 
						<a href="#" id="searchLicenDet"><i class="fa fa-question-circle" style="font-size:20px"></i>
						</a>
					</span>
			</div> 
		</div>
	</div><!-- form-group -->
	

	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.licenseusername"/>:
		</label>
		<div class="col-md-10 col-sm-12 col-xs-12">
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<input type="text" name="license_username"  class="form-control" disabled=""/>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<input type="text" name="license_usermiddlename" class="form-control" disabled=""/>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<input type="text" name="license_lastname" class="form-control" disabled=""/>
				</div>
			</div>
		</div>
	</div><!-- form-group -->
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.fromdate"/>:
		</label>
		
			<div class="col-md-4 col-sm-4 col-xs-12">
					<input type="text" name="license_fromdate" class="form-control" disabled=""/>
			</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.todate"/>:
		</label>
			<div class="col-md-4 col-sm-4 col-xs-12">
					<input type="text" name="license_todate" class="form-control" disabled=""/>
			</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		
	</div><!-- form-group -->
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.businesname"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="" class="form-control input-control" disabled=""/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.owntype"/>:
		</label>
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="" class="form-control input-control" disabled=""/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
	
	</div><!-- form-group -->
	
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.lictype"/>:
		</label>
		
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="" class="form-control" disabled=""/>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-md-2 col-sm-2 col-xs-12">
			<spring:message code="label.service.transferlicense.dues"/>:
		</label>
		<div class="col-md-4 col-sm-4 col-xs-12">
			<input type="text" name="" class="form-control" disabled=""/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
		<div class="col-md-2 col-sm-2 col-xs-12">
			<input type="button" name="" class="btn form-control input-control" value="<spring:message code="label.document.citizenser.pay"/>"/>
		</div><!-- col-md-4 col-sm-4 col-xs-12 -->
	</div><!-- form-group -->
	
</div><!-- #license-details -->


<div class="toggle-header" data-target="#transfer-details">
	<h2 class="StepTitle toggle-header">
		<spring:message code="label.service.propertytransfer.transferTitle"/> <i class="material-icons toggle-icon">keyboard_arrow_down</i>
	</h2>
</div>

<div id="transfer-details">
	<div class="row">
		<div class="form-input-group col-md-6 col-sm-12 col-xs-12">
			<label for="transfer_type" class="col-md-4 col-sm-12 col-xs-12">
				<spring:message code="label.service.propertytransfer.transferType"/><span class="required">*</span>: 
			</label>
			<div class="col-md-8 col-sm-12 col-xs-12">
				<select name="transfer_type" class="form-control">
					<option></option>
				</select>
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
		<spring:message code="label.service.propertytransfer.trgnewownertitle"/> <i class="material-icons toggle-icon">keyboard_arrow_down</i>
	</h2>
</div>

<div class="table-container" id="add-owner-details">
	<table class="table dataTable table-striped table-bordered" id="ownerDetailstbl">
		<thead>
			<tr>
				<th><spring:message code="label.service.propertytransfer.newownertype"/></th>
				<th><spring:message code="label.service.propertytransfer.newowneruserTitle"/></th>
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
		<div class="">
			<div class="form-group">
					<label for="owner_type" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownertype"/><span class="required">*</span>:
					</label>
					<div class="col-md-4 col-sm-12 col-xs-12 ">
						<select name="owner_type" id="owner_type" class="form-control required-field">
							<option>Main</option>
							<option>Additional</option>
						</select>
					</div>
				
					<label for="owner_type" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownersubtype"/>:
					</label>
					<div class="col-md-4 col-sm-12 col-xs-12 ">
						<select name="" id="" class="form-control required-field">
							<option></option>
						</select>
					</div>
				</div><!-- form-input-group -->
				
				<div class="form-group">
					<label for="owner_type" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.transferlicense.aadharno"/><span class="required">*</span>:
					</label>
					<div class="col-md-4 col-sm-12 col-xs-12 ">
						<input type="text" class="form-control">
					</div>
					<label for="owner_gender" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertytransfer.newownergender"/><span class="required">*</span>:</label>
				
					<div class="col-md-4 col-sm-12 col-xs-12">
						<select name="owner_gender" id="owner_gender" class="form-control required-field">
							<option>Male</option>
							<option>Female</option>
							<option>Transgender</option>
							<option>Not stated</option>
						</select>
					</div>
				</div><!-- form-input-group -->
				
				
		</div><!-- row -->
	
		
			<div class="">
				<div class="form-group col-md-12 col-sm-12 col-xs-12 clearfix">
					<label class="control-label col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownerusername"/> :<span class="required">*</span>
					</label>
					
					<div class="col-md-2 col-sm-2 col-xs-12">
						<select class="form-control required-field" id="propowner_pref_e">
							<option>--select title --</option>
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
				</div><!-- from-group -->
		
				<div class="form-group col-md-12 col-sm-12 col-xs-12 ">
					<label class="control-label col-md-2 col-sm-2 col-xs-12">
						नाव:<span class="required">*</span>
					</label>
		
					<div class="col-md-2 col-sm-2 col-xs-12">
						<select class="form-control required-field" id="propowner_pref_m">
							<option>--शीर्षक निवडा--</option>
						</select>
					</div>
		
					<div class="col-md-2 col-sm-2 col-xs-12">
						<input type="text" id="fnameRg" class="form-control required-field" name="fnameRg" placeholder="पहिले नाव"/>
					</div>
		
					<div class="col-md-2 col-sm-2 col-xs-12">
						<input type="text" id="mnameRg" class="form-control required-field" placeholder="मधले नाव"/>
					</div>
		
					<div class="col-md-4 col-sm-4 col-xs-12">
						<input type="text" id="lnameRg" class="form-control required-field" name="lnameRg"	placeholder="आडनाव"/>
					</div>
				</div><!-- from-group -->
			</div><!-- row -->
			
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.bdate"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<div class='input-group date' id='bdate'>
                    	<input type='text' id="" name="" class="form-control"/>
                    	<span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    	</span>
               	  	</div>
				</div>
				
			</div>
			
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.resaddress"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<textarea class="form-control"></textarea>
				</div>
				
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.country"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<select class="form-control">
						<option>Select</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.state"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<select class="form-control">
						<option>Select</option>
					</select>
				</div>
				
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.dis"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<select class="form-control">
						<option>Select</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.taluka"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<select class="form-control">
						<option>Select</option>
					</select>
				</div>
				
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.city"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<select class="form-control">
						<option>Select</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.pincode"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<input type="text" class="form-control " name="" id="">
				</div>
				<label for="owner_email" class="col-md-2 col-sm-12 col-xs-12">
					<spring:message code="label.service.propertytransfer.newowneremailId"/><span class="required">*</span>:</label>
					<div class="col-md-4 col-sm-12 col-xs-12">
						<input type="text" class="form-control required-field" name="owner_email" id="owner_email">
					</div>
				
			</div>
			<div class="">
				<div class="form-group">
					<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.phno"/><span class="required">*</span>:</label>
					<div class="col-md-4">
						<input type="text" class="form-control " name="" id="">
					</div>
					<label for="owner_mobile" class="col-md-2 col-sm-12 col-xs-12">
						<spring:message code="label.service.propertytransfer.newownermobileNumber"/><span class="required">*</span>:
					</label>
					<div class="col-md-4 col-sm-12 col-xs-12">
						<input type="text" class="form-control required-field" name="owner_mobile" id="owner_mobile">
					</div>
				</div>
			</div><!-- row -->
			<div class="form-group">
				<label class="col-md-offset-2 checkbox-inline">
			      <input type="checkbox" value="" style="width: auto;"><spring:message code="label.service.transferlicense.samaddress"/>
			    </label>
			</div>
			<div class="form-group">
				<label class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.transferlicense.corraddress"/><span class="required">*</span>:</label>
				<div class="col-md-4">
					<textarea class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.master.meter.add.uploadphoto" /><span class="required">*</span>:	</label>
				  <div class="col-md-4 col-sm-4 col-xs-12">
		                          <div class="input-group">
			            <span class="input-group-btn">
			                <span class="btn btn-default btn-file">
			                    Browse… <input type="file" id="imgInp">
			                </span>
			            </span>
			            <input type="text" class="form-control" readonly>
			          </div>
			        <img id='img-upload'/>
		                      	</div>
			</div>
			<div class="form-group ">
				<div class="actionBar">
					<button type="button" id="addDiv" class="btn"><spring:message code="label.btn.add" /></button>
					<input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
					<input class="btn" type="reset" value="<spring:message code="label.btn.close" />">
				</div>
			</div>
		</form>
	</div><!-- #owner-details -->
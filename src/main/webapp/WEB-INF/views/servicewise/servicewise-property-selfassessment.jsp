	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	
	<div class="toggle-header" data-target="#property-details">
		<h2 class="StepTitle toggle-header">
			<spring:message code="label.property.registration.form.propdetails" />
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
	
	<div id="property-details">
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.registration.form.flathouseno" /> :<span class="required">*</span> 
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" id="flatno" class="form-control" required="required">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.houseappname" />  :<span class="required">*</span>
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						 <select class="form-control">
						 	<option></option>
						 </select>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.registration.form.streetroad" /> :<span class="required">*</span> 
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<select class="form-control">
						 	<option></option>
						 </select>
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.arealoca" />:<span class="required">*</span>
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" id="area" required="required" class="form-control">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 -->
		</div><!-- row -->
	
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12"><spring:message code="label.property.registration.form.pincode" /> :<span class="required">*</span> 
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						<input type="text" id="pincode" class="form-control" required="required">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="form-input-group clearfix">
					<label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.landmark" /> :<span class="required">*</span>
                            </label>
	
					<div class="col-md-8 col-sm-12 col-xs-12">
						 <input type="text" id="landmark" required="required" class="form-control">
					</div>
				</div><!-- form-input-group -->
			</div><!-- col-md-6 col-sm-12 col-xs-12 -->
		</div><!-- row -->
		
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearfix">
                  <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.constrcomplyear" /> :<span class="required">*</span>
                    </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <input type="text" id="" required="required" class="form-control" maxlength="4">
                    </div>
                  </div>
               </div>
               
               <div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearfix">
                  <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.proptype" /> :<span class="required">*</span>
                    </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
               </div>
		</div><!-- row -->
		<div class="row">
			
               <div class="col-md-6 col-sm-6 col-xs-12">  
               <div class="form-input-group clearfix"> 
                <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.propsubtype" /> :<span class="required">*</span>
                 </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
				</div>
				
				<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group cleafix">
                  <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.propusagtype" />  :<span class="required">*</span>
                    </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
               </div>
		</div>
		
		<div class="row">
			
               <div class="col-md-6 col-sm-6 col-xs-12">  
               <div class="form-input-group clearfix"> 
                <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.propusagesubtype" /> :<span class="required">*</span>
                 </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
				</div>
				
				<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearfix">
                  <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.occuptype" />  :<span class="required">*</span>
                    </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
               </div>
		</div>
		<div class="row">
			
               <div class="col-md-6 col-sm-6 col-xs-12">  
               <div class="form-input-group clearfix"> 
                <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.conclass" /> :<span class="required">*</span>
                 </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
				</div>
				
				<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-input-group clearfix">
                  <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.constrarea" />  :<span class="required">*</span>
                    </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
               </div>
		</div>
		
		<div class="row">
			
               <div class="col-md-6 col-sm-6 col-xs-12">  
               <div class="form-input-group clearfix"> 
                <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.carpetarea" /> :<span class="required">*</span>
                 </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
				</div>
				
				<div class="col-md-6 col-sm-6 col-xs-12">  
               <div class="form-input-group clearfix"> 
                <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.type" /> :<span class="required">*</span>
                 </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <select class="form-control">
                      	<option>test</option>
                      </select>
                    </div>
                  </div>
				</div>
		</div>
		
		<div class="row">
			
               <div class="col-md-6 col-sm-6 col-xs-12">  
               <div class="form-input-group clearfix"> 
                <label class="control-label col-md-4 col-sm-4 col-xs-12" ><spring:message code="label.property.registration.form.addinfo" /> :<span class="required">*</span>
                 </label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                      <textarea class="form-control"></textarea>
                    </div>
                  </div>
				</div>
		</div>
		
		
	</div>
	<div class="toggle-header" data-target="#owner-details">
		<h2 class="StepTitle toggle-header">
			<spring:message code="label.property.registration.form.propownerdetails" />
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
			<div id="owner-details">
					<div class="row">
							<div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12">मालकाचे नाव :<span class="required">*</span> 
                            	</label>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                            		<select class="form-control" id="propowner_pref_m">
                            			<option>श्री.</option>
                            			<option>सौ.</option>
                            			<option>मिस</option>
                            		</select>
                            		
                           		</div>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                              		<input type="text" id="propowner_fname_m" class="form-control" required="required" placeholder="पहिले नाव">
                           		</div>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                              		<input type="text" id="propowner_mname_m" class="form-control" required="required" placeholder="मधले नाव">
                            	</div>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="propowner_lname_m" class="form-control" required="required" placeholder="आडनाव">
                            	</div>
                         	
                          	</div>
                        </div>
                        <div class="row">
                        	<div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12">Owner Name :<span class="required">*</span> 
                            	</label>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                            		<select class="form-control" id="propowner_pref_e">
                            			<option>Mr.</option>
                            			<option>Mrs.</option>
                            			<option>Miss</option>
                            		</select>
                            		
                           		</div>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                              		<input type="text" id="propowner_fname_e" class="form-control" required="required" placeholder="First Name">
                           		</div>
                            	<div class="col-md-2 col-sm-2 col-xs-12">
                              		<input type="text" id="propowner_mname_e" class="form-control" required="required" placeholder="Middle Name">
                            	</div>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="propowner_lname_e" class="form-control" required="required" placeholder="Last Name">
                            	</div>
                         	
                          	</div>
                          </div>
                          <div class="row">
                          	<div class="form-group">
                          		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.property.registration.form.org" /> : 
                            	</label>
                            	<div class="col-md-10 col-sm-10 col-xs-12">
                              		<input type="text" id="propowner_org" class="form-control">
                            	</div>
                          	</div>
                          </div>
                          <div class="row">
                          	<div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.property.registration.form.mobnum" /> : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="text" id="propowner_mno" class="form-control">
                            	</div>
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.property.registration.form.emailid" />  : 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<input type="email" id="propowner_emailid" class="form-control">
                            	</div>
                          </div>
                          </div>
                          <div class="row">
	                          <div class="form-group">
	                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.property.registration.form.adharno" /> : 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<input type="text" id="propowner_adharno" class="form-control">
	                            	</div>
	                         		
	                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.property.registration.form.panno" /> : 
	                            	</label>
	                            	<div class="col-md-4 col-sm-4 col-xs-12">
	                              		<input type="text" id="propowner_panno" class="form-control">
	                            	</div>
	                          </div>
                          </div>
                          <div class="row">
                          <div class="form-group">
                            	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.property.registration.form.gender" /> :<span class="required">*</span> 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                            		<select class="form-control">
                            			<option><spring:message code="label.property.registration.form.male" /></option>
                            			<option><spring:message code="label.property.registration.form.female" /></option>
                            			<option><spring:message code="label.property.registration.form.trans" /></option>
                            		</select>
                              		<%-- <label class="radio-inline"><input type="radio" name="gender" value="<spring:message code="label.property.registration.form.male" />"><spring:message code="label.property.registration.form.male" /></label>
									<label class="radio-inline"><input type="radio" name="gender" value="<spring:message code="label.property.registration.form.female" />"><spring:message code="label.property.registration.form.female" /></label>
									<label class="radio-inline"><input type="radio" name="gender" value="<spring:message code="label.property.registration.form.trans" />"><spring:message code="label.property.registration.form.trans" /></label> --%>
                            	</div>
                         		
                         		<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.property.registration.form.ownertype" /> :<span class="required">*</span> 
                            	</label>
                            	<div class="col-md-4 col-sm-4 col-xs-12">
                              		<label class="radio-inline"><input type="radio" name="own-type" value="Primary"><spring:message code="label.property.registration.form.primary" /></label>
									<label class="radio-inline"><input type="radio" name="own-type" value="Secondary"><spring:message code="label.property.registration.form.secondary" /></label>
                            	</div>
                          </div>
                          </div>
                          <div class="row">
                          <div class="form-group">
                          	<button type="button" class="btn btn-primary active" onclick="saveownerdetails()"><spring:message code="label.btn.add" /></button>
                          </div>
                          </div>
                          
                          <div class="table-container" id="add-partner-details">
								<table id="propertyowner-table"
									 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
									<thead>
										<tr>
											<th><input type="checkbox" value=""></th>
											<th><label class="control-label"><spring:message code="label.property.registration.form.ownername" /></label></th>
											<th><label class="control-label"><spring:message code="label.property.registration.form.mobnum" /></label></th>
											<th><label class="control-label"><spring:message code="label.property.registration.form.emailid" /></label></th>
											<th><label class="control-label"><spring:message code="label.property.registration.form.adharno" /></label></th>
											<th><label class="control-label"><spring:message code="label.property.registration.form.panno" /></label></th>
											<th><label class="control-label"><spring:message code="label.property.registration.form.gender" /></label></th>
											<th><label class="control-label"><spring:message code="label.property.registration.form.ownertype" /></label></th>
										</tr>
									</thead>
									<tbody>	
										
									</tbody>
								</table>
							</div>

										
		
		
		
	</div>
	
	
	
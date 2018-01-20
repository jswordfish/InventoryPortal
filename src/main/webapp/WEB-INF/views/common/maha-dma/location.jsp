<!-- Location Form -->
<div class="toggle-header" data-target="#application-details"><h2 class="StepTitle">
	<spring:message code="label.form.survey.locationdetails" /> <!-- <i class="material-icons toggle-icon">keyboard_arrow_down</i> --></h2>
	<!-- Location -->
	<div class="col-md-12">
		<div class="form-group">
			<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.location" /> :<span class="astric">*</span>	</label>
			<div id="locNo" class="col-md-4 col-sm-4">
				 <input name="locName" id="locName" type="text" class="form-control" 
				 required="required" onblur="validateLocation()" onkeypress="removeLocation()"/>
				 <input type="hidden" name="locId" id="locId" />
			</div>
			<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.apartment" /> :<span class="astric">*</span>	</label>
			<div id="aprtNo" class="col-md-4 col-sm-4">
				<input name="aprtName" type="text" class="form-control" id="aprtName" 
				 required="required" onblur="validateApart()" onkeypress="removeApart()"/>
				<input type="hidden" name="aprtId" id="aprtId"/>
			 </div>
		</div>
		<%-- --%>
		<div class="form-group">
			<%-- <label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.ward" /> :	</label>
			<div id="wardNo" class="col-md-4 col-sm-4">
				<input name="wardName" type="text" class="form-control" id="wardName"/>
				<!-- onblur="validateWard()" onkeypress="removeWard()" -->
				<input type="hidden" name="wardId" id="wardId"/>
			 </div>	
			<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.zone" /> :</label>
			<div id="zoneNo" class="col-md-4 col-sm-4">
				<input name="zoneName"  type="text" class="form-control" id="zoneName"/>
				<!--  onblur="validateZone()" onkeypress="removeZone()"--> 
				<input type="hidden" name="zoneId"  id="zoneId"/>
			 </div> --%>
								<div class="form-group col-md-12">	
									<label for="name" class="col-md-2 col-sm-12 col-xs-12">Revenue Boundaries :	</label>
									<div class="col-md-2 col-sm-12 col-xs-12 subboundry1">
										<select class="form-control subDroped1">
											<option value="0">Select Zone</option>
										</select>
									</div>
									<div class="col-md-2 col-sm-12 col-xs-12 subboundry2">
										<select class="form-control subDroped2">
											<option value="0">Select Zone</option>
										</select>
									</div>
									<div class="col-md-2 col-sm-12 col-xs-12 subboundry3">
										<select class="form-control subDroped3">
											<option value="0">Select Zone</option>
										</select>
									</div>
									<div class="col-md-2 col-sm-12 col-xs-12 subboundry4">
										<select class="form-control subDroped4">
											<option value="0">Select Zone</option>
										</select>
									</div>
									<div class="col-md-2 col-sm-12 col-xs-12 subboundry5">
										<select class="form-control subDroped5">
											<option value="0">Select Zone</option>
										</select>
									</div>
								</div>
		</div>
		<div class="form-group">
			<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.road" /> :<span class="astric">*</span>	</label>
			<div id="roadNo" class="col-md-4 col-sm-4">
				<input name="roadName" type="text" class="form-control" id="roadName" 
				 required="required" onblur="validateRoad()" onkeypress="removeRoad()"/>
				<input type="hidden" name="roadId" id="roadId"/>
			 </div>	
			<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.locality" /> :<span class="astric">*</span>	</label>
			<div id="localityNo" class="col-md-4 col-sm-4">
				<input name="localityName" type="text" class="form-control" id="localityName" 
				 required="required" onblur="validateLocality()" onkeypress="removeLocality()"/>
				<input type="hidden" name="localityId" id="localityId"/>
			 </div>
		</div>
		<div class="form-group">
			<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.longitude" /> :</label>
			<div class="col-md-4 col-sm-4">
				<input name="longitude" type="text" class=" form-control" id="lon"
					oninput="setCustomValidity('')" readonly="readonly"
					oninvalid="this.setCustomValidity('${pls}')"/>
			</div>	
			<label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.survey.latitude" /> :	</label>
			<div class="col-md-4 col-sm-4">
				<input name="latitude" type="text" class=" form-control" id="lat"
					oninput="setCustomValidity('')" readonly="readonly"
					oninvalid="this.setCustomValidity('${pls}')"/>
			</div>	
		</div>

		<!-- Google Map -->
		<div class="form-group">
			<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message
						code="label.form.survey.inspector.gmap" />: <span
					class="required">*</span></label>
				<div id="map_canvas" class="col-md-4 col-sm-4">
				</div>
				<div id="locationinfo" style="display: none;"></div>
		</div>
		<!-- Google Map -->
	</div>
<!-- End Loction -->

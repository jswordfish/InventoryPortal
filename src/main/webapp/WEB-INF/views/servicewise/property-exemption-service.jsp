<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="toggle-header" data-target="#noc-div"><h2 class="StepTitle toggle-header"><spring:message code="label.service.propertyexemption.exemptiondetails" /><i class="material-icons toggle-icon">keyboard_arrow_down</i></h2></div>
	<div class="row" id="noc-div">
       	<div class="form-group col-md-12 col-sm-12 col-xs-12"> 
            	<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.propno" /><span class="required">*</span>:</label> 
            	<div class="col-md-4 col-sm-12 col-xs-12">
					<div class="input-group">
						<input type="text" class=" form-control" id="">
							<span class="input-group-addon"> 
								<a href="#" id="searchLicenDet"><i class="fa fa-question-circle" style="font-size:20px"></i>
								</a>
							</span>
					</div> 
				</div>
	           	
	           	<label for="name" class="col-md-2 col-sm-12 col-xs-12 col-md-offset-1"><spring:message code="label.service.propertyexemption.flatno" />:</label>
	           	<div class="col-md-3 col-sm-12 col-xs-12 "> 
	             	<select class="form-control">
	             		<option></option>
	             	</select>
	           	</div>
         </div>
         
         <!-- if whole billing then show this div -->
         <div class="form-group col-md-12 col-sm-12 col-xs-12 whole-bill-div"> 
            	<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.propowner" />:</label> 
            	<div class="col-md-4 col-sm-12 col-xs-12">
					<input type="text" class=" form-control" id="" disabled>
				</div>
	           	
	           	<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.propaddress" />:</label> 
            	<div class="col-md-4 col-sm-12 col-xs-12">
					<textarea class="form-control" disabled></textarea>
				</div>
         </div>
         
         <!-- Ends here -->
         
          <!-- if individual billing then show this div -->
         <div class="form-group col-md-12 col-sm-12 col-xs-12 individual-bill-div"> 
            	<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.flatowner" />:</label> 
            	<div class="col-md-4 col-sm-12 col-xs-12">
					<input type="text" class=" form-control" id="" disabled>
				</div>
	           	
	           	<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.propaddress" />:</label> 
            	<div class="col-md-4 col-sm-12 col-xs-12">
					<textarea class="form-control" disabled></textarea>
				</div>
         </div>
         
         <!-- Ends here -->
         
         
         
       	 
       	<div class="form-group col-md-12 col-sm-12 col-xs-12"> 
           	<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.dues" />:</label> 
           	<div class="col-md-4 col-sm-12 col-xs-12"> 
             		<input type="text" class=" form-control" name="" id="dues" disabled="true"> 
          	</div> 
          </div>
       	 <div class="form-group col-md-12 col-sm-12 col-xs-12"> 
            	<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.exereason" /><span class="required">*</span>:</label> 
            	<div class="col-md-4 col-sm-12 col-xs-12"> 
              		<select class="form-control">
              			<option></option>
              		</select>
            	</div> 
         </div>
         
       	 <div class="form-group" id="">
       	 	 <label class="control-label col-md-2 col-sm-4 col-xs-12"><spring:message code="label.service.propertyexemption.exeonprop" />:</label>
           	<div class="col-md-6 col-sm-6 col-xs-12"> 
            		<label class="radio-inline"><input type="radio" name="exemption-rdo" style="width: auto;" checked id="prop-whole"><spring:message code="label.service.propertyexemption.rdo.whoprop" /></label>
            		<label class="radio-inline"><input type="radio" name="exemption-rdo" style="width: auto;" id="prop-part"><spring:message code="label.service.propertyexemption.rdo.partpro" /></label>
           	</div> 
       	 </div>
          <div class="form-group prop-whole-div" id="" >
            <label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.fromdate" />:</label> 
            <div class="col-md-4 col-sm-12 col-xs-12">
	           	<div class='input-group date ' id='fromdate'>
	                 	<input type="text" class="form-control" />
	                 	<span class="input-group-addon">
	                     <span class="glyphicon glyphicon-calendar"></span>
	                 	</span>
	           	 </div>	
           	 </div>
           	 <label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.service.propertyexemption.todate" />:</label> 
           	 <div class="col-md-4 col-sm-12 col-xs-12">
	           	<div class='input-group date' id='todate'>
	                 	<input type="text" class="form-control" />
	                 	<span class="input-group-addon">
	                     <span class="glyphicon glyphicon-calendar"></span>
	                 	</span>
	           	 </div>	
           	 </div>
       	 </div>
       	 
       	 <!-- if whole billing + partial property then show this div -->
       	 
       	 <div class="form-group prop-partial-div" id="" style="display:none">
       	 	<div class="panel-body table-container">
                 <table id="banktable" class="table table-striped table-bordered">
                   <thead>
                           <tr>
                               <th><spring:message code="label.service.propertyexemption.tbl.flatno" /></th>
                               <th><spring:message code="label.service.propertyexemption.tbl.roomno" /></th>
                               <th><spring:message code="label.service.propertyexemption.fromdate" /></th>
                               <th><spring:message code="label.service.propertyexemption.todate" /></th>
                               <th><spring:message code="label.btn.add" />/<spring:message code="label.btn.remove" /></th>
                           </tr>
                   </thead>
                   <tbody>
                           <tr>
								<td><select class="form-control"><option></option></select></td>
								<td><select class="form-control"><option></option></select></td>
								<td>
									<div class='input-group date' id='tblfromdate'>
					                 	<input type="text" class="form-control" />
					                 	<span class="input-group-addon">
					                     <span class="glyphicon glyphicon-calendar"></span>
					                 	</span>
				           	 		</div>	
					           	</td>
								<td>
									<div class='input-group date' id='tbltodate'>
					                 	<input type="text" class="form-control" />
					                 	<span class="input-group-addon">
					                     <span class="glyphicon glyphicon-calendar"></span>
					                 	</span>
				           	 		</div>	
					           	</td>
					           	<td>
                                   <!--  <a><i class="fa fa-edit"></i></a> / <a><i class="fa fa-trash" aria-hidden="true"></i></a> -->
                                 <span><a><i class="fa fa-plus btnAdded" aria-hidden="true"></i></a></span><span>/</span><span><a><i class="fa fa-minus btnDeleted" aria-hidden="true"></i></a></span>
                                </td>
					           	
								
                           </tr>
                   </tbody>
                 </table>
             </div>
       	 </div>
       	 
       	 <!-- Ends here -->
       	 
       	 <!-- if individual billing + whole property then show this div -->
       	 <div class="form-group ">
       	 	<label class="control-label col-md-2 col-sm-4 col-xs-12"><spring:message code="label.service.propertyexemption.tbl.flatno" />:</label>
       	 	<div class="col-md-4 col-sm-12 col-xs-12">
       	 		<input type="text" class="form-control" disabled>
       	 	</div>
       	 	
       	 	<label class="control-label col-md-2 col-sm-4 col-xs-12"><spring:message code="label.service.propertyexemption.tbl.roomno" />:</label>
       	 	<div class="col-md-4 col-sm-12 col-xs-12">
       	 		<input type="text" class="form-control" disabled value="ALL">
       	 	</div>
       	 </div>
       	 
       	 <!-- Ends here -->
       	 
       	 <!-- if individual billing + partial property then show this div -->
       	 <div class="form-group ">
       	 	<label class="control-label col-md-2 col-sm-4 col-xs-12"><spring:message code="label.service.propertyexemption.tbl.flatno" />:</label>
       	 	<div class="col-md-4 col-sm-12 col-xs-12">
       	 		<input type="text" class="form-control" disabled>
       	 	</div>
       	 	
       	 	<label class="control-label col-md-2 col-sm-4 col-xs-12"><spring:message code="label.service.propertyexemption.tbl.roomno" />:</label>
       	 	<div class="col-md-3 col-sm-12 col-xs-12" style="display:inline-flex">
       	 		<select class="form-control">
       	 			<option></option>
       	 		</select>
       	 		<a style="margin-left:10px"><i id="addResult" class="fa fa-plus-circle" style="font-size:30px;"></i></a>
       	 	</div>
       	 	
       	 </div>
       	 <div class="form-group testDiv">
		</div>
       	 
       	 <!-- Ends here -->
     </div>
	        
	             	
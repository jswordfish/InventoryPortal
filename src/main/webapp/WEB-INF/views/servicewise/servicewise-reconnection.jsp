<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div class="toggle-header" data-target="#recon-div">
		<h2 class="StepTitle">
			<spring:message code="label.document.servicewiserecon.recon" /> 
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
	
	<div id="recon-div">
       	 <div class="row">
       	 	 <div class="form-group col-md-12 col-sm-12 col-xs-12 hideData"> 
	            <label for="name" class="col-md-2 col-sm-12 col-xs-12">
	            	<spring:message code="label.document.servicewiserecon.connectno" />:
	            </label> 
	            	
	           	<div class="col-md-4 col-sm-12 col-xs-12">
					<div class="input-group">
						<form:input path="connectionNo" id="waterConnNo" class="form-control" />
						<span class="input-group-addon"> 
							<a href="#" id="searchWaterDet"><i class="fa fa-question-circle" style="font-size:20px"></i>
							</a>
						</span>
					</div> 
				</div>
	         </div>
       	 </div>
         
         <div class="row">
         	<div class="form-group">
	           	<label class="control-label col-md-2 col-sm-12 col-xs-12">
	           	 	<spring:message code="label.document.servicewiserecon.consumer" />:
	            </label>
	            <div class="col-md-3 col-sm-12 col-xs-12">
	              <input type="text" name="ownerFirstName" id="ownerFirstName" class="form-control" disabled="disabled"/>
	            </div>
	            <div class="col-md-3 col-sm-12 col-xs-12">
	              <input type="text" name="ownerMiddleName"  id="ownerMiddleName" class="form-control" disabled="disabled"/>
	            </div>
	            <div class="col-md-4 col-sm-12 col-xs-12">
	              <input type="text" name="ownerLastName" id="ownerLastName" class="form-control" disabled="disabled"/>
	            </div>
	       	</div>
         </div>
       	
       	 <div class="row">
       	 	<div class="form-group">
	       	 	 <label class="control-label col-md-2 col-sm-12 col-xs-12">
	       	 	 	<spring:message code="label.document.servicewiserecon.conadd" />:
	       	 	 </label>
	       	 	 <div class="col-md-4 col-sm-12 col-xs-12"> 
	              	<textarea class="form-control" name="ownerAddress" id="ownerAddress" disabled="disabled"></textarea>
	            </div> 
	       	 </div>
       	 </div>
       	 
       	<div class="row">
       		<div class="form-group hideData">
		       	<label for="payDueAmt" class="col-md-2 col-sm-12 col-xs-12">
		       		<spring:message code="label.document.servicewiserecon.dues" />:
		       	</label> 
		       	<div class="col-md-2 col-sm-12 col-xs-12"> 
		         	<form:input path="payDueAmt" id="payDueAmt" name="payDueAmt" readonly="true" class=" form-control"/>
		       	</div> 
		      	
		       	<div class="col-md-2 col-sm-12 col-xs-12"> 
		        	<input type="button" class="btn btn-success" id="paySubmit" value="Pay"> 
		      	</div>
	       	</div>
       	</div>
       	 
       	 <div id="ConnRequest">
       	 	<div class="row">
       	 		<div class="form-group" >
	       	 		<label for="name" class="col-md-2 col-sm-12 col-xs-12">
	       	 			<spring:message code="label.document.servicewiserecon.requestcondate" />:
	       	 		</label> 
	            	<div class="col-md-4 col-sm-12 col-xs-12"> 
	              		<div class='input-group date ' id="recondate">
							<input type='text' class="form-control " id="reConnDate"  name="reConnDate" placeholder="dd/MM/yyyy"/> 
							<span class="input-group-addon"> 
								<i class="glyphicon glyphicon-calendar"></i>
							</span>
						</div>
	            	</div> 
	       	 	</div>
       	 	</div>
       	 	<div class="row">
       	 		<div class="form-group">
	       	 	 <label for="remark" class="control-label col-md-2 col-sm-12 col-xs-12">
	       	 	 	<spring:message code="label.document.servicewiserecon.remark" />:</label>
		       	 	 <div class="col-md-4 col-sm-4 col-xs-12"> 
		              	<textarea name="remark" id="remark" class="form-control" ></textarea>
		            </div> 
		       	 </div>
       	 	</div>
		</div><!-- #ConnRequest -->
	</div>
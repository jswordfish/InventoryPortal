<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <form id="propertyForm" method="GET" action="/property/rest/getPropExtractData"> --%>
<div class="process-div">
	      			<div class="row">
	      			
<form:hidden path="" id="propertyId" name="propertyId"  value="0"/>
<form:hidden path="" id="chargeId" name="chargeId"/>
<form:hidden path="" id="srnId" name="srnId" value="0"/>
<form:hidden path="" id="usage" name="usage"/>
<form:hidden path="" id="subUsage" name="subUsage"/>
<form:hidden path="" id="lookupval" name="lookupval"/>


	      			<div class="col-md-6">
		             	<div class="form-group col-md-12 col-sm-12 col-xs-12"> 
		                  	<label for="name" class="col-md-2 col-sm-12 col-xs-12">Extract Property No.:</label> 
			                  	<div class="col-md-4 col-sm-12 col-xs-12"> 
			                      <form:input path="propertyNo" id="propertyNo"  class="form-control" ></form:input>
			                  	</div> 
			                  	<div class="col-md-1 col-sm-12 col-xs-12"> 
			                  		<a href="#" id="searchpropDet"><i class="fa fa-question-circle" style="font-size: 30px;"></i></a>
			                  	</div>
		                  	
			                  	<div class="col-md-2 col-sm-12 col-xs-12"> 
			                  		<input type="button" class="btn btn-primary" id="propertySearch1"  value="Search" >
			                  	</div>
		                  	
		                  
		                 	
		                 	<form:hidden path="spropULB" id="spropULB" name="spropULB" ></form:hidden>
		                 	 <%-- <form:input type="hidden" path="spropULB" id="spropULB" value=""/> --%>
		                 	
		                  	
	                  	</div>
	                  	<div class="form-group">
		                 	<label for="name" class="col-md-2 col-sm-12 col-xs-12">Dues:</label> 
			                 	<div class="col-md-4 col-sm-12 col-xs-12"> 
			                       <form:input path="payDueAmt" id="payDueAmt" class=" form-control" readonly="true"></form:input>
			                 	</div> 
		                 	
			                 	<div class="col-md-1 col-sm-12 col-xs-12"> 
				                   <input type="button" class="btn btn-success" id="paySubmitProp" value="Pay"> 
				                 </div>
		                 	
		                </div>
	                  	
	                  	</div>
	                  	<div class="col-md-6">
                			<div class="form-group" id="flatDiv">
						      		<label for="name" class="col-md-4 control-label"><spring:message code="label.document.propnodue.flatno" /></label>
						              <div class="col-md-8"> 
						               	<form:select path="flat_no" id="flat_no" class="form-control">
						                	<form:option value=""><spring:message code="label.document.propnodue.flatsel" /></form:option>
						               	</form:select>
						              </div>
						            </div>
                		</div>
	               
	             	</div>
	           
	     
	</div>
	           	
	
 			
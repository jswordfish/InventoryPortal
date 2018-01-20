<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="process-div">

<div class="row">
<form:hidden path="" id="waterConnectionId" name="connectionId"/>
<form:hidden path="" id="taxId" name="taxId"/>
<form:hidden path="" id="taxDetId" name="taxDetId"/>
<form:hidden path="" id="srnId" name="srnId"/>
<form:hidden path="" id="emailId" value=""/>

            		<div class="form-group col-md-12 col-sm-12 col-xs-12">
            			<div class="col-md-6"> 
		                 	<label for="name" class="col-md-4 col-sm-12 col-xs-12"><spring:message code="label.document.noduewater.connectionno" />:</label> 
		                 	<div class="col-md-5 col-sm-12 col-xs-12"> 
		                   	<form:input path="connectionNo" id="waterConnNo"  class=" form-control" />
		                 	</div>
		                 	<div class="col-md-1 col-sm-12 col-xs-12"> 
		                 		<a href="#" id="searchWaterDet"><i class="fa fa-question-circle" style="font-size:25px"></i></a>
		                 	</div> 
		                 	<div class="col-md-2 col-sm-12 col-xs-12"> 
		                   	<input type="button" class="btn btn-primary" value="Search" id="waterSearch"/>
		                 	</div>
		                 	<div class="">
		                 	<label for="name" class="col-md-4 col-sm-12 col-xs-12"><spring:message code="label.document.noduewater.dues" />:</label> 
		                 	<div class="col-md-4 col-sm-12 col-xs-12"> 
		                   	<form:input path="payDueAmt" id="payDueAmt" name="payDueAmt" readonly="true"  class=" form-control"/>
		                 	</div> 
		                 	
		                    	<div class="col-md-2 col-sm-12 col-xs-12"> 
			                    	<input type="button" class="btn btn-success" id="paySubmit" value="Pay"> 
			                  	</div>
		                 	
		                 	</div>
                		</div>
                		<%-- <div class="col-md-6 search-res" id="waterDiv" style="display:none;padding-left: 40px;">
                			<div class="row">
						      	<div class="form-group">
						      		<label for="name" class="col-md-4 control-label">Old Connection No </label>
						              <div class="col-md-8">
						               	<form:input path="spropULB" id="spropOldCno" name="spropOldCno" readonly="true" ></form:input>
						              </div>
						         </div>
						      </div>
						      
						          <div class="row">
						            <div class="form-group">
						              <label for="name" class="col-md-4 control-label">Name</label>
						              <div class="col-md-8">
						               	<form:input path="spropName" id="spropName" name="spropName" readonly="true"></form:input>
						              </div>
						            </div>
						        </div> 
                		</div> --%>
                	</div>	
           	</div>
	  	</div>
	              
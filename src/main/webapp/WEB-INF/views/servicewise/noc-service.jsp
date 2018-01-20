<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<form:hidden path="" id="srnId" name="srnId"/>
	<form:hidden path="" id="propertyId" name="propertyId"/>
	<form:hidden path="waterConnectionId" id="waterConnectionId"/>
	<form:hidden path="licensceId" id="licensceId" name="licensceId"/> 
	<form:hidden path="" id="subUsage" name="subUsage"/>
	<form:hidden path="" id="lookupval" name="lookupval"/>
	<form:hidden path="" id="flatId" name="flatId"/>
	<form:hidden path="" id="nocchargeId" name="nocchargeId"/>
	<form:hidden path="" id="nocchargedetId" name="nocchargedetId"/>
	
	<div class="toggle-header" data-target="#noc-div">
		<h2 class="StepTitle"><spring:message code="label.document.nocservice.title" />
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
	
	<div id="noc-div">
		<spring:message code="label.please.enter" var="pls" />

  			<div class="row">
  				<div class="form-group col-md-12 col-sm-12 col-xs-12"> 
         		<label for="name" class="col-md-2 col-sm-12 col-xs-12">
         			<spring:message code="label.document.nocservice.propertyno" />:
         		</label> 
         		<div class="col-md-4 col-sm-12 col-xs-12" id="propertyDiv"> 
	         		<div class="input-group">
	            			<form:input path="propertyNo" id="propertyNo" class="form-control"
	             		required="true" onblur="validatePropertyNo()" onkeypress="removePropertyNo()"/>
	             		<span class="input-group-addon">
	             			 <a href="#" id="searchpropDet"><i class="fa fa-question-circle" style="font-size:20px"></i></a>
	             		</span>
	             	</div>
	         	</div> 
	         </div>
  			</div>
           	
 			<!-- Url for property No,Question Mark -->
     		<!--  
     			<div class="col-md-2 col-sm-12 col-xs-12"> 
        	 		<input type="button" class="btn btn-primary" value="Search" id="propertySearch1">
      			</div> 
      		-->
        
        <div class="row" id="firstpropdiv">
        	 <div class="form-group">
	           	<label for="firstName" class="control-label col-md-2 col-sm-2 col-xs-12">
	           	 	<spring:message code="label.document.nocservice.propertyname" />:
	            </label>
	            <div class="col-md-3 col-sm-3 col-xs-12">
	             	<form:input path="firstName" id="firstName" class="form-control" disabled="disabled"/>
	            </div>
	            <div class="col-md-3 col-sm-3 col-xs-12">
	             	<form:input path="middleName" id="middleName" class="form-control" disabled="disabled"/>
	            </div>
	            <div class="col-md-4 col-sm-4 col-xs-12">
	             	<form:input path="lastName" id="lastName" class="form-control" disabled="disabled"/>
	            </div>
	       	</div>
        </div>
      	
      	 	<div class="row" id="secondpropdiv">
      	 		<div class="form-group">
	       	 	 <label for="propAdress" class="control-label col-md-2 col-sm-2 col-xs-12">
	       	 	 	<spring:message code="label.document.nocservice.propertyadd" />:
	       	 	 </label>
	       	 	 <div class="col-md-4 col-sm-4 col-xs-12"> 
	       	 	 	<form:textarea path="propAdress" id="propAdress" class="form-control"  disabled="disabled"/>
	            </div>
	            
	            <label for="propusage" class="control-label col-md-2 col-sm-2 col-xs-12">
	            	<spring:message code="label.document.nocservice.usage" />:
	            </label>
	       	 	 <div class="col-md-4 col-sm-4 col-xs-12"> 
	       	 	  <form:input path="propusage" id="propusage" class="form-control" disabled="disabled"/>
	            </div> 
	       	</div>
      	 	</div>
      	 
      	 	<div class="row" id="thirdpropdiv">
      	 		<div class="form-group">
	       	 	  <label class="control-label col-md-2 col-sm-2 col-xs-12">
	       	 	  	<spring:message code="label.document.nocservice.bldgtype" />:</label>
	       	 	
	       	 	 <div class="col-md-4 col-sm-4 col-xs-12"> 
	              	<input type="text" id="buildingType" name="buildingType" class="form-control" disabled="disabled"/> 
	            </div> 
	             
	            <label class="control-label col-md-2 col-sm-2 col-xs-12">
	            	<spring:message code="label.document.nocservice.contstructtype" />:
	            </label>
	       	 	 <div class="col-md-4 col-sm-4 col-xs-12">
	       			<input type="text" id="tmCmLookupDetHierarchicalByLookupDetHierId1ConsClass" name="tmCmLookupDetHierarchicalByLookupDetHierId1ConsClass" class="form-control" disabled="disabled"/>
	            </div> 
	       	 </div>
      	 	</div>
      	 
      	 	<div class="row">
      	 		<div class="form-group" id="fourthpropdiv">
				<label class="control-label col-md-2 col-sm-2 col-xs-12">
					<spring:message code="label.document.nocservice.plotno" />.:
				</label>
				<div class="col-md-4 col-sm-4 col-xs-12"> 
					<form:input path="plotNo" id="plotNo" class="form-control" disabled="disabled"/>
				</div>
	            
				<label class="control-label col-md-2 col-sm-2 col-xs-12">
	            	<spring:message code="label.document.nocservice.cts" />.:
	            </label>
	       	 	 <div class="col-md-4 col-sm-4 col-xs-12"> 
	       	 	   <form:input path="ctsNo" id="ctsNo" class="form-control" disabled="disabled"/>
	            </div> 
	       	 </div>
      	 	</div>
      	 
      		<div class="row">
      			<div class="form-group"> 
            	<label for="proppayDueAmt" class="col-md-2 col-sm-12 col-xs-12" id="propLabelId">
            		<spring:message code="label.document.nocservice.dues"/>:
            	</label> 
            	<div class="col-md-4 col-sm-12 col-xs-12"> 
            	   <form:input path="proppayDueAmt" id="proppayDueAmt" class="form-control" disabled="disabled"/>
            	</div> 
            	
		       <div class="col-md-2 col-sm-12 col-xs-12">
		       	<button type="button" id="payDueProp" class="btn"><spring:message code="label.btn.pay"></spring:message></button>
		      </div>
           	</div>
      		</div>
      		
      		<div class="row" id="flatDiv">
      			<div class="form-group">
	      		<label for="flat_no" class="col-md-2 col-sm-2 col-xs-12">Flat No.:</label>
	              <div class="col-md-4 col-sm-4 col-xs-12"> 
	               	<form:select path="flat_no" id="flat_no" class="form-control" >
	                	<form:option value="0">Select Flat No</form:option>
	               	</form:select>
	              </div>
			 </div>
      		</div>
      	 
		<!-- For water Page -->
       	<div class="row">
       	 	<div class="form-group">
            	<label for="waterConnNo" class="col-md-2 col-sm-12 col-xs-12">
            		<spring:message code="label.document.nocservice.waterno" />:
            	</label> 
            	<div class="col-md-4 col-sm-12 col-xs-12" id="waterDiv">
            		<div class="input-group">
            			<form:input path="connectionNo" id="waterConnNo" class="form-control" required="true" onblur="validateWaterNo()" onkeypress="removeWaterNo()" />
            			<span class="input-group-addon">
            				<a href="#" id="searchWaterDet"><i class="fa fa-question-circle" style="font-size:20px"></i></a>
            			</span>
            		</div>
            	</div> 
			    
           		<!-- 	
           		<div class="col-md-2 col-sm-12 col-xs-12"> 
             		<input type="button" class="btn btn-primary" value="Search" id="waterSearch"/>
           		</div>
           		-->
         	</div>
       	 </div>
         
        <div class="row" id="firstwaterdiv">
         	<div class="form-group">
	           	 <label class="control-label col-md-2 col-sm-2 col-xs-12">
	           	 	<spring:message code="label.document.nocservice.waterconsumername" />:
	            </label>
	            <div class="col-md-3 col-sm-3 col-xs-12">
	            	<form:input path="spropName" id="spropName" class="form-control"  disabled="disabled"/>
	            </div>
	            <div class="col-md-3 col-sm-3 col-xs-12">
	               <form:input path="spropMname" id="spropMname" class="form-control"  disabled="disabled"/>
	            </div>
	            <div class="col-md-4 col-sm-4 col-xs-12">
	              <form:input path="spropLname" id="spropLname" class="form-control"  disabled="disabled"/>
	            </div>
	       	</div>
         </div>
       	
       	<div class="row" id="secondwaterdiv">
       		 <div class="form-group">
	       	 	 <label for="ownerAdress" class="control-label col-md-2 col-sm-2 col-xs-12">
	       	 	 	<spring:message code="label.document.nocservice.consumeradd" />:
	       	 	 </label>
	       	 	 <div class="col-md-4 col-sm-4 col-xs-12"> 
	              	<form:textarea path="ownerAdress" id="ownerAdress" class="form-control" disabled="disabled"/>
	            </div> 
	       	 </div>
       	</div>
       	 
       	<div class="row">
       		 <div class="form-group">
	       	 	<label for="payDueAmt" class="col-md-2 col-sm-12 col-xs-12" id="waterLabelId">
	       	 		<spring:message code="label.document.nocservice.dues" />:
	       	 	</label> 
	           	<div class="col-md-4 col-sm-12 col-xs-12"> 
	             		<form:input path="payDueAmt" id="payDueAmt" readonly="true"  class=" form-control"/>
	           	</div>
	           	
		        <div class="col-md-2 col-sm-12 col-xs-12">
		       	<button type="button" id="payDuewater" name="payDuewater" class="btn"><spring:message code="label.btn.pay"/></button>
		       </div>
	       	</div>
       	</div>
       	
  		<!-- For Trade Page -->
       	<div class="row">
       		 <div class="form-group"> 
	             <label for="name" class="col-md-2 col-sm-12 col-xs-12">
	              	<spring:message code="label.document.nocservice.tradelicenseno" />:
	             </label> 
	             <div class="col-md-4 col-sm-12 col-xs-12" id="licenscediv"> 
	             	<div class="input-group">
	             		<form:input path="licenseNo" id="licNo"  class=" form-control" value="${licNo}"  required="true" onblur="validateLicensceNo()" onkeypress="removeLicensceNo()"/>
	             		<span class="input-group-addon">
	             			<a href="#" id="searchLicenDet"><i class="fa fa-question-circle" style="font-size:20px"></i></a>
	             		</span>
	             	</div>
	             </div>
	             
	             <!--  
		             <div class="col-md-2 col-sm-2 col-xs-12"> 
		                <input type="button" class="btn btn-primary" value="Search" id="licSearch">
		             </div> 
	             -->
         	</div>
       	</div>
       	
        <div class="row" id="licenseTypeId">
        	<div class="form-group">
	       	 	 <label class="control-label col-md-2 col-sm-2 col-xs-12">
	       	 	 	<spring:message code="label.document.nocservice.licensetype" />:</label>
	       	 	 <div class="col-md-4 col-sm-3 col-xs-12"> 
	         		<form:input path="licenType" class="form-control" id="licenType" required="required" disabled="disabled" value="${licenseType}"/>
	       	 	</div>
	       	 </div>
        </div>
        
        <div class="row" id="licenseTimePeriodId">
        	<div class="form-group">
	       	 	<label for="name" class="col-md-2 col-sm-12 col-xs-12">
	       	 		<spring:message code="label.document.nocservice.licenseper" />:
	       	 	</label> 
	           	<div class="col-md-3 col-sm-3 col-xs-12"> 
	             		<input type="text" class="form-control" name="" id="" disabled="disabled"> 
	           	</div> 
	           	<label class="control-label col-md-1 col-sm-1 col-xs-12">
	           		<spring:message code="label.document.nocservice.to" />:
	           	</label>
	           	<div class="col-md-3 col-sm-3 col-xs-12"> 
	           		<input type="text" class=" form-control" name="" id="" disabled="disabled">
	           	</div>
	       	 </div>
        </div>
        
        <div class="row">
        	<div class="form-group">
	       	 	<label for="buildingPermisionPropsalNo" class="col-md-2 col-sm-12 col-xs-12">
	       	 		<spring:message code="label.document.nocservice.buildprem" />:
	       	 	</label> 
	           	<div class="col-md-4 col-sm-12 col-xs-12"> 
	            		<input type="text" id="buildingPermisionPropsalNo" name="buildingPermisionPropsalNo" class="form-control" />  
	           	</div> 
	       	 </div>
        </div>
            
       	<div class="row">
       		<div class="form-group">
	       	  	<label for="occupencyCertificateNo" class="col-md-2 col-sm-12 col-xs-12">
	       	  		<spring:message code="label.document.nocservice.occup" />:
	       	  	</label> 
	           	<div class="col-md-4 col-sm-12 col-xs-12"> 
	            	<input type="text" id="occupencyCertificateNo" name="occupencyCertificateNo" class="form-control" />  
	           	</div>
	       	</div>
       	</div>
       	  
		<div class="row">
			<div class="form-group">
		     	<label for="businessType" class="control-label col-md-2 col-sm-2 col-xs-12">
		     		<spring:message code="label.document.nocservice.busstype" />:
		     	</label>
		      	<div class="col-md-4 col-sm-4 col-xs-12">
		      		<select class="form-control" id="businessType" name="businessType">
						<option value="">--Select--</option>
					</select>
		      	</div>
		     </div>
		</div>
		
       	<div class="row">
       		<div class="form-group">
		       	 <label for="businessDescription" class="control-label col-md-1 col-sm-1 col-xs-12">
		       	 	<spring:message code="label.document.nocservice.bussdesc" />:
		       	 </label>
		       	 <div class="col-md-4 col-sm-4 col-md-offset-1 col-xs-12"> 
		           	<%-- <form:textarea path="ownerAdress" id="ownerAdress" class="form-control" disabled="true"/> --%>
		           	<textarea class="form-control" id="businessDescription" name="businessDescription" ></textarea>
		         </div>
	       </div>
       </div>
     </div><!-- #noc-div -->
      	
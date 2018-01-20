<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<form:hidden path="" id="propertyId" name="propertyId"/>
	<form:hidden path="" id="chargeId" name="chargeId"/>
	<form:hidden path="" id="srnId" name="srnId"/>
	<form:hidden path="" id="usage" name="usage"/>
	<form:hidden path="" id="subUsage" name="subUsage"/>
	<form:hidden path="" id="lookupval" name="lookupval"/>
	
	<div class="toggle-header" data-target="#property-details">
		<h2 class="StepTitle">
			<spring:message code="label.document.nodue.property-title" />
			<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
		</h2>
	</div>
	
    <div id="property-details">		
		<div class="row">
			<div class="form-group">
	     		<label for="propertyNo" class="col-md-2 col-sm-12 col-xs-12">
	     			<spring:message code="label.document.propnodue.propno" />:
	     		</label> 
	     		
	       		<div class="col-md-4 col-sm-12 col-xs-12"> 
	       			<div class="input-group">
		       			<form:input path="propertyNo" id="propertyNo"  class="form-control" ></form:input>
		       			<span class="input-group-addon">
		       				<a href="#" id="searchpropDet"><i class="fa fa-question-circle" style="font-size:20px"></i></a>
		       			</span>
		       		</div>
	         		
	         		<span id="propertyMsg" style="display: none;"><spring:message code="label.document.propnodue.kindenter" /></span>
	       		</div>
	     	
		       	<div class="col-md-6 col-sm-12 col-xs-12"> 
		         	<input type="button" class="btn btn-primary" value="Search" id="propertySearch1">
		       	</div>
	     	</div><!-- form-group -->
	 	</div><!-- row -->
       
	     <div class="row">
	  		<div class="form-group">
	          	<label for="payDueAmt" class="col-md-2 col-sm-12 col-xs-12">
	          		<spring:message code="label.document.propnodue.dues" />:
	          	</label> 
	          	
	          	<div class="col-md-4 col-sm-12 col-xs-12"> 
	            	<form:input path="payDueAmt" id="payDueAmt" class=" form-control" readonly="true"></form:input>
	          	</div>
	         	
	           	<div class="col-md-2 col-sm-12 col-xs-12"> 
					<input type="button" class="btn btn-success" id="paySubmitProp" value="<spring:message code="label.btn.pay"/>"/> 
	           	</div>
			</div>
		</div>
         
	    <div class="row">
			<div class="col-md-6">
				<div class="form-group" id="flatDiv">
					<label for="flat_no" class="col-md-4 control-label">
						<spring:message code="label.document.propnodue.flatno" />
					</label>
					<div class="col-md-8"> 
					 	<form:select path="flat_no" id="flat_no" class="form-control">
							<form:option value=""><spring:message code="label.document.propnodue.flatsel" /></form:option>
						</form:select>
		  			</div>
				</div>
			</div>  		
         			
         	<%-- 
       			<div class="row">
       				<div class="col-md-6 search-res" style="display:none" id="flatwiseDiv">
        				<div class="form-group">
   							<label for="name" class="col-md-4 control-label"><spring:message code="label.document.propnodue.oldprop" /></label>
          					<div class="col-md-8">
             					<form:input path="spropOldPno" id="spropOldPno" readonly="true" ></form:input>
          					</div>
         				</div>
      				</div>
     			</div>
     			
		        <div class="row">
		          <div class="col-md-6">
		          	<div class="form-group">
		             <label for="name" class="col-md-4 control-label"><spring:message code="label.document.propnodue.name" /></label>
		             <div class="col-md-8">
		           	    <form:input path="spropName" id="spropName" name="spropName" readonly="true"></form:input>
		             </div>
		           </div>
		          </div>
		       </div>
       		--%>
       	</div>
     </div><!-- #property-details -->
           	
           	<%-- <div class="row">
            	<div class="form-group col-md-12 col-sm-12 col-xs-12"> 
                 	<label for="name" class="col-md-2 col-sm-12 col-xs-12">Dues:</label> 
                 	<div class="col-md-4 col-sm-12 col-xs-12"> 
                   	<form:input path="payAmt" id="payAmt"  class=" form-control"/>
                 	</div> 
                	</div>
           	</div> --%>
         	</div>
<!-- <div class="modal fade" id="propertyModal" tabindex="-1" role="dialog" aria-labelledby="propertyModal" aria-hidden="true">
  <div class="modal-dialog lg" role="document">
    <div class="modal-content">
     <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Property Details</h4>
      </div>
      <div class="modal-body small-text" id="documents-body">
      
      <div class="row">
      	<div class="form-group">
      		<label for="name" class="col-md-4 control-label">ULB Name</label>
              <div class="col-md-8">
               		<input type="text" id="spropULB" name="spropULB"></input>
              </div>
            </div>
      </div>
               <div class="row">
			<div class="form-group">
              <label for="name" class="col-md-4 control-label">Property No.</label>
              <div class="col-md-8">
               	<input type="text" id="spropNo" name="spropNo"></input>
              </div>
            </div>
            </div>
             <div class="row">
            <div class="form-group">
              <label for="name" class="col-md-4 control-label">Name</label>
              <div class="col-md-8">
               	<input type="text" id="spropName" name="spropName"></input>
              </div>
            </div>
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
             <button type="button" id="ok-btn" class="btn btn-primary">Ok</button>
      </div>
    </div>
  </div>
</div> -->
	             	
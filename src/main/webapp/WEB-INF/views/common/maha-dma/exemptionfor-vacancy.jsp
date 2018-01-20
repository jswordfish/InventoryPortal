<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
 
<compress:html >
<!DOCTYPE html>
<html lang="en" style="height:100%;">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Government of Maharashtra</title>

    <link rel="icon" href="images/favicon.ico">
   <jsp:include page="../homeheader.jsp" />
  
  
  <style>
    .error{
        color: red !important;
    }
    
    .has-error .form-control {
    border-color: red !important;
   }
    </style>
  
  </head>
 <body>
  <jsp:include page="../citizenHeaderTop.jsp" />
  <div class="prop-section">

    <div class="container" style="height: 100%">
    			<div class="form-title">
    				<h3 style="display:inline-block"><spring:message code="label.service.propertyexemption.title" /></h3> <span class="home-icon"><i class="fa fa-home"></i></span> 
    			</div>
       <!-- Smart Wizard -->
                    <div>
                      <div class="ulb-section col-md-12">
                      <div class="toggle-header" data-target="#application-details"><h2 class="StepTitle"><spring:message code="label.document.citizenser.applicantdet" /> <i class="glyphicon glyphicon-chevron-down toggle-down"><span>keyboard_arrow_down</span></i></h2></div>
                       <form  id="frmData">
                       <div class="" id="application-details">					
				            <div class="row">
				              <div class="form-group col-md-12 col-sm-12 col-xs-12">
				                 
				                <label class="col-md-2" for="ulb-name"><spring:message code="label.document.servicereq.ulbname" /><span class="required">*</span>:</label>
				                <div class="col-md-6">
				                
				              <select class=" form-control" id="ulbIdDesc">
									<option value=""><spring:message code="label.document.servicereq.selulb" /></option>
				                </select> 
				                </div>
				              </div>
				              <div class="form-group col-md-12 col-sm-12 col-xs-12">
					               <label class="col-md-2" for="ulb-name"><spring:message code="label.document.servicereq.sername" /><span class="required">*</span>:</label>
					                <div class="col-md-6">
					                 <select class=" form-control"  id="setServiceId" readonly="true" >
				                			<option value="" readonly="true" ><spring:message code="label.document.servicereq.selsername" /></option>
				                	</select>
					                </div>
					            </div>
				           	 </div>
            			
                      	
                      	 
                      	 <%-- <jsp:include page="applicant-details.jsp" />  --%>
						</div>	
                         
						</form>
                          	
                           <jsp:include page="../../servicewise/property-exemption-service.jsp" />
                           <%-- <jsp:include page="checklist.jsp" /> --%>
                          	
                     <div class="toggle-header" data-target="#charges-details"><h2 class="StepTitle"><spring:message code="label.document.citizenser.charge" /> <i class="glyphicon glyphicon-chevron-down toggle-down"><span>keyboard_arrow_down</span></i></h2></div>      	
                       <form>  
                        <div id="charges-details">
                          <div class="form-group">
                            	 <label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.document.citizenser.charge" />:
	                            	</label>
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <input type="text" id="charges" class="form-control" required="required">
	                            </div>
	                            
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <button type="button" id="payCharges" class="btn"><spring:message code="label.document.citizenser.pay" /></button>
	                            </div>
                         	
                          	</div>
                          </div>
							
                       	 </form>
                      </div>
                      </div>
                      </div>
                      
</div>


<jsp:include page="../../common/citizenFooter.jsp" />



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	   <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>

<jsp:include page="jsFooter.jsp" />
<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
<script>

$(document).ready(function(){
	
	 $("#addResult").click(function() {
		    $(".testDiv").append("<div class='con col-md-offset-6' style='margin-top:5px;'><label class='control-label col-md-4 col-sm-4 col-xs-12'><spring:message code='label.service.propertyexemption.tbl.roomno' />:</label><div class='col-md-5'><select class='form-control'><option></option></select></div><a class='removeResult'><i class='fa fa-minus-circle' style='font-size:30px;'></i></a></div>");
		  });
		  $('body').on('click','.removeResult',function() {
			  $(this).parent('div.con').remove()

		  });
	
	
	$("#prop-part").click(function(){
		$(".prop-whole-div").hide();
		$(".prop-partial-div").show();
	});
	
	$("#prop-whole").click(function(){
		$(".prop-whole-div").show();	
		$(".prop-partial-div").hide();
	});
});


$(document).on('click', '.toggle-header', function(e){
	$content = $($(this).data('target'));
    
    if(!$content.is(':visible')){
      $content.slideDown('slow');
      $(this).find('i.toggle-icon span').html('keyboard_arrow_up')
    }
    else{
    	$content.slideUp('slow');
      $(this).find('i.toggle-icon span').html('keyboard_arrow_down')
    }
  });


$(function () {
	$('#fromdate').datetimepicker({
		format:"DD/MM/YYYY"
	});
	$('#todate').datetimepicker({
		format:"DD/MM/YYYY"
	});
	$('#tblfromdate').datetimepicker({
		format:"DD/MM/YYYY"
	});
	$('#tbltodate').datetimepicker({
		format:"DD/MM/YYYY"
	});
   
});

</script>



  </body>
</html>
</compress:html>

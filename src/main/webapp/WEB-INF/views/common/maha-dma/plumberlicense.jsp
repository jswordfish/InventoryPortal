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
    				<h3 style="display:inline-block">NOC</h3> <span class="home-icon"><i class="fa fa-home"></i></span> 
    			</div>
       <!-- Smart Wizard -->
                    <div>
                      <div class="ulb-section col-md-12">
                      <div class="toggle-header" data-target="#application-details"><h2 class="StepTitle"><spring:message code="label.document.serviceduplicate.applicantdet" /><i class="glyphicon glyphicon-chevron-down toggle-down"><span>keyboard_arrow_down</span></i></h2></div>
                       <form:form action="" method="POST" modelAttribute="applicationBean" id="frmData">
    						
    								<div class="row">
			              <div class="form-group col-md-12 col-sm-12 col-xs-12">
			                 
			                <label class="col-md-2" for="ulb-name"><spring:message code="label.document.serviceduplicate.ulbname" /></label>
			                <div class="col-md-6">
			                <form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
<%-- 			                <form:hidden path="" id="servDeschide" value="${servDeschide }"/> --%>
			                <form:hidden path="setServiceId" id="servDeschide" value="${servDeschide }"/>
			                
			              <form:select class=" form-control" path="ulbIdDesc" id="ulbIdDesc" onchange="searchCharges()">
								<form:option value=""><spring:message code="label.document.serviceduplicate.selulb" /></form:option>
			                </form:select> 
			                </div>
			              </div>
			              <div class="form-group col-md-12 col-sm-12 col-xs-12">
				               <label class="col-md-2" for="ulb-name"><spring:message code="label.document.serviceduplicate.sername" /></label>
				                <div class="col-md-6">
				                 <form:select class=" form-control" path="" id="setServiceId" disabled="true" >
			                			<form:option value="" readonly="true" ><spring:message code="label.document.serviceduplicate.selsername" /></form:option>
			                	</form:select>
				                </div>
				            </div>
            		</div>
            	 <jsp:include page="applicant-details.jsp" /> 
    							
    							<div class="toggle-header" data-target="#application-details"><h2 class="StepTitle"><spring:message code="label.document.plumberlicense.title" /><i class="glyphicon glyphicon-chevron-down toggle-down"><span>keyboard_arrow_down</span></i></h2></div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.plumberlicense.name" />:
    									</label>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="hidden" id="srIdAdd">
    										<input type="hidden" id="taxId">
    										<input type="hidden" id="taxDetId"> 
    										<input type="text" class="form-control" placeholder="First Name" id="firstname" maxlength="20">	
    									</div>
    								</div>
    								
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" class="form-control" placeholder="Middle Name" id="middlename" maxlength="20">
    									</div>
    								</div>
    								
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" class="form-control" placeholder="Last Name" id="lastname" maxlength="20">
    									</div>
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.plumberlicense.aadharno" />:
    									</label>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="number" class="form-control" id="aNo" maxlength="12">
    									</div>
    								</div>
    								<div class="col-md-2 col-md-offset-1 col-sm-12 col-xs-12">
    									<div>
    										<label><spring:message code="label.document.plumberlicense.panno" />:</label>
    									</div>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" class="form-control" id="pNo" style="text-transform: uppercase;" maxlength="10">
    									</div>
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.plumberlicense.birthdate" />:
    									</label>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12" >
    									<div class="input-group date " id="birthdate">
    										 <input type='text' class="form-control" id="dob"/>
                                                 <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
    									</div>	
    								</div>
    								<div class="col-md-2 col-md-offset-1 col-sm-12 col-xs-12">
    									<div>
    										<label><spring:message code="label.document.plumberlicense.age" />:</label>
    									</div>
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" class="form-control" id="age">
    									</div>
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.plumberlicense.address" />:
    									</label>
    								</div>	
    								<div class="col-md-9 col-sm-12 col-xs-12">
    									<textarea style="max-width:100%;width:100%" id="addr" > 
    									
    									</textarea>	
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.plumberlicense.emailid" />:
    									</label>
    								</div>	
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" class="form-control" id="email">
    									</div>	
    								</div>
    								<div class="col-md-2 col-md-offset-1 col-sm-12 col-xs-12">
    									<div>
    										<label>
    											<spring:message code="label.document.plumberlicense.phoneno" />:
    										</label>
    									</div>	
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    									 <input type='text' class="form-control" id="phNo" />
    									</div>	
    								</div>
    							</div>
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.plumberlicense.qualicerrtif" />:
    									</label>
    								</div>	
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    										<input type="text" class="form-control" id="qC">
    									</div>	
    								</div>
    								<%-- <div class="col-md-2 col-md-offset-1 col-sm-12 col-xs-12">
    									<div>
    										<label>
    											<spring:message code="label.document.plumberlicense.ulbname" />:
    										</label>
    									</div>	
    								</div>
    								<div class="col-md-3 col-sm-12 col-xs-12">
    									<div>
    									 <input type='text' class="form-control" />
    									</div>	
    								</div> --%>
    							</div>
    							
    						
    							
    							
    						
    								
										</form:form> 
                          	
                           <%-- <jsp:include page="../../servicewise/noc-service.jsp" /> --%>
                           <%-- <jsp:include page="checklist.jsp" /> --%>
                           
                           <div class="toggle-header" data-target="#upload-div"><h2 class="StepTitle toggle-header">Upload Document<i class="glyphicon glyphicon-chevron-down toggle-down"><span>keyboard_arrow_down</span></i></h2></div>			
                           <div class="row" id="upload-div">
                           <c:url var='jsonCommonChecklistUrl' value='/common/service/saveChecklist' />
                           <form:form modelAttribute="filesBean"  method="post" action="${jsonCommonChecklistUrl}" enctype="multipart/form-data"  id="checkListForm">
                           <form:hidden path="returnURL" id="returnURL"/> 
                           <jsp:include page="checklist.jsp" />
                           
                           </form:form>
                           </div>
                           
                           
                     <div class="toggle-header chargeColl" data-target="#charges-details"><h2 class="StepTitle">Charges<i class="glyphicon glyphicon-chevron-down toggle-down"><span>keyboard_arrow_down</span></i></h2></div>      	
                       <form>  
                        <div id="charges-details">
                          <div class="form-group chargeClass">
                            	 <label class="control-label col-md-2 col-sm-2 col-xs-12">Charges:
	                            	</label>
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <input type="text" id="charges" class="form-control" required="required">
	                            </div>
	                            
	                            <!-- <div class="col-md-4 col-sm-4 col-xs-12">
	                              <button type="button" id="payCharges" class="btn">Pay</button>
	                            </div> -->
                         	
                          	</div>
                          </div>
							
                       	 </form>
                       	 
                       	  <div class="actionbar">
    										
    										<button type="button" class="btn" onclick="savePlumberLicense()"><spring:message code="label.btn.submit" /></button>
										</div>
                          	
                      </div>
                      </div>
                      </div>
                      
</div>


<jsp:include page="../../common/citizenFooter.jsp" />



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	   <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
    <script src="<c:url value="/maha-dma/js/surveyReqForm_validation.js" />"></script>
		
<jsp:include page="jsFooter.jsp" />

<script>


function removeEmptyValueFromJSON(reqArr){
   for(var key in reqArr) {
       if (reqArr[key] == undefined || reqArr[key] == '') {
           delete reqArr[key];
       }
       for(var inKey in reqArr[key]) {
           if (reqArr[key][inKey] == undefined || reqArr[key][inKey] == '') {
               delete reqArr[key][inKey];
           }
       }
   }
   return reqArr;
}

</script>
<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
<c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
<c:url var='jsonpaymentgateway' value='/water/rest/send/waterPaymentGateway' />

<script>

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

	$('#birthdate').datetimepicker();
	
	getULBListIDnDesc("${jsonULBListUrl}","ulbIdDesc");
	getServiceList("${jsonServiceListUrl}","setServiceId");
		 
	$("#setServiceId").val($("#servDeschide").val());
	
	$(document).ready(function(){
		$(".chargeClass").hide();
		$(".chargeColl").hide();
	});
	
</script>

<!-- My Validations -->

<script type="text/javascript">



</script>


<!-- My Validations -->


<c:url var='saveApplicantDetails' value='/common/application/save'/>
<c:url var='savePlumberLicense' value='/waterplumberlicense/saveUpdateNewWaterPlumberLicense' />

  <script>
  
  function savePlumberLicense() {
		
	  saveApplication();
	  
	debugger
	var savePlumberLicense = "${savePlumberLicense}"
		
		
	var finalObj= {};
  	
	//var srnId = getQueryVariable("srnId");
		
	var fname = $("#firstname").val();
	var mname = $("#middlename").val();
	var lname = $("#lastname").val();
	var aNo = $("#aNo").val();
	var pNo = $("#pNo").val();
	var dob = $("#dob").val();
	var age = $("#age").val();
	var addr = $("#addr").val();
	var mail = $("#email").val();
	var phNo = $("#phNo").val();
	var qC = $("#qC").val();
  	var status = 1;
  	
  	var ulbIdDesc = $("#ulbIdDesc").val();
  	var splitData = ulbIdDesc.split("|");
  	
  	finalObj.srnId = $("#srIdAdd").val();
  	finalObj.ulbId = splitData[0];
  	finalObj.firstName = fname;
  	finalObj.middleName = mname;
  	finalObj.lastName = lname;
  	finalObj.issueFlag = 'N';
  	finalObj.contactNumber = phNo;
  	finalObj.address = addr;
  	finalObj.qualification = qC;
  	finalObj.uidId = aNo;
  	finalObj.panNo = pNo;
  	finalObj.email = mail;
  	//finalObj.status = 1;
  	
  	/* var count = $('#storage tr').length;
  	
   finalObj.tmNocLoiDets = [];
  	
  	for(var i=1; i<count; i++){
  		lookupBean = {};
  		lookupBean.nocChargeId = $("#nocChargeId"+i).val();
  		lookupBean.nocActAmt = $("#nocChgActRateAmt"+i).val();
  		lookupBean.nocChargeAmt = $("#nocChgModRateAmt"+i).val();
  		lookupBean.nocRemark = $("#nocRemark"+i).val();
  		lookupBean.status = 1;
			
  		finalObj.tmNocLoiDets.push(lookupBean);
  	} */
  	
  	console.log(finalObj);
  	
   	 $.ajax({
  	      type: "POST",
  	      url: savePlumberLicense,
  	      contentType : "application/json",
  	      //dataType : 'json',
  	      data : JSON.stringify(finalObj),
  	      async: false,
  	      headers: {
  	          "Authorization": "Basic " + btoa("ashok:pass") 
  	      },
  	      success: function (data){
  	    	  debugger
  	    	  console.log(data);
  	    	  
  	    	var ulbIdDesc = $("#ulbIdDesc").val();
			  var splitData = ulbIdDesc.split("|");
	
			  var ulbId = splitData[0];
			  var serId = $("#setServiceId").val();
			  var amt = $("#charges").val();
			  var mobNo = $("#applicantMobile").val();
			  var taxId = $('#taxId').val();            //hidden field in nodue_water jsp
			  var taxDetId = $('#taxDetId').val();      //hidden field in nodue_water jsp
	    	  var srnId = $("#srIdAdd").val();
			  var connectionId = data;
  	    	  
  	    	 var amt = $("#charges").val();
  	    	  //alert("saved")
  	    	 // location.reload(true);
  	    	  if(amt == 0){
  	    		$("#checkListForm").submit(); 
  	    	  }else{
  	    		
    	      	  var datavar2 = {"wulbId":ulbId,"serviceId":serId,"payAmount":amt,"mobNo":mobNo,"connectionId":connectionId,"tax_det_id":taxDetId,"tax_id":taxId,"srn_id":srnId};
    	    	  console.log(datavar2);  
  	    		  
  	    		payCharge(datavar2)
  	    	  }
  	      		  
  	    	  //window.location.href = "../home"
  	    	  
  	    	  
  	    	  
  	      },
  	      statusCode: {
  			    403: function() {
  			    	 new PNotify({
  	                  title: 'Session Expire. Please Re-Login...',
  	                  styling: 'bootstrap3',
  	                  type: 'error'
  	              });
  			    	 setTimeout(function(){
  			                window.location.href="/"; 
  			            }, 2000);
  			    }
  			},
  	      error : function(e) {
  	                console.log("ERROR: ", e.responseText);
  	                console.log("ERROR: ", e);
  	              //	display(e);
  	          new PNotify({
  	                  title: 'Request Not Process... ',
  	                  styling: 'bootstrap3',
  	                  type: 'error'
  	              });
  	          }
  	      });  
		
		
	}
  
  
  
  function saveApplication()
	 {
	  
	  var saveApplicantDetails = "${saveApplicantDetails}";
		 app="N";
			 var frmData = $("#frmData").serializeObject();
			 var json_string = JSON.stringify(frmData);
			 var datavar = removeEmptyValueFromJSON(json_string);
			
			 $.ajax({
					type : "POST",
					url : saveApplicantDetails,
					contentType: "application/json; charset=UTF-8",
					dataType : 'json',
					data : datavar,
					async : false,
					success : function(data) 
					{
						 //console.log("VAL: "+data2.serviceId+"serviceTaxDetId---"+$('#taxDetId').val()+"taxid---"+$('#taxId').val());
						 $("#srNumberAdd").val(data.srNumber);
						 $("#srNumberPrim").val(data.srNumber);
						 $("#srIdAdd").val(data.srn_id);
						 /*new PNotify({
								title : 'Data save successfully',
								styling : 'bootstrap3',
								type : 'success'
							});*/
			  	       	   
						
			  	       		   
					}
				
				});
		 }
		 
		 
		 //-----------save applicant end here----------------------
  
  
		  //--------search charges start---------
function searchCharges()
{

	var jsonsearchWaterChargesUrl = "${jsonsearchWaterChargesUrl}";
			 
var datavar = {"ulbIdDesc":$("#ulbIdDesc").val() ,"setServiceId":$("#setServiceId").val()} ;

$.ajax({	        
type : "POST",
url : jsonsearchWaterChargesUrl,
contentType: "application/json; charset=UTF-8",
dataType : 'json',
data : JSON.stringify(datavar),

success : function(data1) 
{	
         var row = 1;
         if(parseInt(data1.totalRows) > 0) 
         {	       
        $.each(data1.resultData, function (i, result1) {

     	var ConNo=$("#connectionNo").val();

     	
$('#charges').val(result1.charges_amt);
$('#taxId').val(result1.service_tax_id);            //hidden field in nodue_water jsp
$('#taxDetId').val(result1.service_tex_det_id);      //hidden field in nodue_water jsp
$(".saveAction").hide();
$(".chargeClass").show();
$(".chargeColl").show();
//$("#charges-details").hide();

       });
         }
         else
       	 {
       	 PNotify.removeAll();
       	 	new PNotify({
                     title: 'No service charges applied',
                     styling: 'bootstrap3',
                     type: 'error'
       	 	});
       	 	$(".saveAction").show();
       	 	$(".chargeClass").hide();
       	 	$(".chargeColl").hide();
       	 }
},
           statusCode: {
   	   403: function() {
   	   	new PNotify({
                       title: 'Session Expire. Please Re-Login...',
                       styling: 'bootstrap3',
                       type: 'error'
                   });
   	   	setTimeout(function(){
   	               window.location.href="/"; 
   	           }, 2000);
   	   }
   	},
         error : function(e) {
                   console.log("ERROR: ", e.responseText);
                   console.log("ERROR: ", e);
                  
                 //	display(e);
             new PNotify({
                     title: 'Request Not Process... ',
                     styling: 'bootstrap3',
                     type: 'error'
                 });
             return false;    
         }
         });

         }
//--------save details end---------
		 

//--------Charges function---------

function payCharge(datavar2)
	 		{
		
	var jsonpaymentgateway = "${jsonpaymentgateway}";			
	
	 			$.ajax({
	        		type : "POST",
	        		url : jsonpaymentgateway,
	        		contentType: "application/json; charset=UTF-8",
	        		 
	        		data : JSON.stringify(datavar2),
	        		async : false,
	        		 cache: false,
	        		success : function(data)
	        		{
	        			$('#returnURL').val(data);
	        			$("#checkListForm").submit();
	        			//window.location.href = data;
	        		} ,
	        		error : function(request, status, error) {
	        			 //console.log("error "+request);
	        			// console.log("error "+error);
	        		} 
	        	});
	 		}

  
  </script>

  </body>
</html>
</compress:html>

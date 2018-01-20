<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor"
	prefix="compress"%>

<compress:html>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
    .error{
        color: red !important;
    }
    .has-error .form-control {
    border-color: red !important;
   }
    </style>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Government of Maharashtra</title>
	
	<link rel="icon" href="images/favicon.ico">
	<jsp:include page="../homeheader.jsp" />
</head>
<body>
			<jsp:include page="../../common/citizenHeaderTop.jsp" /> 
	<div class="prop-section">
		<div class="container">
			<div class="form-title">
				<h1><spring:message code="label.service.changebusinessservice.businessTitle"/></h1>
				<span class="home-icon"><i class="fa fa-home"></i></span>
			</div>
			<!-- Smart Wizard -->
			<div>
				<div class="ulb-section">
					<div class="toggle-header" data-target="#application-details">
						<h2 class="StepTitle">
							<spring:message code="label.service.changebusinessservice.applicantpagetitle"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
						</h2>
					</div>
					
                       <form:form action="" method="POST" modelAttribute="applicationBean" id="frmData">
						<div id="application-details">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="form-input-group clearfix">
										<label  for="ulbIdDesc" class="col-md-2 col-sm-12 col-xs-12">
											<spring:message code="label.service.changebusinessservice.applicantulbName"/><span class="required">*</span>:
										</label>
										<div class="col-md-6 col-sm-12 col-xs-12" id="selectbx">
										 <input type="hidden" id="licenseNo" value="${licNo }"> 
											<form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
                							<form:hidden path="" id="servDeschide" value="${servDeschide }"/>
                
										     <form:select class=" form-control" path="ulbIdDesc" id="ulbIdDesc">
												<form:option value="0">Select ULB</form:option>
											</form:select>
										</div>
									</div><!-- form-input-group  -->
								</div><!-- col-md-12 col-sm-12 col-xs-12 -->
							</div>
							
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="form-input-group clearfix">
										<label for="setServiceId" class="col-md-2 col-sm-12 col-xs-12" >
											<spring:message code="label.service.changebusinessservice.applicantserviceName"/><span class="required">*</span>:
										</label>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<form:select class=" form-control" path="setServiceId" id="setServiceId" disabled="disabled" >	
												<form:option value="">
													Select Service Name
												</form:option>
											</form:select>
										</div>
									</div><!-- form-input-group -->
								</div><!-- col-md-12 col-sm-12 col-xs-12 -->
							</div><!--  row -->

							<jsp:include page="applicant-details.jsp" />
						</div>
						
						<div class="toggle-header" data-target="#license-details">
							<h2 class="StepTitle toggle-header">
								<spring:message code="label.service.changebusinessservice.pageTitle" />
								<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
							</h2>
						</div> 
	
					<div id="license-details">
						<div class="row">
							<div class="col-md-8 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label for="license_no" class="col-md-3 col-sm-12 col-xs-12">
										<spring:message	code="label.service.changebusinessservice.license_no" /><span class="required">*</span>:
									</label>
					
									<div class="col-md-7 col-sm-12 col-xs-12">
										<div class="input-group">
											<input type="text" name="license_no" id="license_no" class=" form-control" />
											<span class="input-group-addon">
												<a href="#" id="searchLicenDet">
													<i	class="fa fa-question-circle" style="font-size: 20px"></i>
												</a>
											</span>
										</div>
									</div> 
								</div><!-- form-input-group -->
							</div><!-- col-md-6 col-sm-12 col-xs-12 -->
						</div><!-- row -->
	
						<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label for="license_holder_name" class="col-md-4 col-sm-12 col-xs-12"> <spring:message
											code="label.service.changebusinessservice.license_holder_name" />:
									</label>
					
									<div class="col-md-8 col-sm-12 col-xs-12">
										<input type="text" name="license_holder_name"  id="license_holder_name"	class="form-control" readonly="readonly">
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-12 -->
						</div><!-- row -->
	
						<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label for="license_fromdate" class="col-md-4 col-sm-12 col-xs-12">
										<spring:message	code="label.service.changebusinessservice.license_fromdate" />:
									</label>
					
									<div class="col-md-8 col-sm-12 col-xs-12">
										<input type="text" name="license_fromdate" id="license_fromdate" class="form-control"
											readonly="readonly" />
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-6  -->
	
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label for="license_businessname"
										class="col-md-4 col-sm-12 col-xs-12"> <spring:message
											code="label.service.changebusinessservice.license_todate" />:
									</label>
					
									<div class="col-md-8 col-sm-12 col-xs-12">
										<input type="text" name="license_todate" id="license_todate" class="form-control"
											readonly="readonly" />
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-6 col-sm-12 col-xs-12 -->
						</div><!-- row -->
	
						<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label for="license_business_name"
										class="col-md-4 col-sm-12 col-xs-12">
										<spring:message	code="label.service.changebusinessservice.license_business_name" />:
									</label>
					
									<div class="col-md-8 col-sm-4 col-xs-12">
										<input type="text" name="license_business_name"  id="license_business_name"
											class="form-control" readonly="readonly" />
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label for="license_business_name"
										class="col-md-4 col-sm-12 col-xs-12">
										<spring:message	code="label.service.changebusinessservice.license_type" />:
									</label>
					
									<div class="col-md-8 col-sm-4 col-xs-12">
										<input type="text" name="license_partnertype" id="license_partnertype"
											class="form-control" readonly="readonly" />
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-6 col-sm-12 col-xs-12 -->
						</div><!-- row -->
	
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-input-group clearix">
									<label for="license_dues"
										class="control-label col-md-4 col-sm-2 col-xs-12">
											<spring:message	code="label.service.changebusinessservice.license_dues" />:
									</label>
					
									<div class="col-md-8 col-sm-4 col-xs-12">
										<input type="text" name="license_dues" class="form-control" id="license_dues"
											readonly="readonly" />
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-6 col-sm-12 col-xs-12 -->
					
							<%-- 	<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-input-group clearfix">
										<div class="col-md-4 col-sm-4 col-xs-12">
											<button class="btn btn-primary">
												<spring:message
													code="label.service.changebusinessservice.license_pay" />
											</button>
										</div>
									</div><!-- form-input-group -->
								</div><!-- col-md-6 col-sm-12 col-xs-12 --> --%>
						</div><!-- row -->
					</div><!-- #license-details -->
	
					<div class="toggle-header" data-target="#business-details">
						<h2 class="StepTitle toggle-header">
							<spring:message	code="label.service.changebusinessservice.businessDetails" />
							<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
						</h2>
					</div>
	
					<div id="business-details">
						<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label for="business_oldname" class="col-md-4 col-sm-12 col-xs-12">
										<spring:message code="label.service.changebusinessservice.old_name" />:
									</label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										<input class="form-control" name="business_oldname"	id="business_oldname" readonly="readonly"/>
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-6 col-sm-12 col-xs-12 -->
	
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label for="business_newname" class="col-md-4 col-sm-12 col-xs-12">
										<spring:message code="label.service.changebusinessservice.new_name" /><span
										class="required">*</span>:
									</label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										<input class="form-control" name="business_newname"
											id="business_newname" />
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-6 col-sm-12 col-xs-12 -->
						</div><!-- row -->		
					</div><!-- #business-details -->
				</form:form>
					
							<form:form modelAttribute="filesBean"  method="post" enctype="multipart/form-data" action=" " id="checkListForm1"> 
						 
									<jsp:include page="checklist.jsp" />
									
									<div class="toggle-header" data-target="#charges-details">
										<h2 class="StepTitle toggle-header">
											<spring:message code="label.service.changebusinessservice.charges" /> 
											<i class="glyphicon glyp-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
										</h2>
									</div>
										
									<div id="charges-details">
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div class="form-input-group clearfix">
													<label for="business_charges" class="col-md-4 col-sm-12 col-xs-12">
														<spring:message code="label.service.changebusinessservice.charges" />:
													</label>
													<div class="col-md-8 col-sm-12 col-xs-12">
													 <input class="form-control" name="finalAmount"	id="charges" readonly="readonly"/>
													</div>
												</div><!-- form-input-group -->
											</div><!-- col-md-6 col-sm-12 col-xs-12 -->
										</div><!-- row -->
									</div><!-- #charges-details -->
									
									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12">
											<div class="form-input-group">
												<div class="actionBar">
													<button type="button" id="payCharges" class="btn">
														<spring:message code="label.btn.submit" />
													</button>
													<input class="btn" type="reset" id="reset"
														value="<spring:message code="label.btn.reset" />">
												</div>
											</div><!-- form-input-group -->
										</div><!-- col-md-6 col-sm-12 col-xs-12  -->
									</div><!-- row -->
								</form:form>
		
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
<jsp:include page="../citizenFooter.jsp" />
	<jsp:include page="jsFooter.jsp" />
	<script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
	<script src="<c:url value="/maha-dma/js/app.js" />"></script>
	<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
	<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />	
	
	<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
	<script>
	getULBListIDnDesc("${jsonULBListUrl}","ulbIdDesc");
	 getServiceList("${jsonServiceListUrl}","setServiceId");
	
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
		$(document).ready(function()
				{
					
					$("#licNO").val($("#licenseNo").val());	
					 $("#setServiceId").val($("#servDeschide").val());

					 if($("#ulbIdDeschide").val() != "0")
						{
				   	  		$("#ulbIdDesc").val($("#ulbIdDeschide").val());
						}
					
					
				});
					 	
		 
</script>

<script src="<c:url value="/home/js/upload.js" />"></script>
		<c:url var="jsonSearchUrl" value="/duplicate/search"/>
		<c:url var='sendNoDuePayProperty' value='/common/application/save'/>
		<c:url var="paymentUrl" value="/market1/saveBussinessData"/>
		<c:url var="jsonChargesUrl" value="/market1/charge"/>
		<c:url var="searchLicenDet" value="/duplicate/viewSearch" />
	<c:url var="jsonMarketChecklistUrl" value="/market1/saveChecklist" />
	<script src="<c:url value="/js/applicant_validation.js" />"></script> 
	<script>
	//alert($('#img').val());
	
	 $("#ulbIdDesc").change(function(){
	       
	       
	        $('#ulbIdDesc').css('border-color', '#0e0e0e');
	        $("#selectbx").find('label.error').remove()
	    });
		
	 $('#license_no').bind("blur",function(event) {
		 var ulbId = $("#ulbIdDesc").val().split("|"); 
		 var ulb=ulbId[0];
		 if(parseInt(ulb)>0){
	       if($("#license_no").val().length==0){
	    	   alert("please eneter license no");
	       }
		 }
	    });
	
	var searchLicenDet = "${searchLicenDet}";

$("#payCharges").click(function() {
	if(SearchValidations() && validateCheckList()){
	payProperty();
	console.log("calledd");
	saveChecklist();
	}
});

	
  function 	saveChecklist()
{
	  var saveFile = "${jsonMarketChecklistUrl}";
		//$("#checkListForm1").submit(); 
		 $('#checkListForm1').attr('action', saveFile);
	 		$("#checkListForm1").submit();
	}
     
function payProperty()
{
	
	
	var datavar = $("#frmData").serializeObject();
	console.log(" >>> datavar <<< "+datavar);
	var json_string = JSON.stringify(datavar);
	console.log(" >>> json_string <<< "+json_string);
	var datavar = removeEmptyValueFromJSON(json_string);
	console.log(" >>> datavar <<< "+datavar);
	
	$.ajax({
		type : "POST",
		url : "${sendNoDuePayProperty}",
		contentType: "application/json; charset=UTF-8",
		dataType : 'json',
		data : datavar,
		async : false,
		success : function(data2) 
		{
			
			console.log("success application");
  	        var datavar2 = {"prvBussName":$('#business_oldname').val(),"newBussName":$('#business_newname').val(),"ulbId":data2.ulbId,"srn_id":data2.srn_id,"sr_numbar":data2.srNumber,"serviceId":data2.serviceId,"licenseId":data2.licenseId,"finalAmount":$("#charges").val(),"mobNo":data2.applicantMobile,"noOfCopies":1,"licNo":$("#license_no").val(),"license_dues":$("#license_dues").val()};
  	       	payNow(datavar2);
		}
	});	
}
	
function payNow(datavar2){
	console.log(datavar2);
	$.ajax({
		type : "POST",
		url : "${paymentUrl}",
		contentType: "application/json; charset=UTF-8",
		data : JSON.stringify(datavar2),
		async : false,
		 cache: false,
		success : function(data)
		{
			
			//window.location = data;
			
		} ,
		error : function(request, status, error) {
			 console.log("error ");
			// console.log("error "+error);
		} 
	});
	       		
}

	
	
	
	function charges() {
		
	    	var noOfCopies=1;
         var ulbId = $("#ulbIdDesc").val().split("|");
		 console.log("ulbId "+ulbId[0]);
		 var licNo=document.getElementById("license_no").value;
		 $.ajax({
			type : "GET",
			url : "${jsonChargesUrl}",
			//contentType : "application/json",
			dataType : 'json',
			//data: finalArry, 
			// async: false,
			data : "noCopy="+noOfCopies+"&licNO="+licNo+"&ulbId="+ulbId[0],
			async : false,
			success : function(data) {
			if(data>0){
			
				$('#charges').val(data);
			}else{
				$('div [data-target="#charges-details"]').css("display", "none");
				$("#charges-details").css("display", "none");
			}
				
           	 
             	
           }

		});
	}
	

	 $(function() {
		
			 
		 
			$('#license_no').bind("blur",function(event) {
				
				var licNo=$(this).val();
				var ulbId = $("#ulbIdDesc").val().split("|");
				console.log("ulbId "+ulbId[0]);
				 if(ulbId[0]>0){
					
				if(!!licNo)
				{
					
	 			$.ajax({
					type : "GET",
					url : "${jsonSearchUrl}",
					dataType : 'json',
					data : "licNO="+licNo+"&ulbId="+ulbId[0],
					async : false,
					success : function(data) {
						if(!!data)
						{
						 $('#license_business_name').val(data.businessName);
	                  	 $('#license_holder_name').val(data.title+" "+ data.ttTlsLicHold.firstNameEn+" "+ data.ttTlsLicHold.middleNameEn+" "+data.ttTlsLicHold.lastNameEn);
	                  	// $('#license_ownership_type').val(data.ownershipType);
	                  	 $('#license_partnertype').val(data.licenType);
	                  	// $('#license_fromdate').val(data.renewalfromDate);
	                  	  $("#license_fromdate").val(GetDateFormat(new Date(data.renewalfromDate))); 
	                  	// $('#license_todate').val(data.renewaltoDate);
	                  	 $("#license_todate").val(GetDateFormat(new Date(data.renewaltoDate)));
	                  	$('#business_oldname').val(data.businessName);
	                  	if(!!data.propertyDues){
	                  	$('#license_dues').val(data.propertyDues);
	                  	}else{
	                  		$("#license_dues").css("display", "none");
	                  	}
	                  		
	                	charges();
						}
						else
							{
							console.log("Please fill Proper data");
							}
	                  	
					},
					statusCode : {
						403 : function() {
							PNotify.removeAll();
							new PNotify(
									{
										title : 'Session Expire. Please Re-Login...',
										styling : 'bootstrap3',
										type : 'error'
									});
							setTimeout(
									function() {
										window.location.href = "/";
									},
									2000);
						}
					},
					error : function(e) {
						$('#license_holder_name').val('');
						$('#license_fromdate').val('');
						$('#license_todate').val('');
						$('#license_business_name').val('');
						//$('#license_ownership_type').val('');
						$('#license_partnertype').val('');
						$('#license_dues').val('');
						$('#business_oldname').val('');
						$('#business_newname').val('');
						$('#charges').val('');
					
						PNotify.removeAll();

						new PNotify(
								{
									title : 'Enete Valid License Number... ',
									styling : 'bootstrap3',
									type : 'error'
								});
						return false;
					}


				});

			}
			else
				{
				alert("Please fill License No");
				 $('#licNO').focus().css('border-color', 'red');
				}
			}else{
				
				 $('#ulbIdDesc').focus().select().css('border-color', 'red');
				
				}
				
			});
	 
});
	 
	 
	 //updating data
	 
	 $(function() {
			$('#licSearch').click(function() {
				var licNo=document.getElementById("license_no").value;
				var ulbId = $("#ulbIdDesc").val().split("|");
				console.log("ulbId "+ulbId[0]);
				if(!!licNo)
				{
						
	 			$.ajax({
					type : "GET",
					url : "${jsonUpdateUrl}",
					//contentType : "application/json",
					dataType : 'json',
					//data: finalArry, 
					// async: false,
					data : "licNO="+licNo+"&ulbId="+ulbId[0],
					async : false,
					success : function(data) {
						if(!!data)
						{
						 $('#license_business_name').val(data.businessName);
	                  	 $('#license_holder_name').val(data.ttTlsLicHold.firstNameEn);
	                  	 $('#license_holder_middlename').val(data.ttTlsLicHold.middleNameEn);
	                  	 $('#license_holder_lastname').val(data.ttTlsLicHold.lastNameEn);
	                  	// $('#license_ownership_type').val(data.ownershipType);
	                  	 $('#license_partnertype').val(data.licenType);
	                  	 $('#license_fromdate').val(data.renewalfromDate);
	                  	 $('#license_todate').val(data.renewaltoDate);
	                  	 $('#license_holder_title').val(data.title);
	                  	$('#business_oldname').val(data.businessName);
	                	charges();
						}
						else
							{
							//alert("Please fill Proper data");
							}
	                  	
					}/* ,
	                 error : function(e) {
	                	 
                         console.log("ERROR: ", e.responseText);
                         console.log("ERROR: ", e);
                        
                       //	display(e);
                   new PNotify({
                           title: 'Request Not Process... ',
                           styling: 'bootstrap3',
                           type: 'error'
                       });
                     
               } */

				});

			}
			else
				{
				//alert("Please fill License No");
				 $('#licNO').focus().select().css('border-color', 'red');
				}
			});
	 
});
	 
	 //end
	 
	 
	 
	 $("#searchLicenDet").click(function(e) {
		
		 var ulbId = $("#ulbIdDesc").val().split("|"); 
		 var ulb=ulbId[0];
		 if(parseInt(ulb)>0){

		 $('#frmData').attr('action', searchLicenDet);
		$("#frmData").submit();
		 }
		 else
			 {
			 $('#ulbIdDesc').focus().select().css('border-color', 'red');
	         alert("Please Select ULB Name");
			 } 
		 
	});
	 function SearchValidations() {
		
		 jQuery.validator.addMethod('selectboxx2', function (value) {
		      return (value != '0');
		  }, "Please select ULB Name");	
		 
		 $.validator.addMethod("mailID", function(value, element) {
		        return this.optional(element) ||
		            /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(value);
		    }, "Please Enter Valid Email Id ");

			$("#frmData").validate(
					{
						rules : {
							ulbIdDesc : {
								selectboxx2 : true
							},
							license_no: {
								required : true
							},
							business_newname : {    
								required : true
							},
							applicantFirstName: {
								required : true
							},
							applicantLastName: {
								required : true
							},
							applicantMobile: {
								required : true,
								digits : true,
								minlength : 10,
								maxlength : 10
							},
							applicantEmail: {
								required : true,
								mailID : true
							},
							aadharNo: {
								required : true
							}
						},
						messages : {
						
							license_no: {
								required : "Please enter license no"
							},
							business_newname : {
								required : " This Field is required"
							},
							applicantFirstName: {
								required : " This Field is required"
							},
							applicantLastName: {
								required : " This Field is required"
							},
							applicantMobile: {
								required : " This Field is required",
								digits : "Please Enter Digits Only ",
								minlength : "Please Enter valid mobile number",
								maxlength : "Please Enter valid mobile number"
							},
							applicantEmail: {
								required : " This Field is required",
								mailID : "Please Enter Valid EmailId"
							},
							aadharNo: {
								required : " This Field is required"
							}
						},
						errorPlacement: function(error, element) {
							
							  if(element.attr("name") == "license_no") {
								  console.log("error");
							   // error.appendTo( element.parent("div").next("div") );
								  error.appendTo( element.parents('.col-md-7') );

							  } else {
							    error.insertAfter(element);
							  }
							},
						
						highlight : function(element, errorClass, validClass) {
							$(element).parents(".col-md-2").addClass("has-error")
									.removeClass("has-success");
						},
						unhighlight : function(element, errorClass, validClass) {
							$(element).parents(".col-md-2").addClass("has-success")
									.removeClass("has-error");
						}
					});
			if ($("#frmData").valid()) {
           
				return true;

			} else {
				   
				return false;
			}

		}
	 function SearchValidations1() {
			
		 jQuery.validator.addMethod('selectboxx1', function (value) {
		      return (value != '0');
		  }, "Please select ULB Name");

				$("#frmData").validate(
						{
							rules : {
								ulbIdDesc : {
									selectboxx1 : true
								}
							},
							
							
							highlight : function(element, errorClass, validClass) {
								$(element).parents(".col-md-2").addClass("has-error")
										.removeClass("has-success");
							},
							unhighlight : function(element, errorClass, validClass) {
								$(element).parents(".col-md-2").addClass("has-success")
										.removeClass("has-error");
							}
						});
			/* 	var ulbId = $("#ulbIdDesc").val().split("|");
				if (ulbId[0]>0) {
	              
					return true;

				} else {
	                
					return false;
				} */

			}
	 function removeEmptyValueFromJSON(reqArr) {
			for ( var key in reqArr) {
				if (reqArr[key] == undefined || reqArr[key] == '') {
					delete reqArr[key];
				}
				for ( var inKey in reqArr[key]) {
					if (reqArr[key][inKey] == undefined || reqArr[key][inKey] == '') {
						delete reqArr[key][inKey];
					}
				}
			}
			return reqArr;
		}
	 
	 
	   function GetDateFormat(date) {
	            var month = (date.getMonth() + 1).toString();
	            month = month.length > 1 ? month : '0' + month;
	            var day = date.getDate().toString();
	            day = day.length > 1 ? day : '0' + day;
	            return day + '/' + month + '/' + date.getFullYear();
	        }
	   
	   $("#reset").click(function(){
		   document.getElementById("frmData").reset();
		});
	   
	   function validations(){
		   $.validator.addMethod('checkSelected', function(value, element){

				return value != '0';},'Please Select');

			$('#frmData').validate({
			    rules: {
			        
			        ulbIdDesc: {
			            checkSelected: {
			                depends: function(element) {
			                    return $(element).find(':selected').val();
			                }
			            }
			        }
			    } 
			});
	   }
	
	</script>


</body>
</html>
</compress:html>

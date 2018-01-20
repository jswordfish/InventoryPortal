<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
 
<compress:html >
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Government of Maharashtra</title>

    <link rel="icon" href="images/favicon.ico">
 	<jsp:include page="../../homeheader.jsp" />
  </head>
  <body>
  	<jsp:include page="../../citizenHeaderTop.jsp" />
  	
  	<div class="prop-section">
    	<div class="container">
    			<div class="form-title">
    				<h1>
    					<spring:message code="label.collection.water.title" />
    				</h1> 
    				<span class="home-icon"><i class="fa fa-home"></i></span> 
    			</div><!-- form-title -->

                    <div>
                      <div class="ulb-section">
                       <form:form action="" method="POST" modelAttribute="applicationBean" id="frmData">
                       
                        <form:hidden path="" id="waterConnectionId" name="connectionId"/>
						<form:hidden path="" id="taxId" name="taxId"/>
						<form:hidden path="" id="taxDetId" name="taxDetId"/>
						<form:hidden path="" id="srnId" name="srnId"/>
						<form:hidden path="" id="emailId" value=""/>
                       
                       
                      	<form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
					  	<%-- <form:hidden path="" id="servDeschide" value="${servDeschide }"/> --%>
			            <form:hidden path="setServiceId" id="servDeschide" value="${servDeschide }"/>
			                
						<div class="row">
			              <div class="form-group">
			                <label class="col-md-2 col-sm-12 col-xs-12" for="ulbIdDesc">
			                	<spring:message code="label.document.servicereq.ulbname" /><span class="required">*</span>:
			                </label>
			                <div class="col-md-6 col-sm-12 col-xs-12">
			                  <form:select class="form-control" path="ulbIdDesc" id="ulbIdDesc">
								 <form:option value=""><spring:message code="label.document.servicereq.selulb" /></form:option>
			                  </form:select> 
			               </div>
			             </div>
			           </div>

				        <div class="row">
				        	<div class="form-group">
					            <label class="col-md-2 col-sm-12 col-xs-12" for="setServiceId">
					            	<spring:message code="label.document.servicereq.sername" /><span class="required">*</span>:
					            </label>
				              <div class="col-md-6">
				                <form:select class=" form-control" path="" id="setServiceId" disabled="true" >
			                	   <form:option value="" readonly="true" ><spring:message code="label.document.servicereq.selsername" /></form:option>
			                	</form:select>
				             </div>
					       </div>   
				        </div>
                       
                       	<div class="toggle-header" data-target="#recon-div">
                       		<h2 class="StepTitle toggle-header">
                       			<spring:message code="label.collection.water.condetails" /> 
                       			<i class="glyphicon glyphicon-chevron-down  toggle-icon"><span>keyboard_arrow_down</span></i>
                       		</h2>
                       	</div>

						<div id="recon-div">
					       	 <div class="row">
					       	 	<div class="form-group"> 
						            <label for="waterConnNo" class="col-md-2 col-sm-12 col-xs-12">
						            	<spring:message code="label.collection.water.conno" />:
						            </label> 
						            	
						           	<div class="col-md-4 col-sm-12 col-xs-12">
										<div class="input-group">
											<form:input path="connectionNo" id="waterConnNo"  class="form-control" />
											<span class="input-group-addon"> 
												<a href="#" id="searchWaterDet">
													<i class="fa fa-question-circle" style="font-size:20px"></i>
												</a>
											</span>
										</div> 
									</div>
						         </div>
					       	 </div>

							<div class="row">
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-12 col-xs-12">Consumer Name:</label>
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
								 	 <label class="control-label col-md-2 col-sm-2 col-xs-12">Consumer Address:</label>
								 	 <div class="col-md-4 col-sm-4 col-xs-12"> 
								      	<textarea class="form-control" name="ownerAddress" id="ownerAddress" disabled="disabled"></textarea>
								    </div> 
								 </div>
					 		</div>
					 
					       	<div class="row">
					       		<div class="form-group" id="dueAndDate">
						       	 	<label for="payDueAmt" class="col-md-2 col-sm-12 col-xs-12">
						       	 		<spring:message code="label.collection.water.dues" />:
						       	 	</label> 
					            	<div class="col-md-4 col-sm-12 col-xs-12"> 
					              		<form:input path="payDueAmt" id="payDueAmt" name="payDueAmt" readonly="true" class=" form-control"/>
					            	</div> 
						            	
						       	 	<label for="name" class="col-md-2 col-sm-12 col-xs-12">
						       	 		<spring:message code="label.collection.water.duedate" />:
						       	 	</label> 
					            	<div class="col-md-4 col-sm-12 col-xs-12"> 
					              		<input type='text' class="form-control " id='billDate'  name="" disabled="disabled"/>
					            	</div> 
						       	 </div>
					       	</div>
					       	 
					       	 <div class="row">
					       	 	<div class="form-group" id="amtAndReceivedFrm">
						       	 	<label for="payAmt" class="col-md-2 col-sm-12 col-xs-12">
						       	 		<spring:message code="label.collection.water.amounttopay" />:
						       	 	</label> 

					            	<div class="col-md-4 col-sm-12 col-xs-12"> 
					              		<input type='text' class="form-control" id='payAmt'  name="payAmount" />
					            	</div> 
						            	
						       	 	<label for="receivedfrom" class="col-md-2 col-sm-12 col-xs-12">
						       	 		<spring:message code="label.collection.water.receivedfrom" />:
						       	 	</label> 
					            	<div class="col-md-4 col-sm-12 col-xs-12"> 
					              		<input type='text' class="form-control" id="receivedfrom" name="receivedfrom" />
					            	</div> 
						       	 </div>
					       	 </div>

					       	 <div class="row">
					       	 	<div class="form-group">
						       	 	<a href="" id="showWaterAppModal" class="pull-right" data-toggle="modal" data-target="#payment-details">
						       	 		<spring:message code="label.collection.water.moredetails" />
						       	 	</a>
						       	 </div>
					       	 </div>
					     </div>
                         
						</form:form>
                          	
                           <%-- <jsp:include page="checklist.jsp" /> --%>
                          	
	                   	 <div class="row">
	                   	 	<div class="col-md-12 col-sm-12 col-xs-12">
	                   	 		<div class="actionBar">
	                              	<input type="submit" id="payCharges" class="btn" value="<spring:message code="label.btn.pay" />">
	                           	 
	                           		<input class="btn" id="resetBtn" type="button" value="<spring:message code="label.btn.reset" />">
	                           </div>
	                   	 	</div>
	                   	 </div>
                       	 
					</div>
				</div>
			</div>    
		</div>

     <form:form  id="frmSave"  method="POST" >
       <div class="row">
        <div class="form-group"> 
            <div class="col-md-6 col-sm-12 col-xs-12"> 
            	<input type="hidden" name="mobNo" id="mobNo">
            	<input type="hidden" id="payEmailId" name="email">
					 <input type="hidden" name="payAmount" class=" form-control" id="payAmount" > 
					 <input type="hidden" name="wulbId"  id="wulbId" > 
					 <input type="hidden" name="connectionId"  id="connectionId" > 
					 <input type="hidden" name="serviceId"  id="serviceIdWater" > 
					 <input type="hidden" name="serviceName"  id="serviceNameWater" > 
					 <input type="hidden" name="moduleId"  id="moduleIdWater" > 
					 <input type="hidden" name="applicantName"  id="applicantName" > 
				</div>
			<!-- 
			<div class="col-md-4 col-sm-12 col-xs-12"> 
				<input type="submit"  class="btn btn-success" value="Pay">
				</div> 
				-->
        </div>
       </div>
     </form:form>

	<jsp:include page="../jsFooter.jsp" />
      <jsp:include page="../../citizenFooter.jsp" />	

	<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
	<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
	<c:url var='searchWaterDet' value='/water/view/search' />
	<c:url var='jsonsearchWaterUrl' value='/water/rest/search/waterPayNoDue' />
	<c:url var='jsonBillDetailUrl' value='/water/rest/search/waterPayDue' />
	<c:url var='jsonForModuleIdAndServiceName' value='/water/rest/moduleIdAndServiceName' />
	<c:url var='sendForPay' value='/water/send/waterPayMoney' />

<script>
var jsonULBListUrl = "${jsonULBListUrl}";
var jsonServiceListUrl = "${jsonServiceListUrl}";
var searchWaterDet = "${searchWaterDet}";
var jsonsearchWaterUrl = "${jsonsearchWaterUrl}";
var sendForPay = "${sendForPay}";


</script>

<!-- Payment details modal  -->
<div class="modal fade" id="payment-details" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><spring:message code="label.collection.water.paydetails" /></h4>
        </div>
        <div class="modal-body">
          <table id="waterDueTableData" class="table dataTable table-striped table-bordered text-center">
                   <thead>					 						 	
                      <tr>
                          <th>Sr no.</th>
                          <th><spring:message code="label.collection.water.bollno" /></th>
                          <th><spring:message code="label.collection.water.billdate" /></th>
                          <th><spring:message code="label.collection.water.billamnt" /></th>
                          <th>Penalty Amount</th>
                          <th><spring:message code="label.collection.water.outamnt" /></th>
<!--                           <th>Action</th> -->
                      </tr>
                  </thead>
                  <tbody>
	                  <tr>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  </tr>
	             </tbody>
                  <tfoot>
                  <tr>
	                  <td colspan='3'><span><strong><spring:message code="label.collection.water.totalout" /></strong></span></td>
	                  <td style='text-align: right;'><strong><span id="curr_Tax_Tot"></span></strong></td>
	                  <td style='text-align: right;'><strong><span id="penalty_Tot"></span></strong></td>
	                  <td style='text-align: right;'><strong><span id="final_total"></span></strong></td>
                      <td>&nbsp;</td>
                  </tfoot>
                 
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

<!-- Payment details modal -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	   <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>

	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
	<script src="<c:url value="/js/upload.js"/>"></script>

	<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
<script>

	$(document).ready(function() 
	{
	 getULBListIDnDesc(jsonULBListUrl,"ulbIdDesc");
	 getServiceList(jsonServiceListUrl,"setServiceId");

	  $("#setServiceId").val($("#servDeschide").val());
	 
	  if($("#ulbIdDeschide").val() != "0")
	  {
	    $("#ulbIdDesc").val($("#ulbIdDeschide").val());
	  }
	 
	});//ready


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


	$(function() {
		$('#duedate').datetimepicker({
			format:"DD/MM/YYYY"
		});
	});
	
/* ------------------- func- starts -------------------- */	


function sendToPaymentForBillService() {
	
	 $('#frmSave').attr('action', sendForPay);
	 $("#frmSave").submit();
}



//Search ConNO
	 $("#searchWaterDet").click(function() {
		 $('#frmData').attr('action', searchWaterDet);
		$("#frmData").submit();
	 });

	
	
	 $("#waterConnNo").blur(function()
	  {
	  
	 if($("#waterConnNo").val() != "" )
		{
		 if($("#waterConnNo").val().length > 5)
		 {
		 var ulbId =  $("#ulbIdDesc").val().split("|");
		 var fieldData = {"connectionNo" : $("#waterConnNo").val(),"ulbId" : ulbId[0]};
		 console.log("jsonsearchWaterUrl"+jsonsearchWaterUrl)
			 
		$.ajax({
			type : "POST",
			url : jsonsearchWaterUrl,
			contentType: "application/json; charset=UTF-8",
			dataType : 'json',
			data : JSON.stringify(fieldData),
			success : function(data) 
			{
				 if(data.totalRows != 0){	
					
// 				  alert('Address  '+ data.resultData[0].ownerAddress)
					$('#ownerFirstName').val(data.resultData[0].firstownername);
					$('#ownerMiddleName').val(data.resultData[0].middleownername);
					$('#ownerLastName').val(data.resultData[0].lastownername);
					$('#ownerAddress').val( data.resultData[0].ownerAddress);
					 
					 if(data.resultData[0].connectionNo == "00000")
			   	    	{
			   	    		$("#waterConnectionId").val(data.resultData[0].connectionId);
			   	    	    console.log(" if cond "); 
			   	    	    $('.actionBar').hide();
// 			   	    	    $('#dueAndDate').hide();
// 			   	    	    $('#amtAndReceivedFrm').hide();
			   	    	    
			   	    	    PNotify.removeAll();
							new PNotify({
								title : 'No Bills To Pay',
								styling : 'bootstrap3',
								type : 'Success'
							});  
							
				   	     }  //if end

			   	 	else
			   	 	{
					    $.each(data.resultData, function (i, result) {
						
						$("#payDueAmt").val(result.current_bal);
						$("#waterConnectionId").val(result.connectionId);
						$("#emailId").val(result.emailId);
// 						$("#billDate").val(result.billDate);
						$("#billDate").val(result.bill_date);
						
					
				    });
				   
			  }  //else
				 
			}  //if
		    else {
		    	
		    	PNotify.removeAll();
				new PNotify({
					title : 'Data No Found',
					styling : 'bootstrap3',
					type : 'error'
				});
			}
					
		}  //success
			
			
			
	  });  //ajax
			 
	 } //if len>5
	    else
		{
		    PNotify.removeAll();
	    	new PNotify({
			title : 'Please Enter Valid Connection Number',
			styling : 'bootstrap3',
			type : 'error'
		   });
		}
		 
		}
	    else
		{
	    
	    PNotify.removeAll();	
    	new PNotify({
			title : 'Please Enter Connection Number',
			styling : 'bootstrap3',
			type : 'error'
		});
		}
		 
		 });
	
	
//more Details	 
 $("#showWaterAppModal").click(function() {	
	
	 debugger
	 var datavar = {"connectionNo" : $("#waterConnNo").val()};

	 $.ajax({
			type : "POST",
			url : "${jsonBillDetailUrl} ",
			contentType : "application/json",
			dataType : 'json',
			data : JSON.stringify(datavar),
			async : false,
			headers : {
				"Authorization" : "Basic " + btoa("ashok:pass")
			},
			
			success : function(data) { 
				var row = 1;
				dataSet = [];
				details = [];
				var fianlTotal = 0, penaltyTot = 0, currTaxTot = 0;
				if (parseInt(data.totalRows) > 0) {
					var newArray = [];
					var totCol = 0;
					$('#waterDueTableData tbody').empty();
					$.each(data.resultData,function(i, result)
							{
								details.push(result);
								var amount = 0, penalty = 0;
								console.log(result.tax_description.length);
								if (result.tax_description[0] == "Interest") {
									amount = result.amount[1];
									penalty = result.amount[0];
								} else {
									amount = result.amount[0];
									penalty = 0;
								}
								var dateperiod = result.fromDate
										+ " - " + result.toDate;
								var appendTR = "<tr><td><span>"
												+ row
												+ "</span></td><td><span>"
												+ result.billNumber
												+ "</span></td><td><span>"
												+ dateperiod
												+ "</span></td><td><span>"
												+ amount
												+ "</span></td><td><span>"
												+ penalty
												+ "</span></td><td><span>"
												+ result.total_bal 
												+ "</tr>";
												/* + "</span></td><td><a href='#' onClick='javascript:showTaxDetailsModal("
												+ row
												+ ");'>Tax Details</a></td> */
												
								$('#waterDueTableData tbody').append(appendTR);

									penaltyTot = penaltyTot+ penalty;
									currTaxTot = currTaxTot+ amount;
									fianlTotal = fianlTotal+ result.total_bal;
									//dataSet.push(newArray);
									row++;
							
							}); //each

					$('#final_total').html(fianlTotal);
					$('#curr_Tax_Tot').html(currTaxTot);
					$('#penalty_Tot').html(penaltyTot);

					$('#payAmount').val(fianlTotal);
					$('#wulbId').val(data.resultData[0].ulbId);
					$('#connectionId').val(data.resultData[0].connectionId);

					// setDataTableBillDetails();   

				}
				else 
				{
// 					$("#paymentDiv").hide();
					$('#waterDueTableData tbody').empty();
					var appendTR = "<tr><td colspan=7'><span>No pending due</span></td></tr>";
					$('#waterDueTableData tbody').append(appendTR);
					new PNotify({
						title : 'Data Not Found.',
						styling : 'bootstrap3',
						type : 'error'
					});
				}
				
			},
	 
	 }); //ajax

 }); //func

	
 	
 $("#payCharges").click(function() {
	 
if($('#payAmt').val() > 0){
 var datavar = {"setServiceId" : $("#setServiceId").val()};

 $.ajax({
		type : "POST",
		url : "${jsonForModuleIdAndServiceName} ",
		contentType : "application/json",
		dataType : 'json',
		data : JSON.stringify(datavar),
		async : false,
		headers : {
			"Authorization" : "Basic " + btoa("ashok:pass")
		},
		
		success : function(data) {  
			
		var row = 1;
		dataSet = [];
		details = [];
		var fianlTotal = 0, penaltyTot = 0, currTaxTot = 0;
		if (parseInt(data.totalRows) > 0) {
			var newArray = [];
			var totCol = 0;
			
			var ulbId =  $("#ulbIdDesc").val().split("|");
			var name=$('#ownerFirstName').val()+""+$('#ownerMiddleName').val()+""+$('#ownerLastName').val(); 
			$.each(data.resultData,function(i, result)
				{ 
				
				$('#serviceNameWater').val(result.serviceName);
				$('#moduleIdWater').val(result.moduleId);
				$('#applicantName').val(name);
				$('#serviceIdWater').val($('#setServiceId').val());
				$('#connectionId').val($('#waterConnectionId').val());
				$('#wulbId').val(ulbId[0]);
				$('#payAmount').val($('#payAmt').val());
// 				$('#payEmailId').val($('#payAmt').val());

					
					sendToPaymentForBillService();
				
					}); 
		
	    	}else
	    	{
	    		new PNotify({
					title : 'Error While Redirecting To Payment Gateway',
					styling : 'bootstrap3',
					type : 'error'
				});	
	    	}
		} 
	 });
	}
	
	else{
		PNotify.removeAll();
		new PNotify({
			title : 'Amount Should Not Be Zero',
			styling : 'bootstrap3',
			type : 'error'
		});	
	}	
 });
	

	 $("#resetBtn").click(function (){
		
		 $('#waterConnNo').val();
		 $('#ownerFirstName').val();
		 $('#ownerMiddleName').val();
		 $('#ownerLastName').val();
		 $('#ownerAddress').val();
		 $('#payDueAmt').val();
		 $('#billDate').val();
		 $('#payAmt').val();
		 $('#receivedfrom').val();
		 $('#waterConnectionId').val();
		 $('#taxId').val();
		 $('#taxDetId').val();
		 $('#srnId').val();
		 $('#emailId').val();
	});
	 
	</script>
  </body>
</html>
</compress:html>
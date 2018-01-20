
$(document).ready(function() 
{
	
	$("#ConnRequest").hide();
	$(".actionbar").hide();
	$(".charge-parent").hide();
	
//	var app="N",ownChange="N";
	 getULBListIDnDesc(jsonULBListUrl,"ulbIdDesc");
	 getServiceList(jsonServiceListUrl,"setServiceId");

//date
	 $(function() {
			$('#recondate').datetimepicker({
				format:"DD/MM/YYYY"
				
			});
		});

//onload serviceId	 
	 $("#setServiceId").val($("#servDeschide").val());
	   
	 if($("#ulbIdDeschide").val() != "0")
     {
  	  $("#ulbIdDesc").val($("#ulbIdDeschide").val());
	 }
 
//Search ConNO
	 $("#searchWaterDet").click(function() {
 		 $('#frmData').attr('action', searchWaterDet);
 		$("#frmData").submit();
	 });
	 
	 

	  if($("#action").val()=='V')
	  {		 
		  fetchDataForView();
		  $("#ConnRequest").show();
		  $('.hideData').hide();
		  $('#frmData textarea,select,input[type=text]').attr("disabled", "disabled");//ulbIdDesc
	  }
		
 
	 
});//ready

//Data Search
	 
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
						
				//	  alert('Address  '+ data.resultData[0].ownerAddress)
						$('#ownerFirstName').val(data.resultData[0].firstownername);
						$('#ownerMiddleName').val(data.resultData[0].middleownername);
						$('#ownerLastName').val(data.resultData[0].lastownername);
						$('#ownerAddress').val( data.resultData[0].ownerAddress);
						 
						 if(data.resultData[0].connectionNo == "00000")
				   	    	{
				   	    		$("#waterConnectionId").val(data.resultData[0].connectionId);
				   	    		
				   	    	        console.log(" if cond ");   
				   	    	        
					   	       		var datavar = {"ulbIdDesc":$("#ulbIdDesc").val() ,"setServiceId":$("#setServiceId").val()} ;
					   	       		console.log("jsonsearchWaterChargesUrl"+jsonsearchWaterChargesUrl)  
					   	       		
					   	        $.ajax({
					   	       		
					   	 			type : "POST",
					   	 			url : jsonsearchWaterChargesUrl,
					   	 			contentType: "application/json; charset=UTF-8",
					   	 			dataType : 'json',
					   	 			data : JSON.stringify(datavar),
					   	 			
					   	 			success : function(data1) {
					   	 				
					   	 			 console.log("VAL: "+data1.totalRows);
									 
						   	          var row = 1;
						   	          dataSet = [];
						   	          if(parseInt(data1.totalRows) > 0) {
						   	       	   var newArray = [];
						   	       	   var totCol = 0;
						   	       	   $.each(data1.resultData, function (i, result1) {
					   	 			
										
										$("#payDueAmt").val(0);
										$('#payAmt').val(result1.charges_amt);
										$('#taxId').val(result1.service_tax_id);            //hidden field in nodue_water jsp
										$('#taxDetId').val(result1.service_tex_det_id);      //hidden field in nodue_water jsp
										$("#emailId").val(result1.emailId);
										 $('#waterConnNo').prop('disabled', true);
										 $('#searchWaterDet').prop('disabled', true);
										 $('#waterSearch').prop('disabled', true);
										 $("#ConnRequest").show();
										 $("#paySubmit").hide();
										 $("#payCharges").show();
										 $(".charge-parent").show();
										 
					   	 		        });
						   	            
						   	          }
						   	       else
						   	       {
						   	    	$("#payDueAmt").val(0);
						   	    	$("#payAmt").val(0);
						   	    	$("#paySubmit").hide();
						   	    	$("#payCharges").hide();
						   	        $("#ConnRequest").show();
						   	        $(".actionbar").show();
						   	        $(".charge-parent").show();
						   	     
						   	        	PNotify.removeAll();
					   	                new PNotify({
					   	                    title: 'No Service Charge Applicable',
					   	                    styling: 'bootstrap3',
					   	                    type: 'success'
					   	                });
					   	           }
										 
					   	 			}
					   	 	    });  //ajax ends
					   	       		   
					   	       	  
				   	    	}  //if end

				   	 	else{
						 
					    $.each(data.resultData, function (i, result) {
						
						$("#payDueAmt").val(result.current_bal);
						$("#waterConnectionId").val(result.connectionId);
						$("#emailId").val(result.emailId);
						$("#ConnRequest").hide();
						$(".actionbar").hide();
						 $(".charge-parent").hide();
						 $("#uploadHide").hide();
						
						PNotify.removeAll();
						new PNotify({
							title : 'Please Pay Outstanding Dues To Apply for Reconnection Service.',
							styling : 'bootstrap3',
							type : 'error'
						});
						
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
	 
	 /* ------------ pay dues Starts ------------------- */
	 
	  $("#paySubmit").click(function() {
		  
//	 	  function  payWaterDue()
//	 	  {
		  	 console.log(" inside  pay water Due ");
		  	
		  	var datavar = $("#frmData").serializeObject();
		  	 console.log(" >>> datavar <<< "+datavar);
		  	var json_string = JSON.stringify(datavar);
		  	 console.log(" >>> json_string <<< "+json_string);
		  	var datavar = removeEmptyValueFromJSON(json_string);
		  	 console.log(" >>> datavar <<< "+datavar);
		  	
		  	
		  	$.ajax({
		  		type : "POST",
		  		url : sendNoDuePayProperty,
		  		contentType: "application/json; charset=UTF-8",
		  		dataType : 'json',
		  		data : datavar,
		  		async : false,
		  		success : function(data2) 
		  		{
		  			 console.log("VAL in Reconnection --->> : "+data2.serviceId);
		  			 
		    	          var row = 1;
		    	          dataSet = [];
		    	        
		    	       	   var newArray = [];
		    	       	   var totCol = 0;
		    	       	
		  			
		    	       		   var datavar2 = {"wulbId":data2.ulbId,"serviceId":data2.serviceId,"payAmount":$("#payDueAmt").val(),"mobNo":data2.applicantMobile,"connectionNo" :$("#waterConnNo").val(),"connectionId":$("#waterConnectionId").val(),"email":$('#emailId').val(),"serviceName":"Water Reconnection","moduleId":data2.moduleId };
		    	       		payDue(datavar2);
		  		 
		  		}    //success
		  	
		  	});
		  	
		  	
//	 	  	}
					 	
		 });
	  
	  function payDue(datavar2)
		{
			console.log(datavar2);
			$.ajax({
				type : "POST",
				url : waterPayMoney,//no dues
				contentType: "application/json; charset=UTF-8",
				 
				data : JSON.stringify(datavar2),
				async : false,
				 cache: false,
				success : function(data)
				{
					window.location.href = data;
				} ,
				error : function(request, status, error) {
					 //console.log("error "+request);
					// console.log("error "+error);
				} 
			});
			       		
		}
	 
	  /* ------------ pay dues ends ------------------- */	 
	 
	  /* --------------------- Pay charges starts----------------------- */
	  
	  $("#payCharges").click(function() {

	 	 
        	 console.log(" inside  pay water Charge ");
        	 var datavar = $("#frmData").serializeObject();
          	 console.log(" >>> datavar <<< "+datavar);
          	var json_string = JSON.stringify(datavar);
          	 console.log(" >>> json_string <<< "+json_string);
          	var datavar = removeEmptyValueFromJSON(json_string);
          	 console.log(" >>> datavar <<< "+datavar);

        	 $.ajax({
        			type : "POST",
        			url : sendToPayCharge,
        			contentType: "application/json; charset=UTF-8",
        			dataType : 'json',
        			data : datavar,
        			async : false,
        			success : function(data2) 
        			{
        				 console.log("VAL: "+data2.serviceId+"serviceTaxDetId---"+$('#taxDetId').val()+"taxid---"+$('#taxId').val());
        				 
        	  	          var row = 1;
        	  	          dataSet = [];
        	  	        
        	  	       	   var newArray = [];
        	  	       	   var totCol = 0;
        	  	       	   
        				
//        	  	       		   var datavar2 = {"wulbId":data2.ulbId,"serviceId":data2.serviceId,"payAmount":data2.payAmt,"mobNo":data2.applicantMobile,"connectionId":$("#waterConnectionId").val(),"tax_det_id":$('#taxDetId').val(),"tax_id":$('#taxId').val(),"srn_id":$('#srnId').val()};
        	  	       		   var datavar2 = {"wulbId":data2.ulbId,"serviceId":data2.serviceId,"payAmount":$('#payAmt').val(),"mobNo":data2.applicantMobile,"connectionId":$("#waterConnectionId").val(),"tax_det_id":$('#taxDetId').val(),"tax_id":$('#taxId').val(),"srn_id":$('#srnId').val()};
        	  	       		payChargesWater(datavar2);
        			 
        			}//success
        		
        		}); //pay ajax
        	 
        	 
          
	   });// paycharge func
	  
	  function payChargesWater(datavar2){
	 		console.log(datavar2);
	 		$.ajax({
	 			type : "POST",
	 			url : jsonpaymentgateway,
	 			contentType: "application/json; charset=UTF-8",
	 			 
	 			data : JSON.stringify(datavar2),
	 			async : false,
	 			 cache: false,
	 			success : function(data)
	 			{
	 				
	 				 $("#returnURL").val(data);
//	  				window.location.href = data;
	 				 $("#checkListForm").submit();
	 				
	 			} ,
	 			error : function(request, status, error) {
	 				 //console.log("error "+request);
	 				// console.log("error "+error);
	 			} 
	 		});
	 		       		
	 	}
	  
	  
	  /* ------------ pay charges ends ------------------- */
	 
	 
	  $("#applicantSave").click(function() {
		  

		  	 console.log(" inside  pay water Due ");
		  	
		  	var datavar = $("#frmData").serializeObject();
		  	 console.log(" >>> datavar <<< "+datavar);
		  	var json_string = JSON.stringify(datavar);
		  	 console.log(" >>> json_string <<< "+json_string);
		  	var datavar = removeEmptyValueFromJSON(json_string);
		  	 console.log(" >>> datavar <<< "+datavar);
		  	
		  	
		  	$.ajax({
		  		type : "POST",
//		  		url : saveApplicantDataForNoCharge,
		  		url : sendToPayCharge,
		  		contentType: "application/json; charset=UTF-8",
		  		dataType : 'json',
		  		data : datavar,
		  		async : false,
		  		success : function(data2) 
		  		{ 
		  
		  			
		  			 if(data2.serviceResp > 0)
			            {
			  			 $("#checkListForm").submit();
			            }

		  /*	console.log("VAL: "+data2.serviceId+"serviceTaxDetId---"+$('#taxDetId').val()+"taxid---"+$('#taxId').val());
	        var row = 1;
	        dataSet = [];
	   	    var newArray = [];
	   	    var totCol = 0;
	   	    
	     	var ulbId = $("#ulbIdDesc").val().split("|");
			console.log("ulbId "+ulbId[0]+ " waterConnectionId"+$("#waterConnectionId").val()+"srn_id====="+data2.srn_id);	
			$('#srnId').val(data2.srn_id)
			
		    var tnpData = {"waterConnectionId":$("#waterConnectionId").val(),"reConnDate":$("#reConnDate").val(),"remark":$("#remark").val(),"ulbId":ulbId[0],"srn_id": data2.srn_id };
		    console.log("tnpData---"+tnpData);
		    $.ajax({
		  		type : "POST",
		  		url : saveReconnectionServiceData,
		  		contentType: "application/json; charset=UTF-8",
		  		dataType : 'json',
		  		data : JSON.stringify(tnpData),
		  		async : false,
		  		success : function(resp) 
		  		{ 
		    
		  			if(resp > 0)
		  			{
//	 	              alert("success")
		              ackView();
		              
		  			}
		         }	    	
		  			
		  		}); */

		  } //success
		  		
		}); //ajax
	  }); //if
	 



	  function ackView()
		 {
			 $('#ackFrm').attr('action',ackUrl); //"http://192.168.7.196:8080/mahaulb/water/view/acknowledgment");
			 $('#srnIdAck').val($('#srnId').val());
			 $("#ackFrm").submit();
		 }






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


function fetchDataForView()
{
	var fieldData = {"srnId": $("#srnIdView").val(), "ulbId" : $("#ulbIdDesc").val().split("|")[0]};
	
	$.ajax({
        type: "POST",
        url: viewWaterReconnectionUrl,
        contentType : "application/json",
        dataType : 'json',
        data: JSON.stringify(fieldData),
        async: false,
        headers: 
        {
            //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
            //"Authorization": "Basic " + btoa("ashok:pass") 
            
            //"USER":btoa(getUserId(storeInvUser)),
           // "BUSID":btoa( getBussId(storeselectInvBusinessId))
        },
        success: function (data)
        {
        	
        	$('#ownerFirstName').val(data.ownerFirstName);
			$('#ownerMiddleName').val(data.ownerMiddleName);
			$('#ownerLastName').val(data.ownerLastName);
			$('#ownerAddress').val( data.ownerAddress);
			$('#reConnDate').val( data.reConnDate);
			$('#remark').val( undefinedChcek(data.remark));
        	
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
	                  
	
	//-----ajax end---------//
}

function undefinedChcek(data)
{
		if(data == undefined || data == "undefined")
			return " "
		else
			return data;
}




$(document).ready(function(){
	
	var ulbId = 0;
	
		getULBListIDnDesc(jsonULBListUrl,"ulbIdDesc");
		getServiceList(jsonServiceListUrl,"serviceId"); 
		$('#pipeSizeView').hide();
		var servDeschide = $('#servDeschide').val();
 		$('#serviceId option[value="'+servDeschide+'"]').attr('selected',true);
 		 $("#setServiceId").val(servDeschide);
 		 
 		 $('#consumNum').val($('#connectionNo').val())
 		
 		$('.chargeColl').hide();
 		
 		if(parseInt(servDeschide) == 31)
 		{
 			$('#showpipesize').show();
 			
 		}
 		if(parseInt(servDeschide) == 34)
		{
 			$('#showusage').show(); 	
 		}
 		
 		
 		function getSubUsageHier(id,nextId,ulbId) {

 			var parentId = $('#'+id+' option:selected').val();
 			
 			 $.ajax({
 				type : "GET",
 				url : getUsageSubTypeDrop,
 				data : "parentId=" + parentId
 						+"&ulbId=" + ulbId,
 				dataType : "json",
 				async	:	false,
 				success : function(data) 
 				{
 					//alert("getSubUsageHier data---"+data);
 					
 					$('#'+nextId).empty();
 					$('#'+nextId).append(
 							$("<option></option>").attr("value", '0').text(
 									'Please select'));
 					$.each(data.resultData, function(i, result) {

 						$('#'+nextId).append(
 								$("<option></option>").attr("value",
 										result.waterMasId).text(
 										result.subUsage ));

 					});
 				}
 			}); 
 		}
 		
 		
 		
 		function getPipeSize(ulbId)
 		{
 			$.ajax({
 				type : "GET",
 				url : getPipeSizeURL,
 				data : "ulbId=" + ulbId,
 				dataType : 'json',
 				success : function(data) 
 				{
 					//alert("getSourceofWater data---"+data);
 					
 					$('#pipeSize').empty();
 					$('#pipeSize').append(
 							$("<option></option>").attr("value", '0').text(
 									'Select Connection Size'));
 					$.each(data, function(i, result) {

 						$('#pipeSize').append(
 								$("<option></option>").attr("value",
 										result.pipeSizeId).text(
 										result.pipeSize ));
 					});
 				}
 			});
 		}
 		
 		$('#ulbIdDesc').change(function()
 				{
 			
 			var ulbIdDesc = $("#ulbIdDesc option:selected").val() ;
 			var servDeschide = $('#servDeschide').val();
 			$('#ulbIdDeschide').val(ulbIdDesc);
 			
 			var arrayULB = ulbIdDesc.split("|");
 			//alert("arrayULB[0]---"+arrayULB[0]);
 			ulbId = arrayULB[0];
 			getPipeSize(arrayULB[0]);
 			
 			$('#consumNum').blur(function(){
 	 			var number =$('#consumNum').val();
 	 			
 	 					$("#ulbIdDescApended").remove();
 	 					$.ajax({
 	 	 	  				type : "POST",
 	 	 	  				url : getNumberData,
 	 	 	  				data : "number=" + number
 	 	 	  						+"&ulbId=" + ulbId,
 	 	 	  				dataType : "json",
 	 	 	  				success : function(data) 
 	 	 	  				{
 	 	 	  					//alert("getNumberData data---"+data);
 	 	 	  					PNotify.removeAll();
 	 	 	  					new PNotify({
 	 	 				               title: 'Data Found for Consumer '+number,
 	 	 				               styling: 'bootstrap3',
 	 	 				               type: 'success'
 	 	 				           });
 	 	 	  					
 	 	 	  					$('#consumerId').val(data.connectionId);
 	 	 	  					$('#conFullName').val(data.firstNameOwner+" "+data.middleNameOwner+" "+data.lastNameOwner);
 	 	 	  					$('#conUsage').val(data.usageDescEn+" ("+data.usageDescRg+")");
 	 	 	  					$('#conSubUsage').val(data.subUsageDesc);
 	 	 	  					$('#conPipeSize').val(data.pipeSize);
 	 	 	  					
 	 	 	  					$('#conUsageId').val(data.usageId);
 	 	 	  					$('#conSubUsageId').val(data.subUsageId);
 	 	 	  					$('#conPipeSizeId').val(data.pipeSizeId);
 	 	 	  					
 	 	 	  				},
 	 	 	  				error : function() 
 	 	 					{
 	 	 	  					PNotify.removeAll();
 	 	 	  					new PNotify({
 	 	 				               title: 'No Data Found for Consumer '+number,
 	 	 				               styling: 'bootstrap3',
 	 	 				               type: 'error'
 	 	 				           });
 	 	 	  					$('#consumerId').val(0);
 	 	 					}
 	 	 	  			}); 
 	 		});
 			
 			
 			$('#lookupDetHierIdUsageId1').change(function(){
 				getSubUsageHier('lookupDetHierIdUsageId1','subUsageIdd',arrayULB[0]);
 				});
 			
 			var datavar = {"ulbIdDesc":ulbIdDesc ,"setServiceId":servDeschide} ;
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
 			         
 			         if(parseInt(data1.totalRows) > 0) {
 			      	   var newArray = [];
 			      	   var totCol = 0;
 			      	   $.each(data1.resultData, function (i, result1) 
 			      		{
 							$('#payAmt').val(result1.charges_amt);
 							$('#taxId').val(result1.service_tax_id);            //hidden field in nodue_water jsp
 							$('#taxDetId').val(result1.service_tex_det_id);      //hidden field in nodue_water jsp
 							$('.chargeColl').show();
 							//$('#charges-details').slideUp('slow');
 				        });
 			           
 			         }
 				      else
 				      {
 						   	$("#payAmt").val(0);
 						   	$(".chargeColl").hide();
 						   	
 				           PNotify.removeAll();new PNotify({
 				               title: 'No Water Service Charge',
 				               styling: 'bootstrap3',
 				               type: 'error'
 				           });
 				      }
 					 
 					},
 					
 					error : function() 
 					{
 						// alert('Consumer Controllered missed (Step 1 Add)');
 					}
 			    });/* Get Charge Ajax ends */
 		});/* Ulb Change even ends */
 		
 		
 		
 		$("#searchWaterDet").click(function() {
 	 		 $('#frmData').attr('action', searchWaterDet);
 	 		$("#frmData").submit();
 		 });
 		
 		
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
 		
 		function payCharge (datavar2)
 		{
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
 		
 		$('#saveForm').click(function()
 		{
 			if(submitApplicantValidations() && validateCheckList())
 			{
 			var datavar = $("#frmData").serializeObject();
 			 console.log(" >>> datavar <<< "+datavar);
 			var json_string = JSON.stringify(datavar);
 			 console.log(" >>> json_string <<< "+json_string);
 			var datavar = removeEmptyValueFromJSON(json_string);
 			 console.log(" >>> datavar <<< "+datavar);
 			 
 			$.ajax({
 				type : "POST",
 				url : saveAppliData,
 				contentType: "application/json; charset=UTF-8",
 				dataType : 'json',
 				data : datavar,
 				async : false,
 				success : function(data2) 
 				{
 					 console.log("Saved SRN_ID: "+data2.srn_id);
 					 
 					 $('#srn_id').val(data2.srn_id);
 					//$('#srnIdAck').val(data2.srn_id);
 					
 					
 					var connectionId= $('#consumerId').val();
 					
 					if(parseInt(connectionId) == 0)
 						{
	 	  					$("#consumNum").append('<div id="consumNumApended" style="color:red;">Please Provide Consumer Number</div>').show(); 
	 						return false;
 						}
 					else
 						{
 						
 						$("#consumNumApended").remove();
 						
 	 					var usageId= $('#lookupDetHierIdUsageId1 option:selected').val();
 	 					var	subUsageId= $('#subUsageIdd option:selected').val();
 	 					var	pipeSizeId= $('#pipeSize option:selected').val() ;
 	 					var conUsageId= $('#conUsageId').val();
 	 					var conSubUsageId= $('#conSubUsageId').val();
 	 					var conPipeSizeId= $('#conPipeSizeId').val();
 	 					var srnID = $('#srn_id').val();
 	 					var servId = $("#setServiceId").val();
 	 					
 	 					$.ajax({
 	 		 				type : "POST",
 	 		 				url : updateConInfoAppli,
 	 		 				data : "connectionId=" + connectionId
 			 		 				+"&usageId=" + usageId
 			 		 				+"&subUsageId=" + subUsageId
 			 		 				+"&pipeSizeId=" + pipeSizeId
 			 		 				+"&conUsageId=" + conUsageId
 			 		 				+"&conSubUsageId=" + conSubUsageId
 			 		 				+"&conPipeSizeId=" + conPipeSizeId
 			 		 				+"&srnID=" + srnID
 			 		 				+"&servId=" + servId,
 	 		 				dataType : 'json',
 	 		 				async : false,
 	 		 				success : function(data) 
 	 		 				{
 	 		 					//alert("Number of Rows Updated = "+data);
 	 		 					
 	 		 					new PNotify({
 	  				               title: 'Application Accepted Successfully !! For Consumer Number '+$('#consumNum').val(),
 	  				               styling: 'bootstrap3',
 	  				               type: 'success'
 	  				           });
 	 		 					var srn_id = $('#srn_id').val();
 	 		 		  	       	var amt = $('#payAmt').val();
 	 		 		  	       	
 	 		 		  	       	
 	 		 		  	       	if(parseInt(amt) == 0)
 	 		 		  	       		{
 	 			 		  	       		//$('#ackFrm').attr('action', ackUrl);
 	 			 		  	       		$("#checkListForm").submit(); 
 	 		 		  	       		}
 	 		 		  	       	else
 	 		 		  	       		{
 	 				 		  	       	var taxId = $('#taxId').val();
 	 				 					var taxDetId = $('#taxDetId').val();
 	 				 					
 	 				 		  	       	var datavar2 = {"wulbId":data2.ulbId,"serviceId":data2.serviceId,"payAmount":amt,"mobNo":"9876542310","connectionId":connectionId,"tax_det_id":taxDetId,"tax_id":taxId,"srn_id":srn_id};
 	 				 		  	       		  
 	 				 		  	       	payCharge(datavar2);
 	 		 		  	       		}
 	 		 					
 	 		 				}
 	 		 			});
 						}
 					
 					
 				}    //Applicant Detail Save success
 			
 			});
 			 
 			}//end if condition for validation
 		});
 		
 		//-------------------------------------------------------------------------change by ketan---------------------------------------
 		
 		function undefinedChcek(data)
 		{
 				if(data == undefined || data == "undefined")
 					return " "
 				else
 					return data;
 		}
 		
 		//------------------view purpose------------------@ketan
 		function fetchDataForView()
 		{
 			var fieldData = {"srnId": $("#srnIdView").val(), "ulbId" : $("#ulbIdDeschide").val().split("|")[0],"statusResp" : $("#serviceCode").val()};	
 			$.ajax({
 		        type: "POST",
 		        url: viewChangeUsageAndSizeUrl,
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
 		        	
 		        	if($("#serviceCode").val() == "WMU")
 		     		{
 		        		$("#lookupDetHierIdUsageId1").val(data.usageId);
 		        		
 		        		getSubUsageHier('lookupDetHierIdUsageId1','subUsageIdd',$("#ulbIdDeschide").val().split("|")[0]);
 			        	
 			        	$("#subUsageIdd").val(data.subUsageId);
 		     		}
 		        	
 		        	if($("#serviceCode").val() == "WMS")
 		        	{
 		        		$('#pipeSize').hide();
 		        		$('#pipeSizeView').show(); 		        		
 		        		$("#pipeSizeView").val(data.pipeSize);
 		        	}
 		        	
 		        	$("#conFullName").val(data.firstName+" "+data.middleName+" "+data.lastName);
 		        	$("#consumNum").val(data.connectionNo);
 		        	$("#conUsage").val(data.usageDescEnOld);
 		        	$("#conSubUsage").val(data.subUsageDescOld);
 		        	$("#conPipeSize").val(data.pipeSizeOld);
 		        	
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

 	

 		
 		//------------for view start--------
 		
 		 if($("#action").val()=='V')
 		 {
 			if($("#serviceCode").val() == "WMS")
 	 		{
 	 			$('#showpipesize').show();
 	 		}
 	 		if($("#serviceCode").val() == "WMU")
 	 		{
 	 			$('#showusage').show(); 	
 	 		}
 	 		
 			 fetchDataForView()
 			 $('#frmData textarea,select,input[type=text]').attr("disabled", "disabled");	//ulbIdDesc
 			 $('.hideData').hide();//ulbIdDesc
 			 $('.actionBar ').hide();//ulbIdDesc
 			 $('#ulbIdDesc').val($('#ulbIdDeschide').val());
 			
 		 }
 		//------------for view end--------
 			
 		
});/*Document Ready Function Ends*/
/*
 * 
 * @Author Ketan Gaonkar
 * @Date : 27/11/2017 * 
 * @Desc: Used for change of ownership
 */

$(document).ready(function() 
{
	 var app="N",ownChange="N",count = 1;
	 getULBListIDnDesc(jsonULBListUrl,"ulbIdDesc");
	 getServiceList(jsonServiceListUrl,"setServiceId");
	 
	
	 $(".payHide").hide();
	 $("#payCharges").hide(); 
	 if($("#ulbIdDeschide").val() != "0")
	 {
   	  		$("#ulbIdDesc").val($("#ulbIdDeschide").val());
	 }
	 if($("#connectionNoSes").val() != "")
	 {
		 $('#connectionNo').val($('#connectionNoSes').val());
		 fetchDataOnConn();
	 }
	 
	 $('#setServiceId').val($('#servDeschide').val());
	
	 $('#primeowner').show();
	 $('#existowner').hide();
	 $(".saveAction").hide();
	 
	
	 
	  $('#allChk').click(function()
	   {
		  var checked = $(this).prop('checked');
		   
			  $(".editSaveChk").each(function()
       		  {
				$(this).prop('checked', checked);
		  });
	  });
	 
	 
	 //----------------  view action ---------//
	  
	  if($("#action").val()=='V')
	  {
		  $('#primeowner').show();
		  $('#existowner').show();
		  $('#addAdditional').hide();
		  $('#editAdditional').hide();
		  $('#deleteAdditional').hide();
		  $('.hideData').hide();
		  fetchDataForView();
		  
		  $('#frmData textarea,select,input[type=text]').attr("disabled", "disabled");//ulbIdDesc
	  }
			      
	  
	  //---------------- view action end ---------//
	  
	  
	  //---------------- start save application ---------//
	 
	 $("input[name='optradio']").change(function()
	 {	  		 	
            if($(this).attr('id') == "showexist")
    	  	{
            	//$("#connectionNo").val('');
            	//$("#connectionId").val('');
            	$("#changeofexistAction tbody").empty();
            	$("#changeofexist tbody").empty();
            	$("#changeofexistAction tbody").append('<tr><input type="hidden" name="ownerType" value="A"><input type="hidden" name="actionFlag" value="A"><td><input type="hidden" name="aoId" value="0"> <input type="text" class="form-control" name="firstName" > </td> <td> <input type="text" class="form-control" name="middleName" > </td> <td> <input type="text" class="form-control" name="lastName" > </td> <td> <input type="text" class="form-control" name="organizationName" > </td></tr>');
            	$("#changeofexist tbody").append('<tr> <td colspan="4"><center> Enter Connection No </center></td> </tr>');
            	$("#editAdditional").hide();
        		$("#deleteAdditional").hide();
        		
        		if($("#connectionNo").val() != "")
        		fetchDataOnConn();
    	  	}
            else if($(this).attr('id') == "showprimeowner")
            {
            	//$("#connectionId").val('');
            	//$("#connectionNo").val('');
    	    	$("#firstNameOld").val('');
    	    	$("#lastNameOld").val('');
    	    	$("#middleNameOld").val('');
    	    	$("#organisationNameOld").val('');
    	    	$("#firstNameOwner").val('');
    	    	$("#lastNameOwner").val('');
    	    	$("#middleNameOwner").val('');
    	    	$("#organisationNameOwner").val('');
    	    	
    	    	if($("#connectionNo").val() != "")
    	    	fetchDataOnConn();
            }
            else if($(this).attr('id') == "showboth")
            {
            	$("#connectionId").val('');
            	//$("#connectionNo").val('');
            	$("#firstNameOld").val('');
            	$("#lastNameOld").val('');
            	$("#middleNameOld").val('');
            	$("#organisationNameOld").val('');
            	$("#firstNameOwner").val('');
            	$("#lastNameOwner").val('');
            	$("#middleNameOwner").val('');
            	$("#organisationNameOwner").val('');
            	
            	$("#changeofexistAction tbody").empty();
            	$("#changeofexist tbody").empty();
            	$("#changeofexistAction tbody").append('<tr><input type="hidden" name="ownerType" value="A"><input type="hidden" name="actionFlag" value="A"><td><input type="hidden" name="aoId" value="0"> <input type="text" class="form-control" name="firstName" > </td> <td> <input type="text" class="form-control" name="middleName" > </td> <td> <input type="text" class="form-control" name="lastName" > </td> <td> <input type="text" class="form-control" name="organizationName" > </td></tr>');
            	$("#changeofexist tbody").append('<tr> <td colspan="4"> <center>Enter Connection No </center></td> </tr>');
            	$("#editAdditional").hide();
        		$("#deleteAdditional").hide();
        		
        		if($("#connectionNo").val() != "")
        		fetchDataOnConn();
            }
	 });
	 function saveApplication()
	 {
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
						 $("#srIdPrim").val(data.srn_id);
						 $("#srnIdAck").val(data.srn_id);
						 app = "S";					
			  	       		   
					}
				
				});
		 }
		 
		 
		 //-----------save applicant end here----------------------
	
	 //--------search charges start---------
	 function searchCharges()
	 {
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
	 
	 
	 
	 
	 
	 //-------------start search function---------
	 
	 function startSearch()
	 {
			 var type = $('input[name=optradio]:checked').val();		
			 var ulbId =  $("#ulbIdDesc").val().split("|");
			 var fieldData = {"connectionNo" : $("#connectionNo").val(),"ulbId" : ulbId[0]};
			if(type == "PO")
			{
			//----- ajax start ---------//
			$("#connectionId").val('');
	    	$("#firstNameOld").val('');
	    	$("#lastNameOld").val('');
	    	$("#middleNameOld").val('');
	    	$("#organisationNameOld").val('');
	    	
			$.ajax({
	            type: "POST",
	            url: jsonPrimaryOwnerDetailsUrl,
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
	            	if(data.statusResp == "already")
	            	{
	            		PNotify.removeAll();
	            		//$("#connectionNo").val('');
	            		new PNotify({
	                        title: 'You have already apply for this service',
	                        styling: 'bootstrap3',
	                        type: 'error'
	                    });
	            	}
	            	else if(data.statusResp == "success")
	            	{
		            	$("#connectionId").val(data.connectionId);
		            	$("#firstNameOld").val(data.firstName);
		            	$("#lastNameOld").val(data.lastName);
		            	$("#middleNameOld").val(data.middleName);
		            	$("#organisationNameOld").val(data.organisationName);
	            	}
	            	else
	            	{
	            		PNotify.removeAll();
	            		$("#connectionNo").val('');
	            		new PNotify({
	                        title: 'Data not found',
	                        styling: 'bootstrap3',
	                        type: 'error'
	                    });
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
			
			//-----ajax end---------//
			}//end if
			else if(type == "AO")
			{
				//-----ajax start---------//
				
				$.ajax({
		            type: "POST",
		            url: jsonAdditionalOwnerDetailsUrl,
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
		            	$("#changeofexist tbody").html('');
		            	if(data.resultData[0].statusResp == "already")
		            	{
		            		PNotify.removeAll();
		            		//$("#connectionNo").val('');
		            		new PNotify({
		                        title: 'You have already apply for this service',
		                        styling: 'bootstrap3',
		                        type: 'error'
		                    });
		            	}
		            	else if(data.resultData[0].statusResp == "success" && parseInt(data.resultData[0].aoId) > 0)
		            	{
		            		$("#addConnectionId").val(data.resultData[0].connectionId);
		            		$("#addUlbId").val(data.resultData[0].ulbId);
		            		$.each(data.resultData,function(i,result)
		            		{
		            			$("#changeofexist tbody").append('<tr> <td> <input type="checkbox" value="'+result.aoId+'" class="editSaveChk"> </td> <td> <input type="text" class="form-control" id="firstName'+result.aoId+'" value="'+result.firstName+'" readonly="readonly"> </td> <td> <input type="text" class="form-control" id="middleName'+result.aoId+'" value="'+result.middleName+'" readonly="readonly"> </td> <td> <input type="text" class="form-control" id="lastName'+result.aoId+'" value="'+result.lastName+'" readonly="readonly"> </td> <td> <input type="text" class="form-control" id="organizationName'+result.aoId+'" value="'+result.organizationName+'" readonly="readonly"> </td> </tr>');
		            		})
		            		$("#editAdditional").show();
		            		$("#deleteAdditional").show();
		            	}
		            	else if(data.resultData[0].statusResp == "success" && parseInt(data.resultData[0].aoId) == 0)
		            	{
		            		$("#addConnectionId").val(data.resultData[0].connectionId);
		            		$("#changeofexist tbody").append('<tr> <td colspan="4"><center> No additional owner found </center></td> </tr>');
		            		$("#editAdditional").hide();
		            		$("#deleteAdditional").hide();
		            		PNotify.removeAll();
		            		//$("#connectionNo").val('');
		            		new PNotify({
		                        title: 'Data not found',
		                        styling: 'bootstrap3',
		                        type: 'error'
		                    });
		            	}
		            	else
		            	{
		            		$("#changeofexist tbody").append('<tr> <td colspan="4"><center> No additional owner found </center></td> </tr>');
		            		$("#editAdditional").hide();
		            		$("#deleteAdditional").hide();
		            		PNotify.removeAll();
		            		//$("#connectionNo").val('');
		            		new PNotify({
		                        title: 'Data not found',
		                        styling: 'bootstrap3',
		                        type: 'error'
		                    });
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
				
				//-----ajax end---------//
				}//end else if
			else if(type == "PAO")
			{
			//-----ajax start---------//
			$("#connectionId").val('');
	    	$("#firstNameOld").val('');
	    	$("#lastNameOld").val('');
	    	$("#middleNameOld").val('');
	    	$("#organisationNameOld").val('');
	    	$("#changeofexist tbody").html('');
			$.ajax({
	            type: "POST",
	            url: jsonPrimaryAdditionalOwnerDetailsUrl,
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
	            		var isOwner = "N";
	            		if(data[0].statusResp == "already")
		            	{
		            		PNotify.removeAll();
		            		//$("#connectionNo").val('');
		            		new PNotify({
		                        title: 'You have already apply for this service',
		                        styling: 'bootstrap3',
		                        type: 'error'
		                    });
		            		$("#changeofexist tbody").append('<tr> <td colspan="4"><center> You have already apply for this service</center></td> </tr>');
		            	}
	            		else
	            		{
		            		$("#connectionId").val(data.connectionId);
			            	$("#firstNameOld").val(data.firstName);
			            	$("#lastNameOld").val(data.lastName);
			            	$("#middleNameOld").val(data.middleName);
			            	$("#organisationNameOld").val(data.organisationName);
			            	//$("#").val(data);
			            	if(parseInt(data.addOwn.aoId) > 0)
			            	{
				            	$.each(data.addOwn.aoId,function(i,result)
				            	{
				            		isOwner = "Y";
				            		$("#changeofexist tbody").append('<tr> <td> <input type="checkbox" value="'+result+'" class="editSaveChk"> </td> <td> <input type="text" class="form-control" id="firstName'+result+'" value="'+data.addOwn.firstName[i]+'" readonly="readonly"> </td> <td> <input type="text" class="form-control" id="middleName'+result+'" value="'+data.addOwn.middleName[i]+'" readonly="readonly"> </td> <td> <input type="text" class="form-control" id="lastName'+result+'" value="'+data.addOwn.lastName[i]+'" readonly="readonly"> </td><td> <input type="text" class="form-control" id="organizationName'+result+'"  readonly="readonly"> </td></tr>');
				            		$("#editAdditional").show();
				            		$("#deleteAdditional").show();
				            		
				            	});
			            	}
			            	if(isOwner == "N")
			            	{
			            		$("#changeofexist tbody").append('<tr> <td colspan="4"><center> No additional owner found </center></td> </tr>');
			            		$("#editAdditional").hide();
			            		$("#deleteAdditional").hide();
			            	}
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
			                 });//-----ajax end---------//
			
			
			}//end last else if 
			
			
		 
	 }
	 
	 
	
	 //-------------end search function--------- 
	 
	 
	 
	function fetchDataOnConn()
	{
		if($("#ulbIdDesc").val() != "")
		{
		 if($("#connectionNo").val().length > 5)
		 {
			 var ulbId =  $("#ulbIdDesc").val().split("|");
			 var fieldData = {"connectionNo" : $("#connectionNo").val(),"ulbId" : ulbId[0]};
			 console.log("jsonsearchWaterUrl"+jsonsearchWaterUrl)
		 
			$.ajax({
			type : "POST",
			url : jsonsearchWaterUrl,
			contentType: "application/json; charset=UTF-8",
			dataType : 'json',
			data : JSON.stringify(fieldData),
			success : function(data) 
			{
				
				if(data.totalRows != 0)
				{
				
	   	          $("#waterDiv").show();	
			      console.log("VAL: "+data.totalRows);				 
	   	          var row = 1;
	   	          var name=null;
	   	          var OldPropNO= null;
	   	          dataSet = [];
	   	         
	   	          
	   	         $("#connectionId").val(data.resultData[0].connectionId);
	   	         name=(data.resultData[0].firstownername)+' '+(data.resultData[0].middleownername)+' '+(data.resultData[0].lastownername);
	   	         OldPropNO = (data.resultData[0].connectionNoOld)
	   	          if(data.resultData[0].current_bal > 0)
	   	          {
	   	        	   $(".payHide").show();
	   	        	  	$("#payAmt").val(data.resultData[0].current_bal);
	   	        	  	
	   	        	  	new PNotify({
                         title: 'Please pay your dues first then apply for service',
                         styling: 'bootstrap3',
                         type: 'error'
                     });
	   	        	 $("#payCharges").hide();       	  	
	   	        	  	startSearch();
	   	          }
	   	          else
	   	          {
	   	        	  	$(".payHide").hide();	
	   	        	  	$("#payCharges").show(); 
	   	        		startSearch();
	   	        		searchCharges();
	   	          }
	   	        	  
				}
				
				else
				{
					
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
					
					//-----ajax end---------//
		 
	 }
		 else
			 {
				 PNotify.removeAll();
				 new PNotify({
	                 title: 'Enter valid connection No',
	                 styling: 'bootstrap3',
	                 type: 'error'
	             });
				 $("#connectionNo").val('');
			 }
		
		}
		else
		{
			 PNotify.removeAll();
			 new PNotify({
                 title: 'Select ULB id first',
                 styling: 'bootstrap3',
                 type: 'error'
             });
		}
	
	 
	}
	 
	 
	 $("#connectionNo").blur(function()
	 {
		 fetchDataOnConn();
	 });
	 
	 //--------------editAdditional start----------
	 
	 var clean = "Y";
	 $("#editAdditional").click(function()
	 {
		 // $(".editSaveChk").each(function(){
		 if(clean == "Y")
		 {
			 $("#changeofexistAction tbody").empty();
		 }
		 clean = "N";
		 
			 $('.editSaveChk:checkbox:checked').each(function()
			 {	 
				 var id = $(this).val();
				 $("#changeofexistAction tbody").append('<tr id="tr'+count+'"><td><input type="hidden" name="ownerType" value="A"><input type="hidden" name="actionFlag" value="E"><input type="hidden" name="aoId" value="'+id+'"> <input type="text" class="form-control" name="firstName" value="'+$("#firstName"+id).val()+'" > </td> <td> <input type="text" class="form-control" name="middleName" value="'+$("#middleName"+id).val()+'"> </td> <td> <input type="text" class="form-control" name="lastName" value="'+$("#lastName"+id).val()+'"> </td><td> <input type="text" class="form-control" name="organizationName" value="'+$("#organizationName"+id).val()+'"> </td> <td><span><a><i id="'+count+'" class="fa fa-minus btnDelete" onclick="javascript:deleteBtn('+count+')" aria-hidden="true"></i></a></span></td></tr>');
				 count++;
			 });
	 });
	 
	  //--------------editAdditional end ----------
	 //--------------deleteAdditional start----------
	 
	 var clean = "Y";
	 $("#deleteAdditional").click(function()
			 {
		 // $(".editSaveChk").each(function(){
		 if(clean == "Y")
		 {
			 $("#changeofexistAction tbody").empty();
		 }
		 clean = "N";
		 
		 $('.editSaveChk:checkbox:checked').each(function()
		 {	 
			 var id = $(this).val();
			 $("#changeofexistAction tbody").append('<tr id="tr'+count+'"><td><input type="hidden" name="ownerType" value="A"><input type="hidden" name="actionFlag" value="D"><input type="hidden" name="aoId" value="'+id+'"> <input type="text" class="form-control" name="firstName" value="'+$("#firstName"+id).val()+'" readonly="readonly"> </td> <td> <input type="text" class="form-control" name="middleName" value="'+$("#middleName"+id).val()+'" readonly="readonly"> </td> <td> <input type="text" class="form-control" name="lastName" value="'+$("#lastName"+id).val()+'" readonly="readonly"> </td><td> <input type="text" class="form-control" name="organizationName" value="'+$("#organizationName"+id).val()+'" readonly="readonly"> </td><td><span><a><i id="'+count+'" class="fa fa-minus btnDelete" onclick="javascript:deleteBtn('+count+')" aria-hidden="true"></i></a></span></td></tr>');
			 count++;
		 });
			 });
	 
	 //--------------deleteAdditional end ----------
	 
	
//--------------addAdditional start----------
	 
	
	 $("#addAdditional").click(function()
	 {
		 // $(".editSaveChk").each(function(){
		 if(clean == "Y")
		 {
			 $("#changeofexistAction tbody").empty();
		 }
		 clean = "N";	 
			 
		$("#changeofexistAction tbody").append('<tr id="tr'+count+'"><input type="hidden" name="ownerType" value="A"><input type="hidden" name="actionFlag" value="A"><td><input type="hidden" name="aoId" value="0"> <input type="text" class="form-control" name="firstName" > </td> <td> <input type="text" class="form-control" name="middleName" > </td> <td> <input type="text" class="form-control" name="lastName" > </td> <td> <input type="text" class="form-control" name="organizationName" > </td> <td><span><a><i id="'+count+'" class="fa fa-minus btnDelete" onclick="javascript:deleteBtn('+count+')" aria-hidden="true"></i></a></span></td></tr>');
		count++;
		 
	 });
	 
	 //--------------editAdditional end ----------
	 
	 
	 //--------save details---------	 
	 function saveOwner()
	 {	
		 ownChange="N";
		 var type = $('input[name=optradio]:checked').val();
		 if(type == "PO")
		{
			 var frmData = $("#saveOwner").serializeObject();
			 var json_string = JSON.stringify(frmData);
			 var datavar = removeEmptyValueFromJSON(json_string);
					//-----ajax start---------//	    	
					$.ajax({
			            type: "POST",
			            url: jsonSavePrimaryOwnerDetailsUrl,
			            contentType : "application/json",
			            dataType : 'json',
			            data: datavar,
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
			            	ownChange = "Y";
			            	 new PNotify({
	                             title: 'Data save successfully',
	                             styling: 'bootstrap3',
	                             type: 'success'
	                         });
			            	// searchCharges();
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
			}//--------end if
		 
		 else  if(type == "AO")
		 {
			 var frmData = $("#additionalOwnerFrom").serializeObject();
			 var json_string = JSON.stringify(frmData);
			 var datavar = removeEmptyValueFromJSON(json_string);
					//-----ajax start---------//	    	
					$.ajax({
			            type: "POST",
			            url: jsonSaveAdditionalOwnerDetailsUrl,
			            contentType : "application/json",
			            dataType : 'json',
			            data: datavar,
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
			            	ownChange = "Y";
			            	 new PNotify({
	                             title: 'Data save successfully',
	                             styling: 'bootstrap3',
	                             type: 'success'
	                         });
			            	// searchCharges();
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
			}//--------end if
		 
		 else  if(type == "PAO")
		 {
						 
			 var dd = $("#additionalOwnerFrom").serializeObject();			 
			 var primeOwner = $("#saveOwner").serializeObject();
			 var formData = {primeOwner,"addOwn" : dd};
			 var json_string = JSON.stringify(formData);
			 var datavar = removeEmptyValueFromJSON(json_string);
			 
					//-----ajax start---------//	    	
					$.ajax({
			            type: "POST",
			            url: jsonSaveBothOwnerDetailsUrl,
			            contentType : "application/json",
			            dataType : 'json',
			            data: datavar,
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
			            	ownChange = "Y"
			            	 new PNotify({
	                             title: 'Data save successfully',
	                             styling: 'bootstrap3',
	                             type: 'success'
	                         });
			            	 //searchCharges();
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
			}//--------end if
				
			 }
	 
	 //--------save details end---------
	 
	 //search button click-----------------
	//validation
	 	$("#searchWaterDet").click(function() {
	 		 $('#frmData').attr('action', searchWaterDet);
	 		$("#frmData").submit();
		 });
	 
	 //search button click-----------------
	 
	 
	
	 $("#payDue").click(function()
	{
		 console.log($("#setServiceId").find(":selected").text());
		 var serviceName = $("#setServiceId").find(":selected").text().split("/");
		 var ulbId =  $("#ulbIdDesc").val().split("|");
		 var datavar2 = {"wulbId":ulbId[0],"serviceId":$("#setServiceId").val(),"payAmount":$("#payAmt").val(),"mobNo":$("#applicantMobile").val(),"connectionNo" :$("#connectionNo").val(),"connectionId":$("#connectionId").val(),"email":$("#applicantEmail").val(),"serviceName" : serviceName[0],"moduleId" : "4"};
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
		 
		 
	 });
	 
	 
	 //=============pay charges =============
	 function payCharges()
	 {
		 var ulbId =  $("#ulbIdDesc").val().split("|");
		 var datavar2 = {"wulbId":ulbId[0],"serviceId":$("#setServiceId").val(),"payAmount":$("#charges").val(),"mobNo":$("#applicantMobile").val(),"connectionId":$("#connectionId").val(),"tax_det_id":$('#taxDetId').val(),"tax_id":$('#taxId').val(),"srn_id":$('#srIdPrim').val(),"email":$("#applicantEmail").val()};
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
					//window.location.href = data;
					
				} ,
				error : function(request, status, error) {
					 //console.log("error "+request);
					// console.log("error "+error);
				} 
			});
	 }
	 
	
	 
	 
	 
	 
	 function commonChecklist()
	 {
 		 //$('#checkListForm').attr('action', jsonCommonChecklistUrl);
 		 $("#checkListForm").submit();
	 }
	 /*function ackView()
	 {
		 $('#ackFrm').attr('action', ackUrl);
		 $("#ackFrm").submit();
	 }*/
	 //=============pay charges ============
	 
	 $("#payCharges").click(function()
	 {
		 if(add_validations() && validateCheckList() && submitApplicantValidations())
		 {
			 saveApplication();
			 if(app != "N")
			 saveOwner();
			 
			 if(ownChange != "N")
			 payCharges();
			 
			 commonChecklist();
			 
		 }
		
	});
	 
	 //==================
	 $("#btnSave").click(function()
	 {
		 if(submitApplicantValidations() && validateCheckList()  && add_validations() ) 
		 {
		 saveApplication();
		 
		 if(app != "N")
		 saveOwner();
		 
		 if(ownChange != "N")
			 commonChecklist();
		 //ackView();
		 }
		 
	});

	 
 			
});//end document.ready


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
	var fieldData = {"srnId": $("#srnIdView").val(), "ulbId" : $("#ulbIdDesc").val()};
	$("#changeofexistAction tbody").empty();
	$("#changeofexist tbody").empty();
	$.ajax({
        type: "POST",
        url: jsonviewChangeOwnerShipUrl,
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
        	var additional = 0;
        	   $.each(data.resultData, function (i, result) 
        		{
        		   if(result.ownerType == 'P')
        		   {
        			   $("#firstNameOld").val(undefinedChcek(result.firstNameOwner));
        			   $("#middleNameOld").val(undefinedChcek(result.middleNameOwner));
        			   $("#lastNameOld").val(undefinedChcek(result.lastNameOwner));
        			   $("#organisationNameOld").val(undefinedChcek(result.organisationNameOwner));
        			   
        			   $("#firstNameOwner").val(undefinedChcek(result.firstName));
        			   $("#middleNameOwner").val(undefinedChcek(result.middleName));
        			   $("#lastNameOwner").val(undefinedChcek(result.lastName));
        			   $("#organisationNameOwner").val(undefinedChcek(result.organisationName));
        			   
        		   }
        		   else
        		   {
        			   if(result.ownerType == 'A')
            		   {
	        			   	$("#changeofexistAction tbody").append('<tr> <td>'+ undefinedChcek(result.firstName)+'</td> <td> '+ undefinedChcek(result.middleName)+'</td> <td> '+ undefinedChcek(result.lastName) +' </td><td> '+ undefinedChcek(result.organisationName) +'</td></tr>');
	        			   	$("#changeofexist tbody").append('<tr><td> <input type="checkbox"> </td> <td> '+ undefinedChcek(result.firstNameOwner)+'</td> <td> '+ undefinedChcek(result.middleNameOwner) +' </td> <td>'+ undefinedChcek(result.lastNameOwner) +'</td> <td> '+ undefinedChcek(result.organisationNameOwner)+'</td></tr>');
	        			   	additional++;
            		   }
        		   }
        		  
        		   
        		});
        	   if(additional == 0)
    		   {
    			   $("#changeofexistAction").hide();
    				$("#changeofexist").hide();
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
	                  
	
	//-----ajax end---------//
}

function undefinedChcek(data)
{
		if(data == undefined || data == "undefined")
			return " "
		else
			return data;
}
//-------------remove-----------
		 
function deleteBtn(id)
{			
	    $("#tr"+id).remove();
}//);


/*********************/
function firstDrop(ulbId)
 			 {
	 var abc = 0;
	 var noyes = 'AWZ';
	    var waterZoneId = 0;
	    var adminZoneId = 0;
	    var subdrop = 1;
	    
	    
	    //Files in an Array
	    
	    var firstArr = [];
	    var secondArr = [];
	    var thirdArr = [];
	    
	    
	    //Files in an Array
	    
	    	var lookDetId = [];
		 	var lookDetName = [];
			var lookDId;
			var lookDName;
			
			//Ward Zone Drope Down Divs
			$('#boundaryDiv').hide();
 	    	 $('.subboundry1').hide();
 		     $('.subboundry2').hide();
 		     $('.subboundry3').hide();
 		     $('.subboundry4').hide();
 		     $('.subboundry5').hide();
			
	$.ajax({
	      type: "POST",
	      url: jsonLookupUrl,
	      contentType : "application/json",
	      dataType : 'json',
	      	    async: false,
	  	      headers: {
	  	          "Authorization": "Basic " + btoa("ashok:pass") 
	  	      },
	      	      success: function (data)
	      	      {
	      	    	firstArr = data.resultData;
	      	    	  
		      	    	$.each(data.resultData, function (i, result)
		      	    	{
			   				if(result.lookupCode == noyes)
			   				{
			   					waterZoneId = result.lookupId;
			   				}
			   				if(result.lookupCode == 'AWZ')
			   				{
			   					adminZoneId = result.lookupId
			   				}
		           		});
	      	      },
	      	      statusCode: {
	      			    403: function() {
	      			    	 PNotify.removeAll();new PNotify({
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
	      	          /*PNotify.removeAll();new PNotify({
	      	                  title: 'jsonLookup Request Not Process... ',
	      	                  styling: 'bootstrap3',
	      	                  type: 'error'
	      	              });*/
	      	          }
	      });
	
 				// alert("inside function with ULBID -- "+ulbId)
 				/* To get level for water Ward_zone */
 	 			 $.ajax({
 	 			      type: "POST",
 	 			      url: jsonLookupDetUrl,
 	 			      contentType : "application/json",
 	 			      dataType : 'json',
 	 			     async: false,
 	 			   	      headers: {
 	 			   	          "Authorization": "Basic " + btoa("ashok:pass") 
 	 			   	      },
 	 			      success: function (data){
 	 			    	  secondArr = data.resultData;
 	 			    	$('#subboundry1').show();
 	 			    	$.each(data.resultData, function (i, result) {
 	 			    		
 	 			    		//if(lookDetId != result.lookupDetId && ulbId == result.ulbId){
 	 			    			
 	 			    			if((result.lookupId == waterZoneId) && (result.ulbId == ulbId))
 	 			    				{
 	 			    			console.log(lookDetId+" = "+result.lookupDetDescEn);
 	 			    			
 	 			    			
		     	    			$('.subboundry'+subdrop).show();
		     	    			lookDId = result.lookupDetId;
		     	    			lookDetId.push(lookDId);
		     	    			lookDName = result.lookupDetDescEn;
		     	    			lookDetName.push(lookDName);
		     	    			subdrop ++;
 	 			    			
 	 			    		}
 	 		        });
 	 			      },
 	 			      statusCode: {
 	 					    403: function() {
 	 					    	 PNotify.removeAll();new PNotify({
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
 	 			          }
 	 			      });
 	 			 
 				$.ajax({
 	 			      type: "POST",
 	 			      url: jsonLookupHierDetUrl,
 	 			      contentType : "application/json",
 	 			      dataType : 'json',
 	 			      async: false,
 	 			      headers: {
 	 			          "Authorization": "Basic " + btoa("ashok:pass") 
 	 			      },
 	 		  	      success: function (data){
 	 		  	    	  thirdArr = data.resultData;
 	 		  	    	  var ldi;
 	 		  	    	  var subdrop = 0;
 	 		  	    	  $('.subDroped1').find('option').remove() ;
 	 		   	    		$('.subDroped1').append('<option value="0">'+lookDetName[0]+'</option>');
 	 			    	    	$.each(data.resultData, function (i, result) {
 	 			    	    		
 	 			    	    		if(lookDetId[0] == result.lookupDetId && ulbId == result.ulbId){
 	 			    	    		$('.subDroped1').append('<option value="'+result.lookupDetHierId+'">'+result.lookupDetHierDescEn+'</option>');
 	 			    	    		console.log(result.lookupDetHierDescEn);
 	 			    	    		}
 	 			    	    	});
 	 		  	      },
 	 		  	      statusCode: {
 	 		  			    403: function() {
 	 		  			    	 PNotify.removeAll();new PNotify({
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
 	 		  	          }
 	 			      });
 				
 				
 				 
 	 			 $('.subDroped1').change(function() {
 	 			      	
 	 		   	 $.ajax({
 	 		     	      type: "POST",
 	 		     	      url: jsonLookupHierDetUrl,
 	 		     	      contentType : "application/json",
 	 		     	      dataType : 'json',
 	 		     	      async: false,
 	 		     	      headers: {
 	 		     	          "Authorization": "Basic " + btoa("ashok:pass") 
 	 		     	      },
 	 		     	      success: function (data)
 	 		     	      {
 	 		   	    		$('.subDroped2').empty();
 	 		   	    		 $('.subDroped2').find('option').remove() ;
 	 		   	    		$('.subDroped2').append('<option value="0">'+lookDetName[1]+'</option>');
 	 		     	    	
 	 		     	    	$.each(data.resultData, function (i, result) {
 	 		      	    		if(ulbId == result.ulbId && $('.subDroped1 option:selected').val() == result.lookupDetHierParentId && lookDetId[1] == result.lookupDetId){
 	 		      	    			$('.subDroped2').append('<option value="'+result.lookupDetHierId+'">'+result.lookupDetHierDescEn+'</option>');
 	 		     	    		} 
 	 		     	    	});
 	 		     	      },
 	 		     	      statusCode: {
 	 		     			    403: function() {
 	 		     			    	 PNotify.removeAll();new PNotify({
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
 	 		     	          }
 	 		     	      }); 
 	 		    });
 	 			 
 	 			 
 	 			 
 	 			 
 	 			 $('.subDroped2').change(function() {
 	 		    	
 	 		   	 $.ajax({
 	 		     	      type: "POST",
 	 		     	      url: jsonLookupHierDetUrl,
 	 		     	      contentType : "application/json",
 	 		     	      dataType : 'json',
 	 		     	      async: false,
 	 		     	      headers: {
 	 		     	          "Authorization": "Basic " + btoa("ashok:pass") 
 	 		     	      },
 	 		     	      success: function (data)
 	 		     	      {
 	 		   	    		$('.subDroped3').empty();
 	 		   	    		 $('.subDroped3').find('option').remove() ;
 	 		   	    		$('.subDroped3').append('<option value="0">'+lookDetName[2]+'</option>');
 	 		     	    	
 	 		     	    	$.each(data.resultData, function (i, result) {
 	 		      	    		if(ulbId == result.ulbId && $('.subDroped2 option:selected').val() == result.lookupDetHierParentId && lookDetId[2] == result.lookupDetId){
 	 		      	    			$('.subDroped3').append('<option value="'+result.lookupDetHierId+'">'+result.lookupDetHierDescEn+'</option>');
 	 		     	    		} 
 	 		     	    	});
 	 		     	      },
 	 		     	      statusCode: {
 	 		     			    403: function() {
 	 		     			    	 PNotify.removeAll();new PNotify({
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
 	 		     	          }
 	 		     	      }); 
 	 		    });
 	 			 
 	 			 
 	 			 
 	 			 
 	 			 $('.subDroped3').change(function() {
 	 		    	
 	 		   	 $.ajax({
 	 		     	      type: "POST",
 	 		     	      url: jsonLookupHierDetUrl,
 	 		     	      contentType : "application/json",
 	 		     	      dataType : 'json',
 	 		     	      async: false,
 	 		     	      headers: {
 	 		     	          "Authorization": "Basic " + btoa("ashok:pass") 
 	 		     	      },
 	 		     	      success: function (data)
 	 		     	      {
 	 		   	    		$('.subDroped4').empty();
 	 		   	    		 $('.subDroped4').find('option').remove() ;
 	 		   	    		$('.subDroped4').append('<option value="0">'+lookDetName[3]+'</option>');
 	 		     	    	
 	 		     	    	$.each(data.resultData, function (i, result) {
 	 		      	    		if(ulbId == result.ulbId && $('.subDroped3 option:selected').val() == result.lookupDetHierParentId && lookDetId[3] == result.lookupDetId){
 	 		      	    			$('.subDroped4').append('<option value="'+result.lookupDetHierId+'">'+result.lookupDetHierDescEn+'</option>');
 	 		     	    		} 
 	 		     	    	});
 	 		     	      },
 	 		     	      statusCode: {
 	 		     			    403: function() {
 	 		     			    	 PNotify.removeAll();new PNotify({
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
 	 		     	          }
 	 		     	      }); 
 	 		    });
 	 			 
 	 			 
 	 			 $('.subDroped4').change(function() {
 	 		    	
 	 		   	 $.ajax({
 	 		     	      type: "POST",
 	 		     	      url: jsonLookupHierDetUrl,
 	 		     	      contentType : "application/json",
 	 		     	      dataType : 'json',
 	 		     	      async: false,
 	 		     	      headers: {
 	 		     	          "Authorization": "Basic " + btoa("ashok:pass") 
 	 		     	      },
 	 		     	      success: function (data)
 	 		     	      {
 	 		   	    		$('.subDroped5').empty();
 	 		   	    		 $('.subDroped5').find('option').remove() ;
 	 		   	    		$('.subDroped5').append('<option value="0">'+lookDetName[4]+'</option>');
 	 		     	    	
 	 		     	    	$.each(data.resultData, function (i, result) {
 	 		      	    		if(ulbId == result.ulbId && $('.subDroped4 option:selected').val() == result.lookupDetHierParentId && lookDetId[4] == result.lookupDetId){
 	 		      	    			$('.subDroped5').append('<option value="'+result.lookupDetHierId+'">'+result.lookupDetHierDescEn+'</option>');
 	 		     	    		} 
 	 		     	    	});
 	 		     	      },
 	 		     	      statusCode: {
 	 		     			    403: function() {
 	 		     			    	 PNotify.removeAll();new PNotify({
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
 	 		     	          }
 	 		     	      }); 
 	 		    });/* Ward Zone drop Down 4 change events ends */ 				
 				
 				
 			 }

$("#ulbIdDesc").on('change', function() {
	
	 var splitData = [];
	 var gotVal = this.value;
	 splitData = gotVal.split("|");
	 var first = splitData[0];
	 $("#ulbId").val(first);
	 firstDrop($("#ulbId").val());
	 var serviceId= $("#servDeschide").val();
	 $("#setServiceId").val(serviceId);
	 
});

function fillLocationData() {
	data = {ulbId : $('#ulbNo').val(), srnId :  $('#srnIdView').val(), serviceShortCode : $('#serviceCode').val()}
	$.ajax({
	    type: "POST",
	    url: getSeviceSpecificData,
	    contentType : "application/json",
	    //dataType : 'json',
	    data : JSON.stringify(data),
	    async: false,
	    headers: {
	        "Authorization": "Basic " + btoa("ashok:pass") 
	    },
	    success: function (data){
	  		console.log(data);
	  		var result = $.parseJSON(JSON.stringify(data));
	  		$('#locName').val(result.locName);
	  		$('#aprtName').val(result.aprtName);
	  		$('#roadName').val(result.roadName);
	  		$('#localityName').val(result.localityName);
	  		$('#lon').val(result.longitude);
	  		$('#lat').val(result.latitude);
	  		if(result.wardId != null && result.wardId != 0){
	  			$('.subText1').css("display","block");
	  			$('.subText1').val(result.wardName);
	  		}
	  		if(result.zoneId != null && result.zoneId != 0){
	  			$('.subText2').css("display","block");
	  			$('.subText2').val(result.zoneName);
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
	        }
	    });

}

$(document).ready(function(){
	if($("#action").val()=='V')
	{
		getULBListIDnDesc(jsonULBListUrl,"ulbIdDesc");
		getServiceList(jsonServiceListUrl,"setServiceId");
		$("#ulbIdDesc").val($("#ulbId").val());
		var splitData = [];
		var gotVal =$("#ulbId").val();
		splitData = gotVal.split("|");
		var first = splitData[0];
		$("#ulbNo").val(first);
		firstDrop( $("#ulbNo").val());
		fillLocationData();
		$('#setServiceId').val($('#servDeschide').val());
		$('#citizenSurveyRequest textarea,select,input[type=text]').attr("disabled", "disabled");//ulbIdDesc
	}
	$('#homeBtn').click(function(){
        window.location = homeUrl;
	});
	//alert("ready function ::::  -> "+ $("#ulbid").val());
	$("#orgName").text("Organization/ Society/ Company Name (If applicable):");
	$("#orgAdd").text("Organization/ Society/ Company Address (If applicable):");   
	 $('#ind').change(function () {
     	$('.org-div').fadeOut();
        
     });
     $('#org').change(function () {
     	 $('.org-div').fadeIn();
     });
    	 $("#payAmt").val(0);
 	   	$(".chargeColl").hide();
 	   	
 	   	$('#boundaryDiv').hide();
 	   $('.subboundry1').hide();
	     $('.subboundry2').hide();
	     $('.subboundry3').hide();
	     $('.subboundry4').hide();
	     $('.subboundry5').hide();
	     if ($("#ulbid").val() == 'undefined') {
 		getULBListIDnDesc(jsonULBListUrl,"ulbIdDesc");
 		getServiceList(jsonServiceListUrl,"servDesc"); 
	     }else{
	    	 firstDrop($("#ulbid").val());
	     }
	     
 		var servDeschide = $('#servDeschide').val();
 		$('#servDesc option[value="'+servDeschide+'"]').attr('selected',true);
 		
 		/*alert("servDeschide----"+servDeschide);*/
 		var servValue = $('#servDesc option[value="'+servDeschide+'"]').text();

		//On click of Finsih Button
	$('#addBtn').click(function()
			{
				
		ulbId = $('#ulbIdDeschide').val();
   	 
    	serviceId = $('#servDeschide').val();
    	 
    	 subboundry1 = $('#subDroped1 option:selected').val();
    	 subboundry2 = $('#subDroped2 option:selected').val();
    	 subboundry3 = $('#subDroped3 option:selected').val();
    	 subboundry4 = $('#subDroped4 option:selected').val();
    	 subboundry5 = $('#subDroped5 option:selected').val();
    	 
    	 
    	 M_firstName = document.getElementsByName("firstName")[0].value;
     	 M_middleName = document.getElementsByName("middleName")[0].value;
     	 M_lastName = document.getElementsByName("lastName")[0].value;
    	 
    	 firstNameOwner = document.getElementsByName("firstNameOwner")[0].value;
    	 middleNameOwner = document.getElementsByName("middleNameOwner")[0].value;
    	 lastNameOwner = document.getElementsByName("lastNameOwner")[0].value;
    	 
    	 organisationName = document.getElementsByName("organisationName")[0].value;
    	 
    	 mobile_num = document.getElementsByName("contactNumberOwner")[0].value;
    	 emailId = document.getElementsByName("emailId")[0].value;
    	 uidId = document.getElementsByName("uidId")[0].value;
    	 
    	 flatNo = document.getElementsByName("flatNoOwner")[0].value;
    	 roadName = document.getElementsByName("roadNameOwner")[0].value;
    	 
    	 district = document.getElementsByName("lookupDetIdDistrictO")[0].value;
      	 taluka = document.getElementsByName("lookupDetIdTalukaO")[0].value;
      	 city = document.getElementsByName("lookupDetIdCityO")[0].value;

      	 old_property = document.getElementsByName("manualPropertyNumber")[0].value;
      	 
    	    
	    		 if (parseInt(Ownercount) == 1)
	 	 		{
	    	 		 //Temporary save details in table for Step 1
	    	        $.ajax({
	    				type : "POST",
	    				url : consumerTempAdd1,
	    				data :  "&lookupDetIdAdministrativeWard1=" + subboundry1
	    					 + "&lookupDetIdAdministrativeWard2=" + subboundry2
	    					 + "&lookupDetIdAdministrativeWard3=" + subboundry3
	    					 + "&lookupDetIdAdministrativeWard4=" + subboundry4
	    					 + "&lookupDetIdAdministrativeWard5=" + subboundry5
	    					 
	    					 + "&firstName=" + M_firstName
	    					 + "&middleName=" + M_middleName
	    					 + "&lastName=" + M_lastName
	    					 
	    					 + "&firstNameOwner=" + firstNameOwner
	    					 + "&middleNameOwner=" + middleNameOwner
	    					 + "&lastNameOwner=" + lastNameOwner
	    					 
	    					 + "&organisationName=" + organisationName
	    					 
	    					 + "&contactNumberOwner=" + mobile_num
	    					 + "&emailId=" + emailId
	    					 + "&uidId=" + uidId
	    					 
	    					 + "&lookupDetIdDistrictO=" + district
	    					 + "&lookupDetIdTalukaO=" + taluka
	    					 + "&lookupDetIdCityO=" + city
	    					 
	    					 + "&manualPropertyNumber=" + old_property
	    					 + "&lastPK=" + lastPK
	    					 
	    					 + "&ulbId=" + ulbId
	    					 + "&serviceId=" + serviceId,
	    					 
	    					 
	    				success : function(response) 
	    				{
	    					
	    							var respIds = response.split("-");
	    							
	    							//alert("comId---"+respIds[0]+"--- srnId--"+respIds[1])
	    							
	    							lastPK = respIds[0];
	    							lastSrnId = respIds[1];
	    							 $('#lastPk').val(respIds[0]); 
	    							 $('#lastSrnId').val(respIds[2]);
	    							 //$('#srnIdAck').val(respIds[2]);
	    							 
	    							 var connectionType = document.getElementsByName("connectionType")[0].value;
	    						   		var pipeSize = document.getElementsByName("pipeSize")[0].value;
	    						   		var IdUsage1 = document.getElementsByName("lookupDetHierIdUsage1")[0].value;
	    						   		var subUsageId = document.getElementsByName("subUsageId")[0].value;
	    						   		
	    						   		var noOfTap = document.getElementsByName("noOfTap")[0].value;
	    						   		var numberOfPersons = document.getElementsByName("numberOfPersons")[0].value;
	    						   		
	    						   		var prestConNum = $('#prestConNum').val();
	    						   		
	    						   		district = document.getElementsByName("lookupDetIdDistrictO")[0].value;
	    						      	 taluka = document.getElementsByName("lookupDetIdTalukaO")[0].value;
	    						      	 city = document.getElementsByName("lookupDetIdCityO")[0].value;
	    						      	 
	    						      	 
	    						   		
	    						   		$.ajax({
	    				    				type : "POST",
	    				    				url : consumerStep2Add,
	    				    				data : "connectionType=" + connectionType
	    				    					 + "&pipeSize=" + pipeSize
	    				    					 + "&lookupDetHierIdUsage1=" + IdUsage1
	    				    					 + "&subUsageId=" + subUsageId
	    				    					 
	    				    					 + "&noOfTap=" + noOfTap
	    				    					 + "&numberOfPersons=" + numberOfPersons
	    				    					 
	    				    					 + "&prestConNum=" + prestConNum 
	    				    					 
	    				    					 + "&lookupDetIdDistrictO=" + district
	    				    					 + "&lookupDetIdTalukaO=" + taluka
	    				    					 + "&lookupDetIdCityO=" + city,
	    				    					 
	    				    				success : function(response) {
	    				    					var amt = $('#payAmt').val();
	    				    					
	    				    					if(amt == 0)
	    				    						{
	    					    						 //$('#ackFrm').attr('action', ackUrl);
	    					    				 		 $("#checkListForm").submit(); 
	    				    							//window.location = home;
	    				    						}
	    				    					else
	    				    						{
	    				    						var ulbId = $('#ulbIdDesc option:selected').val();
	    				    			        	var ulbArr = ulbId.split("|");
	    				    			        	var serviceId = $('#servDeschide').val();
	    				    			        	var amt = $('#payAmt').val();
	    				    			        	var mobile_num = $('#mobile_no').val();
	    				    			        	var lastPK = $('#lastPk').val();
	    				    			        	var taxId = $('#taxId').val();
	    				    						var taxDetId = $('#taxDetId').val();
	    				    						var lastSrnId = $('#lastSrnId').val();
	    				    						
	    				    			        	var datavar2 = {"wulbId":ulbArr[0],"serviceId":serviceId,"payAmount":amt,"mobNo":mobile_num,"connectionId":lastPK,"tax_det_id":taxDetId,"tax_id":taxId,"srn_id":lastSrnId};
	    				    			        	
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
	    				    				},
	    				    				
	    				    				error : function() {
	    				    					// alert('While Update - Consumer Controllered missed');
	    				    				}
	    				    			});
	    							 	
	    				}
	    			});
	 	 		}
		   		
		   		
	 			});
 		}); //Document Ready function Ends 			
function getlookupHier(id,nextId) {

	var parentId = $('#'+id+' option:selected').val();
	//alert("parentId----"+parentId);
	
	
	 $.ajax({
		type : "GET",
		url : lookupHier,
		data : "parentId=" + parentId,
		dataType : "json",
		success : function(data) 
		{
			$('#'+nextId).empty();
			$('#'+nextId).append(
					$("<option></option>").attr("value", '0').text(
							'Please select'));
			$.each(data.resultData, function(i, result) {

				$('#'+nextId).append(
						$("<option></option>").attr("value",
								result.lookupDetHierId).text(
								result.lookupDetHierDescEn +" ("+ result.lookupDetHierDescRg +")"));
			});
		}
	}); 
}

/*********************/
/*First Name*/
function validateFname() {
	var fName = $("#applicantFirstName").val();
	var length = $('#firstNameApended').length;
	if (length == 0) {
		if (fName == "") {
			$("#fname")
					.append(
							'<div id="firstNameApended" style="color:red;"> Enter First Name </div>')
					.show(); 
		} else {
			$("#firstNameApended").remove();
		}
	}
}
function removeFname() {
	$("#firstNameApended").remove();
}

/*Last Name*/
function validateLname() {
	var lName = $("#applicantLastName").val();
	var length = $('#lastNameApended').length;
	if (length == 0) {
		if (lName == "") {
			$("#lname")
					.append(
							'<div id="lastNameApended" style="color:red;"> Enter Last Name </div>')
					.show(); 
		} else {
			$("#lastNameApended").remove();
		}
	}
}
function removeLname() {
	$("#lastNameApended").remove();
}

/*MObileNumber*/
function validateMobile() {
	var mobileNo = $("#applicantMobile").val();
	var length = $('#mobileApended').length;
	if (length == 0) {
		if (mobileNo == "" ) {
			$("#mobileNo")
					.append(
							'<div id="mobileApended" style="color:red;"> Enter Mobile Number</div>')
					.show(); 
		} else if (mobileNo.length < 10) {
			$("#mobileNo")
			.append(
					'<div id="mobileApended" style="color:red;"> Enter Valid Mobile Number</div>')
			.show(); 
		} else {
			$("#mobileApended").remove();
		}
	}
}
function isNumber(evt) {
	$("#mobileApended").remove();
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		return false;
	}
	return true;
}

/*EmailAddress*/
function validateEmail() {
	var fName = $("#applicantEmail").val();
	var length = $('#emailApended').length;
	if (length == 0) {
		if (fName == "") {
			$("#emailId")
					.append(
							'<div id="emailApended" style="color:red;"> Enter Email Address</div>')
					.show(); 
		} else {
			$("#emailApended").remove();
			if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(fName)) {
				return (true)
			}
			//$("#emailApended").remove(); 
		}
	} 
}

function removeEmail()
{
	$("#emailApended").remove();
}
/*AadharNo*/
function validateAadhar() {
	var aadharNo = $("#aadharNo").val();
	var length = $('#aadharApended').length;
	if (length == 0) {
		if (aadharNo == "") {
			$("#aadharnumber")
					.append(
							'<div id="aadharApended" style="color:red;"> Enter Aadhar Card Number</div>')
					.show(); 
		} else if (aadharNo.length < 12) {
			$("#aadharnumber")
			.append(
					'<div id="aadharApended" style="color:red;"> Enter Valid Aadhar No</div>')
			.show(); 
		} else {
			$("#aadharApended").remove();
		}
	}
}

function isNumberAadhar(evt) {
	$("#aadharApended").remove();
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		return false;
	}
	return true;
}

/*Location*/
function validateLocation() {
	var locationNo = $("#locationId").val();
	var length = $('#locationApended').length;
	if (length == 0) {
		if (locationNo == "") {
			$("#locId")
					.append(
							'<div id="locationApended" style="color:red;"> Enter Location</div>')
					.show(); 
		} else {
			$("#locationApended").remove();
		}

	}
}

function removeLocation(){
	$("#locationApended").remove();
}

/*aprtId*/
function validateApart() {
	var aadharNo = $("#apartmentId").val();
	var length = $('#apartApended').length;
	if (length == 0) {
		if (aadharNo == "") {
			$("#aprtId")
					.append(
							'<div id="apartApended" style="color:red;"> Enter Apartment</div>')
					.show(); 
		} else {
			$("#apartApended").remove();
		}
	}
}

function removeApart(){
	$("#apartApended").remove();
}

/*wardNo*/
function validateWard() {
	var wardNo = $("#wardId").val();
	var length = $('#wardApended').length;
	if (length == 0) {
		if (wardNo == "") {
			$("#wardNo")
					.append(
							'<div id="wardApended" style="color:red;"> Enter Ward</div>')
					.show(); 
		} else {
			$("#wardApended").remove();
		}
	}
}

function removeWard(){
	$("#wardApended").remove();
}

/*zoneNo*/
function validateZone() {
	var zoneNo = $("#zoneId").val();
	var length = $('#zoneApended').length;
	if (length == 0) {
		if (zoneNo == "") {
			$("#zoneNo")
					.append(
							'<div id="zoneApended" style="color:red;"> Enter Zone</div>')
					.show(); 
		} else {
			$("#zoneApended").remove();
		}
	}
}

function removeZone(){
	$("#zoneApended").remove();
}

/*roadNo*/
function validateRoad() {
	var roadNo = $("#roadId").val();
	var length = $('#roadApended').length;
	if (length == 0) {
		if (roadNo == "") {
			$("#roadNo")
					.append(
							'<div id="roadApended" style="color:red;"> Enter Road</div>')
					.show(); 
		} else {
			$("#roadApended").remove();
		}
	}
}

function removeRoad(){
	$("#roadApended").remove();
}

/*localityNo*/
function validateLocality() {
	var roadNo = $("#localityId").val();
	var length = $('#localityApended').length;
	if (length == 0) {
		if (roadNo == "") {
			$("#localityNo")
					.append(
							'<div id="localityApended" style="color:red;"> Enter Locality</div>')
					.show(); 
		} else {
			$("#localityApended").remove();
		}
	}
}

function removeLocality(){
	$("#localityApended").remove();
}
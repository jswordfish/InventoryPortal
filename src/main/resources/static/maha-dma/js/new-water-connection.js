 
 			 
var serviceId = $('#servDeschide').val();
 		  



function firstDrop(ulbId)
 			 {
	 var abc = 0;
	 var noyes = 'WWZ';
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
 	 			    	$('#boundaryDiv').show();
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
 	 			              //	display(e);
 	 			          /*PNotify.removeAll();
 	 			          new PNotify({
 	 			                  title: 'jsonLookup-Det Request Not Process... ',
 	 			                  styling: 'bootstrap3',
 	 			                  type: 'error'
 	 			              });*/
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
 	 		  	    	 // $('.subDroped1').empty();
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
 	 		  	              //	display(e);
 	 		  	          /*PNotify.removeAll();new PNotify({
 	 		  	                  title: 'jsonLookup-Hier-Det Request Not Process... ',
 	 		  	                  styling: 'bootstrap3',
 	 		  	                  type: 'error'
 	 		  	              });*/
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
 	 		     	         /* PNotify.removeAll();new PNotify({
 	 		     	                  title: 'jsonLookup-Hier-Det  Drop1 Request Not Process... ',
 	 		     	                  styling: 'bootstrap3',
 	 		     	                  type: 'error'
 	 		     	              });*/
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
 	 		     	          /*PNotify.removeAll();new PNotify({
 	 		     	                  title: 'jsonLookup-Hier-Det  Drop2 Request Not Process... ',
 	 		     	                  styling: 'bootstrap3',
 	 		     	                  type: 'error'
 	 		     	              });*/
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
 	 		     	          /*PNotify.removeAll();new PNotify({
 	 		     	                  title: 'jsonLookup-Hier-Det  Drop2 Request Not Process... ',
 	 		     	                  styling: 'bootstrap3',
 	 		     	                  type: 'error'
 	 		     	              });*/
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
 	 		     	          /*PNotify.removeAll();new PNotify({
 	 		     	                  title: 'jsonLookup-Hier-Det  Drop4 Request Not Process... ',
 	 		     	                  styling: 'bootstrap3',
 	 		     	                  type: 'error'
 	 		     	              });*/
 	 		     	          }
 	 		     	      }); 
 	 		    });/* Ward Zone drop Down 4 change events ends */ 				
 				
 				
 			 }



	function getlookupHier(id,nextId) {

		var parentId = $('#'+id+' option:selected').val();
		//alert("parentId----"+parentId);
		
		
		 $.ajax({
			type : "GET",
			url : lookupHier,
			data : "parentId=" + parentId,
			dataType : "json",
			async : false,
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
	
	function getSubUsageHier(id,nextId,ulbId) {

		var parentId = $('#'+id+' option:selected').val();
		
		 $.ajax({
			type : "GET",
			url : getUsageSubTypeDrop,
			data : "parentId=" + parentId
					+"&ulbId=" + ulbId,
			dataType : "json",
			async : false,
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
	
	function getWaterTretment(ulbId)
	{
		$.ajax({
			type : "GET",
			url : getWaterTretmentURL,
			data : "ulbId=" + ulbId,
			dataType : 'json',
			async : false,
			success : function(data) 
			{
				//alert("getWaterTretment data---"+data);
				
				$('#waterTreatPlantId').empty();
				$('#waterTreatPlantId').append(
						$("<option></option>").attr("value", '0').text(
								'Select Water Tretment Plant'));
				$.each(data, function(i, result) {

					$('#waterTreatPlantId').append(
							$("<option></option>").attr("value",
									result.treatmentPlantId).text(
									result.nameOfPlant ));
				});
			}
		});
	}
	
	function getStorageReservior(ulbId)
	{
		$.ajax({
			type : "GET",
			url : getStorageReserviorURL,
			data : "ulbId=" + ulbId,
			dataType : 'json',
			async : false,
			success : function(data) 
			{
				//alert("getStorageReservior data---"+data);
				
				$('#reservoirId').empty();
				$('#reservoirId').append(
						$("<option></option>").attr("value", '0').text(
								'Please select Storage Reservior'));
				$.each(data, function(i, result) {

					$('#reservoirId').append(
							$("<option></option>").attr("value",
									result.storageId).text(
									result.typeOfReservoir ));

				});
			}
		});
	}
	
	function getSourceofWater(ulbId)
	{
		$.ajax({
			type : "GET",
			url : getSourceofWaterURL,
			data : "ulbId=" + ulbId,
			dataType : 'json',
			async : false,
			success : function(data) 
			{
				//alert("getSourceofWater data---"+data);
				
				$('#sourceOfWaterId').empty();
				$('#sourceOfWaterId').append(
						$("<option></option>").attr("value", '0').text(
								'Select Source of Water Supply'));
				$.each(data, function(i, result) {

					$('#sourceOfWaterId').append(
							$("<option></option>").attr("value",
									result.sourceId).text(
									result.sourceType+" ("+result.sourceDescription+")" ));
				});
			}
		});
	}
	
	function getPlumberList(ulbId)
	{
		$.ajax({
			type : "GET",
			url : getPlumberListURL,
			data : "ulbId=" + ulbId,
			dataType : 'json',
			async : false,
			success : function(data) 
			{
				//alert("getPlumberList data---"+data);
				
				$('#pumberId').empty();
				$('#pumberId').append(
						$("<option></option>").attr("value", '0').text(
								'Select a Plumber Name'));
				$.each(data, function(i, result) {

					$('#pumberId').append(
							$("<option></option>").attr("value",
									result.plumberId).text(
									result.firstName+" "+result.middleName+" "+result.lastName));
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
			async : false,
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
	
	var ulbId;
 	
	$('#ulbIdDesc').change(function()
			{
		
		var ulbIdDesc = $("#ulbIdDesc option:selected").val() ;
		var servDeschide = $('#servDeschide').val();
		$('#ulbIdDeschide').val(ulbIdDesc);
		
		var arrayULB = ulbIdDesc.split("|");
		//alert("arrayULB[0]---"+arrayULB[0]);
		getWaterTretment(arrayULB[0]);
		getStorageReservior(arrayULB[0]);
		getSourceofWater(arrayULB[0]);
		getPlumberList(arrayULB[0]);
		getPipeSize(arrayULB[0]);
		
		firstDrop(arrayULB[0]);
		
		ulbId=arrayULB[0];
		
		
		
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
				async : false,
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
	
	
	
	var connectionNoOld = 0;
	var connectionNo = 0;
	
	var serviceId = 0;
	
	var ward_code = 0;
	var zone_code = 0;
	var locality_code = 0;
	
	var subboundry1 = 0;
	var subboundry2 = 0;
	var subboundry2 = 0;
	var subboundry4 = 0;
	var subboundry5 = 0;
	
	var M_firstName = "";
	var M_middleName = "";
	var M_lastName = "" ;
	
	var firstNameOwner = "";
	var middleNameOwner = "";
	var lastNameOwner = "";
	
	var organisationName = "";
	
	var mobile_num = "";
	var emailId = "";
	var uidId="";
	
	var flatNo = "";
	var roadName = "";
	
	var district = "";
	var taluka = "";
	var city = "";
	
	var old_property = "";
	
	
	var Ownercount = 1; //Other than 'one' secondary owner
	var lastPK = $('#lastPk').val(); // Primary key for TmWmConsumerInfo, to add as FK in TmWmAdditionalOwner
	var lastSrnId = $('#lastSrnId').val();
	
	
	
     $(document).ready(function(){
    	 
    	 	var flatNoOwnerBill = "";
			var road_name_Bill = "";
			var districtDropBill = "";
			var talukaDropBill = "";
			var cityDropBill = "";
			var pincodeBill = "";
			var ulbIdHide = "";
			var sourceOfWaterId = "";
			var reservoirId = "";
			var waterTreatPlantId = "";
			
			
			var billingIs = 'Y';
			var modeVorA = $('#modeVorA').val();
    	 
    	 if(modeVorA == 'V')
    		 {
    		 
    		 $("#conNextBtn").html('Update');
    		 ulbIdHide = $('#ulbIdDeschide').val();
    		 var ulbOnLoad = ulbIdHide.split("|");
    		 
    		 getSourceofWater(ulbOnLoad[0]);
    		 getStorageReservior(ulbOnLoad[0]);
    		 getWaterTretment(ulbOnLoad[0]);
    		 
    		 
    		 
    		 	var srnIdView = $('#srn_id_view').val();
    		 	
    		 	$.ajax({
	 	  				type : "POST",
	 	  				url : getNewWaterData,
	 	  				data : "srnId=" + srnIdView,
	 	  				dataType : "json",
	 	  				async : false,
	 	  				success : function(data) 
	 	  				{
	 	  					console.log("getNewWaterData  -- "+data);
	 	  					
	 	  					lastPK = $('#lastPk').val(data.connectionId);
	 	  					lastPK = data.connectionId;
	 	  					$('#propowner_fname_e').val(data.firstNameOwner);
	 	  					$('#propowner_mname_e').val(data.middleNameOwner);
	 	  					$('#propowner_lname_e').val(data.lastNameOwner);
	 	  					
	 	  					$('#mobile_no').val(data.mobileNo);
	 	  					$('#email_id').val(data.emailId);
	 	  					$('#uidId').val(data.uid);
	 	  					
	 	  					$('#flatNoOwner').val(data.flatNo);
	 	  					$('#road_name').val(data.roadName);
	 	  					$('#oldPropNum').val(data.propertyNo);
	 	  					
	 	  					$('#connectionType option[value="'+data.connectionTypeVal+'"]').attr('selected',true);
	 	  					
	 	  					$('#lookupDetHierIdUsageId1 option[value="'+data.usageId+'"]').attr('selected',true);
	 	  					getSubUsageHier('lookupDetHierIdUsageId1','subUsageIdd',ulbOnLoad[0]);
	 	  					$('#subUsageIdd option[value="'+data.subUsageId+'"]').attr('selected',true);
	 	  					
	 	  					$('#numberOfPersons').val(data.numberOfPersons);
	 	  					$('#numberOfFamily').val(data.numberOfFamily);
	 	  					$('#prestConNum').val(data.presentConnectionNo);
	 	  					
	 	  					getPipeSize(ulbOnLoad[0]);
	 	  					$('#pipeSize option[value="'+data.pipeSize+'"]').attr('selected',true);
	 	  					
	 	  					$('#districtDrop option[value="'+data.districtId+'"]').attr('selected',true);
	 	  					
	 	  					getlookupHier('districtDrop','talukaDrop');
	 	  					$('#talukaDrop option[value="'+data.talukaId+'"]').attr('selected',true);
	 	  					
	 	  					getlookupHier('talukaDrop','cityDrop');
	 	  					$('#cityDrop option[value="'+data.cityId+'"]').attr('selected',true);
	 	  					
	 	  					$('#pincode').attr("readonly",true);
	 	  					$('#oldPropNum').attr("readonly",true);
	 	  					$('#prestConNum').attr("readonly",true);
	 	  					$('#numberOfPersons').attr("readonly",true);
	 	  					$('#numberOfFamily').attr("readonly",true);
	 	  					$('#road_name').attr("readonly",true);
	 	  					$('#flatNoOwner').attr("readonly",true);
	 	  					$('#uidId').attr("readonly",true);
	 	  					$('#email_id').attr("readonly",true);
	 	  					$('#mobile_no').attr("readonly",true);
	 	  					$('#propowner_lname_e').attr("readonly",true);
	 	  					$('#propowner_mname_e').attr("readonly",true);
	 	  					$('#propowner_fname_e').attr("readonly",true);
	 	  					$('#applicantFirstName').attr("readonly",true);
	 	  					$('#applicantMiddName').attr("readonly",true);
	 	  					$('#applicantLastName').attr("readonly",true);
	 	  					$('#applicantMobile').attr("readonly",true);
	 	  					$('#applicantEmail').attr("readonly",true);
	 	  					$('#aadharNo').attr("readonly",true);
	 	  					$('#applicantAddress').attr("readonly",true);
	 	  					$('#organisationName').attr("readonly",true);
	 	  					$('#organisationAddress').attr("readonly",true);
	 	  					$('#propowner_pref_e').attr("readonly",true);
	 	  					$('#pipeSize').attr("readonly",true);
	 	  					$('#districtDrop').attr("readonly",true);
	 	  					$('#talukaDrop').attr("readonly",true);
	 	  					$('#cityDrop').attr("readonly",true);
	 	  					$('#subUsageIdd').attr("readonly",true);
	 	  					$('#lookupDetHierIdUsageId1').attr("readonly",true);
	 	  					$('#connectionType').attr("readonly",true);
	 	  					$('#ulbIdDesc').attr("readonly",true);
	 	  					
	 	  				}
    		 	});
    		 	
    		 	$('#addAddiDiv').show();
    		 	$('.waterViewDiv').show();
    		 	$('.is-billing-div').show();
    		 	$('.editBtn').show();
    		 	
    		 	
    		 	$(".rdo-yes").click(function(){
    		 		billingIs = 'Y';
    				$('.billing-no-div').hide();
    			});
    			$(".rdo-no").click(function(){
    				billingIs = 'N';
    				$('.billing-no-div').show();
    			});
    			
    			
    			$('#addAddi-save').click(function()
    			{
    				$("#addAdditionalDiv").modal('hide');
    			});
    			
    			$('#editBtn').click(function(){
					$('#subUsageIdd').attr("readonly",false);
  					$('#lookupDetHierIdUsageId1').attr("readonly",false);
  					$('#connectionType').attr("readonly",false);
  					$('#pipeSize').attr("readonly",false);
  					$('#prestConNum').attr("readonly",false);
  					$('#numberOfPersons').attr("readonly",false);
  					$('#numberOfFamily').attr("readonly",false);
    			});
    			
    			
    			
    		 } /* ---------- VIEW MODE IF  ------------ */
    	 
    	 
    	 $("#payAmt").val(0);
 	   	$(".chargeColl").hide();
 	   	
 	   	$('#boundaryDiv').hide();
 	   $('.subboundry1').hide();
	     $('.subboundry2').hide();
	     $('.subboundry3').hide();
	     $('.subboundry4').hide();
	     $('.subboundry5').hide();
 	   	
 		getULBListIDnDesc(jsonULBListUrl,"ulbIdDesc");
 		getServiceList(jsonServiceListUrl,"serviceId"); 
 		
 		var servDeschide = $('#servDeschide').val();
 		$('#serviceId option[value="'+servDeschide+'"]').attr('selected',true);
 		$("#setServiceId").val(servDeschide);
 		/*alert("servDeschide----"+servDeschide);*/
 		var servValue = $('#serviceId option[value="'+servDeschide+'"]').text();
 		
 		$('#ulbIdDesc option[value="'+ulbIdHide+'"]').attr('selected',true);	
 		
 		  
 	        
 	        $('.history-btn').click(function(){
 	        	$('.history-tbl').fadeToggle();
 	        });
 	       
                 $('#meterreaddate').datetimepicker(
                 		{
             		format:'DD/MM/YYYY',
             		maxDate: new Date() 
             		});
            
             
                 $('#lastmetercutof').datetimepicker(
                 		{
             		format:'DD/MM/YYYY',
             		maxDate: new Date() 
             		});
             
            
                 $('#meterresto').datetimepicker(
                 		{
             		format:'DD/MM/YYYY',
             		maxDate: new Date() 
             		});
            
                 $('#phycondate').datetimepicker(
                 		{
             		format:'DD/MM/YYYY',
             		maxDate: new Date() 
             		});
                 
 			        
 			        //On check make respective editable
 			        $('#resetCheck').click(function(){
 			        	 if ($(this).is(":checked")) 
 			        	 {
 			        		 $('#meterRestor').attr('readonly', false);
 			        		 $('#meterCutoff').attr('readonly', false);
 			        	 }
 			        	 else
 		        		 {	
 			        		 $('#meterRestor').val("");
 			        		 $('#meterCutoff').val("");
 			        		 
 			        		 $('#meterRestor').attr('readonly', true);
 			        		 $('#meterCutoff').attr('readonly', true);
 		        		 }
 			        });//checkbox click event end
    	 
 			       
 			        
		//On click of Finsih Button
	$('#conNextBtn').click(function()
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
      	 
      	 var connectionType = document.getElementsByName("connectionType")[0].value;
	   		var pipeSize = document.getElementsByName("pipeSize")[0].value;
	   		var IdUsage1 = document.getElementsByName("lookupDetHierIdUsage1")[0].value;
	   		var subUsageId = document.getElementsByName("subUsageId")[0].value;
	   		
	   		var numberOfFamily = document.getElementsByName("numberOfFamily")[0].value;
	   		var numberOfPersons = document.getElementsByName("numberOfPersons")[0].value;
	   		
	   		var prestConNum = $('#prestConNum').val();
      	 
    	    if(modeVorA == 'V')
    	    	{
	    			if(billingIs == 'N')
	    				{
		    				flatNoOwnerBill = $('#flatNoOwnerBill').val();
			    			road_name_Bill = $('#road_name_Bill').val();
			    			districtDropBill = $('#districtDropBill option:selected').val();
			    			talukaDropBill = $('#talukaDropBill option:selected').val();
			    			cityDropBill = $('#cityDropBill option:selected').val();
			    			pincodeBill = $('#pincodeBill').val();
	    				}
	    			
	    			sourceOfWaterId = $('#sourceOfWaterId').val();
	    			reservoirId = $('#reservoirId').val();
	    			waterTreatPlantId = $('#waterTreatPlantId').val();
	    			
	    			$.ajax({
	    				type : "POST",
	    				url : consumerStep2Add,
	    				async : false,
	    				data : "connectionType=" + connectionType
	    					 + "&pipeSize=" + pipeSize
	    					 + "&lookupDetHierIdUsage1=" + IdUsage1
	    					 + "&subUsageId=" + subUsageId
	    					 
	    					 + "&numberOfFamily=" + numberOfFamily
	    					 + "&numberOfPersons=" + numberOfPersons
	    					 
	    					 + "&prestConNum=" + prestConNum 
	    					 
	    					 + "&lookupDetIdDistrictO=" + district
	    					 + "&lookupDetIdTalukaO=" + taluka
	    					 + "&lookupDetIdCityO=" + city
	    					 
	    					 + "&flatNoOwnerBill=" + flatNoOwnerBill
	    					 + "&road_name_Bill=" + road_name_Bill
	    					 + "&districtDropBill=" + districtDropBill
	    					 
	    					 + "&talukaDropBill=" + talukaDropBill
	    					 + "&cityDropBill=" + cityDropBill
	    					 + "&pincodeBill=" + pincodeBill
	    					
	    					 + "&sourceOfWaterId=" + sourceOfWaterId
	    					 + "&reservoirId=" + reservoirId
	    					 + "&waterTreatPlantId=" + waterTreatPlantId
	    					 +"&connectionId=" + lastPK,
	    					 
	    					 
	    				success : function(response) 
	    				{
	    					console.log(response);
	    					var lastPkAddi = $('#lastPk').val();
	        				var firstNameAddi = $('#firstNameAddi').val();
	        				var middleNameAddi = $('#middleNameAddi').val();
	        				var lastNameAddi = $('#lastNameAddi').val();
	        				var mobileNumAddi = $('#mobileNumAddi').val();
	        				var addressAddi = $('#addressAddi').val();
	        				
	        					$.ajax({
	        						type : "POST",
	        						url : additionalOwnTempAdd1,
	        						async:false,
	        						data : "connectionId=" + lastPkAddi
	        								+ "&firstName=" + firstNameAddi
	        								 + "&middleName=" + middleNameAddi
	        								 + "&lastName=" + lastNameAddi
	        								 + "&address=" + addressAddi
	        								 + "&contactNumber=" + mobileNumAddi,
	        								 
	        						success : function(response) 
	        						{
	        							console.log(" additionalOwnTempAdd1 response is "+response);
	        						}
	        					});
	    					window.close();
	    				}
	    			});
	    			
    	    	}
    	    else
    	    	{
			    		 if (parseInt(Ownercount) == 1)
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
			     					 
			     					 $('#lastSrnId').val(data2.srn_id);
			     				
			    			 
			    	 		 //Temporary save details in table for Step 1
			    	        $.ajax({
			    				type : "POST",
			    				url : consumerTempAdd1,
			    				data : "connectionNoOld=" + connectionNoOld
			    					 + "&connectionNo=" + connectionNo
			    					 
			    					 + "&lookupDetIdAdministrativeWard1=" + subboundry1
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
			    					 
			    					 + "&flatNoOwner=" + flatNo
			    					 + "&roadNameOwner=" + roadName
			    					 
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
			    							 
			    							 console.log("Saved lastPk : "+respIds[0]);
			    							 
			    							 //$('#lastSrnId').val(respIds[2]);
			    							 //$('#srnIdAck').val(respIds[2]);
			    							 
			    							
			    						   		
			    						   		/*district = document.getElementsByName("lookupDetIdDistrictO")[0].value;
			    						      	 taluka = document.getElementsByName("lookupDetIdTalukaO")[0].value;
			    						      	 city = document.getElementsByName("lookupDetIdCityO")[0].value;*/
			    						      	 
			    						      	 
			    						   		
			    						   		$.ajax({
			    				    				type : "POST",
			    				    				url : consumerStep2Add,
			    				    				async : false,
			    				    				data : "connectionType=" + connectionType
			    				    					 + "&pipeSize=" + pipeSize
			    				    					 + "&lookupDetHierIdUsage1=" + IdUsage1
			    				    					 + "&subUsageId=" + subUsageId
			    				    					 
			    				    					 + "&noOfTap=" + noOfTap
			    				    					 + "&numberOfPersons=" + numberOfPersons
			    				    					 
			    				    					 + "&prestConNum=" + prestConNum 
			    				    					 
			    				    					 + "&lookupDetIdDistrictO=" + district
			    				    					 + "&lookupDetIdTalukaO=" + taluka
			    				    					 + "&lookupDetIdCityO=" + city
			    				    					 
			    				    					 + "&flatNoOwnerBill=" + flatNoOwnerBill
			    				    					 + "&road_name_Bill=" + road_name_Bill
			    				    					 + "&districtDropBill=" + districtDropBill
			    				    					 
			    				    					 + "&talukaDropBill=" + talukaDropBill
			    				    					 + "&cityDropBill=" + cityDropBill
			    				    					 + "&pincodeBill=" + pincodeBill
			    				    					 
			    				    					 + "&ulbIdHide=" + ulbIdHide
			    				    					 + "&sourceOfWaterId=" + sourceOfWaterId
			    				    					 + "&reservoirId=" + reservoirId
			    				    					 + "&waterTreatPlantId=" + waterTreatPlantId,
			    				    					 
			    				    					 
			    				    				success : function(response) 
			    				    				{
			    				    					console.log("consumerStep2Add response is : "+response);
			    				    					
			    				    					var amt = $('#payAmt').val();
			    				    					
			    				    					console.log("payAmt is : "+amt);
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
			    				    				        		},
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
			 	 		}
    	    		}
			
	 			});
 		}); //Document Ready function Ends 				
		

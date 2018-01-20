
function getULBListIDnDesc(jsonULBListUrl,dropId){
	$.ajax({
        type: "POST",
        url: jsonULBListUrl,
        contentType : "application/json",
        dataType : 'json',
        async: false,
        headers: {
            //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
            "Authorization": "Basic " + btoa("ashok:pass"), 
           // "X-CSRF-Token": csrftoken
            //"USER":btoa(getUserId(storeInvUser)),
           // "BUSID":btoa( getBussId(storeselectInvBusinessId))
        },
        success: function (data){
      //    console.log("VAL: "+data.totalRows);
          var row = 1;
          dataSet = [];
          if(parseInt(data.totalRows) > 0){
       	   var newArray = [];
       	   var totCol = 0;
       	   $.each(data.resultData, function (i, result) {
                  //console.log(" >>> "+result.propertyId);
       		   $("#"+dropId).append($("<option></option>").val(result.id+"|"+result.strId).html(result.desc));
              });
       	  
          }else{
                new PNotify({
                    title: 'Data Not Found.',
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
                    title: 'getULBListIDnDesc Request Not Process... ',
                    styling: 'bootstrap3',
                    type: 'error'
                });
            }
        });
}
function getULBListID(jsonULBListUrl,dropId){
	$.ajax({
        type: "POST",
        url: jsonULBListUrl,
        contentType : "application/json",
        dataType : 'json',
        async: false,
        headers: {
            //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
            "Authorization": "Basic " + btoa("ashok:pass"), 
           // "X-CSRF-Token": csrftoken
            //"USER":btoa(getUserId(storeInvUser)),
           // "BUSID":btoa( getBussId(storeselectInvBusinessId))
        },
        success: function (data){
      //    console.log("VAL: "+data.totalRows);
          var row = 1;
          dataSet = [];
          if(parseInt(data.totalRows) > 0){
       	   var newArray = [];
       	   var totCol = 0;
       	   $.each(data.resultData, function (i, result) {
                  //console.log(" >>> "+result.propertyId);
       		   $("#"+dropId).append($("<option></option>").val(result.id).html(result.desc));
              });
       	  
          }else{
                new PNotify({
                    title: 'Data Not Found.',
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
            }
        });
}

function getULBList(jsonULBListUrl,dropId){
 
	 $.ajax({
        type: "POST",
        url: jsonULBListUrl,
        contentType : "application/json",
        dataType : 'json',
        async: false,
        headers: {
            //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
            "Authorization": "Basic " + btoa("ashok:pass"), 
           // "X-CSRF-Token": csrftoken
            //"USER":btoa(getUserId(storeInvUser)),
           // "BUSID":btoa( getBussId(storeselectInvBusinessId))
        },
        success: function (data){
      //    console.log("VAL: "+data.totalRows);
          var row = 1;
          dataSet = [];
          if(parseInt(data.totalRows) > 0){
       	   var newArray = [];
       	   var totCol = 0;
       	   $.each(data.resultData, function (i, result) {
                  //console.log(" >>> "+result.propertyId);
       		   $("#"+dropId).append($("<option></option>").val(result.strId).html(result.desc));
              });
       	  
          }else{
                new PNotify({
                    title: 'Data Not Found.',
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
            }
        });
	
}

/*-----------------Service list------------------------------*/
function getServiceList(jsonServiceListUrl,dropId){
	 $.ajax({
       type: "POST",
       url: jsonServiceListUrl,
       contentType : "application/json; charset=UTF-8",
       dataType : 'json',
       async: false,
       headers: {
           //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
           "Authorization": "Basic " + btoa("ashok:pass") 
           //"USER":btoa(getUserId(storeInvUser)),
          // "BUSID":btoa( getBussId(storeselectInvBusinessId))
       },
       success: function (data){
         var row = 1;
         dataSet = [];
         if(parseInt(data.totalRows) > 0){
      	   var newArray = [];
      	   var totCol = 0;
      	   $.each(data.resultData, function (i, result) {
      		  // $("#"+dropId).append($("<option></option>").val(result.serviceId).html(result.serviceNameEn));
			   $("#"+dropId).append($("<option></option>").val(result.serviceId).html(result.serviceNameEn +" / "+ result.serviceNameRg +" "));

             });
      	  
         }else{
               new PNotify({
                   title: 'Data Not Found.',
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
                   title: 'getServiceList Request Not Process... ',
                   styling: 'bootstrap3',
                   type: 'error'
               });
           }
       });
	
}



//------------------------ modulelist ------------------

function getModuleList(jsonModuleListUrl,dropId)
{
 
	 $.ajax({
        type: "POST",
        url: jsonModuleListUrl,
        contentType : "application/json",
        dataType : 'json',
        async: false,
        headers: {
            //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
            "Authorization": "Basic " + btoa("ashok:pass"), 
           // "X-CSRF-Token": csrftoken
            //"USER":btoa(getUserId(storeInvUser)),
           // "BUSID":btoa( getBussId(storeselectInvBusinessId))
        },
        success: function (data){
      //    console.log("VAL: "+data.totalRows);
          var row = 1; 
          moduleMap = [];
          if(parseInt(data.totalRows) > 0)
          {
       	   var newArray = [];
       	   var totCol = 0;
       	   $.each(data.resultData, function (i, result) 
       		{
                  //console.log(" >>> "+result.propertyId);
       		   moduleMap.push(result);
       		   $("#"+dropId).append($("<option></option>").val(result.modId).html(result.modNameEn));
              });
       	  
          }else{
                new PNotify({
                    title: 'Data Not Found.',
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
            }
        });
	
}


//------------------------ lookupcode list ------------------

function getLookupCodeList(jsonLookupCodeListUrl,dropId)
{ 
	var dataVar = {"lookupCode": 'GEN'};
	 $.ajax({
        type: "POST",
        url: jsonLookupCodeListUrl,
        contentType : "application/json",
        dataType : 'json',
        data  : JSON.stringify({}),
        async: false,
        headers: 
        {
            //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
            "Authorization": "Basic " + btoa("ashok:pass"), 
           // "X-CSRF-Token": csrftoken
            //"USER":btoa(getUserId(storeInvUser)),
           // "BUSID":btoa( getBussId(storeselectInvBusinessId))
        },
        success: function (data)
        {
          var row = 1;         
          if(parseInt(data.totalRows) > 0)
          {
	       	   var newArray = [];
	       	   var totCol = 0;
	       	   $.each(data.resultData, function (i, result) 
	       		{
	                  //console.log(" >>> "+result.propertyId);
	       		   $("#"+dropId).append($("<option></option>").val(result.lookupId).html(result.lookupCode+"-"+result.lookupDescEn));
	            });
       	  
          }
          else
          {
                new PNotify({
                    title: 'Data Not Found.',
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
            }
        });
	
}
function getServices(jsonServiceListUrl){
	 $.ajax({
      type: "POST",
      url: jsonServiceListUrl,
      contentType : "application/json",
      dataType : 'json',
      async: false,
      headers: {
          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
          "Authorization": "Basic " + btoa("ashok:pass") 
          //"USER":btoa(getUserId(storeInvUser)),
         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
      },
      success: function (data){
    	  console.log(data);
        var row = 1;
        dataSet = [];
        if(parseInt(data.totalRows) > 0){
     	   var newArray = [];
     	   var totCol = 0;
     	   $.each(data.resultData, function (i, result) {
     		   $("#serId").append($("<option></option>").val(result.serviceId+","+result.modId).html(result.serviceNameEn));
     		  $("#serachService").append($("<option></option>").val(result.serviceId+","+result.modId).html(result.serviceNameEn));
     		  var serviceId = result.serviceId;
     		 var DeptId = result.modId;
     		 var serviceName = result.serviceNameEn;
     		searchServiceId.push(serviceId);
     		searchServiceName.push(serviceName);
     		searchDeptId.push(DeptId);
            });
     	  
        }else{
              new PNotify({
                  title: 'Data Not Found.',
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
          }
      });
}

function getDepartment(jsonDepartmentListUrl){
	 $.ajax({
     type: "POST",
     url: jsonDepartmentListUrl,
     contentType : "application/json",
     dataType : 'json',
     async: false,
     headers: {
         //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
         "Authorization": "Basic " + btoa("ashok:pass") 
         //"USER":btoa(getUserId(storeInvUser)),
        // "BUSID":btoa( getBussId(storeselectInvBusinessId))
     },
     success: function (data){
   	  console.log(data);
       var row = 1;
       dataSet = [];
       if(parseInt(data.totalRows) > 0){
    	   var newArray = [];
    	   var totCol = 0;
    	   $.each(data.resultData, function (i, result) {
    		   //$("#serId").append($("<option></option>").val(result.serviceId+","+result.DeptId.modId).html(result.servicNameRg));
    		   var deptId = result.depId;
    		   deptIDList.push(deptId)
    		 var departmentName = result.depNameEn;
    		 SearchDeptName.push(departmentName);
    		 var deptCode = result.depCode;
    		 searchDeptCode.push(deptCode);
           });
    	  
       }else{
             new PNotify({
                 title: 'Data Not Found.',
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
         }
     });
}




//------service list mod code wise-----------
function getServiceListSearch(jsonServiceListUrl,dropId,shortCode, type) 
{
	var data = {"modCode":shortCode, "type" : type};
	$.ajax({
		type : "POST",
		url : jsonServiceListUrl,
		contentType : "application/json",
		dataType : 'json',
		data : JSON.stringify(data),
		async : false,
		headers : {
			//"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			"Authorization" : "Basic " + btoa("ashok:pass")
		//"USER":btoa(getUserId(storeInvUser)),
		// "BUSID":btoa( getBussId(storeselectInvBusinessId))
		},
		success : function(data) 
		{
			var row = 1;
			serviceMap = [];
			if (parseInt(data.totalRows) > 0) 
			{
				$("#"+dropId).empty();
				$("#"+dropId).append($("<option></option>").val(0).html("Select Service"));	
				
				$.each(data.resultData, function (i, result) 
				{					
					$("#"+dropId).append($("<option></option>").val(result.serviceId).html(result.serviceNameEn));	
				});
				
			} 
			else 
			{
				new PNotify({
					title : 'Data Not Found.',
					styling : 'bootstrap3',
					type : 'error'
				});
			}
		},
		statusCode : 
		{
			403 : function() 
			{
				new PNotify({
					title : 'Session Expire. Please Re-Login...',
					styling : 'bootstrap3',
					type : 'error'
				});
				setTimeout(function() {
					window.location.href = "/";
				}, 2000);
			}
		},
		error : function(e) 
		{				
			new PNotify({
				title : 'Request Not Process... ',
				styling : 'bootstrap3',
				type : 'error'
			});
		}
	});
}



	 



function getULBNocChargesList(jsonsearchNocChargesUrl,payAmt)
{

		var ulbId = $("#ulbIdDesc").val().split("|");
		
  		var datavar = {"serviceId":$("#setServiceId").val(),"ulb_id":ulbId[0]};	 
		
   	    console.log("jsonsearchNocChargesUrl"+jsonsearchNocChargesUrl)  
   	       		
   	        $.ajax({
   	       		
   	 			type : "POST",
   	 			url : jsonsearchNocChargesUrl,
   	 			contentType: "application/json; charset=UTF-8",
   	 			dataType : 'json',
   	 			data : JSON.stringify(datavar),
   	 			
   	 			success : function(data1) { 
   	 		     
   	 				alert("charges checked for Noc");
   	 				$("#payAmt").val(data1.resultData[0].chargesAmt);
   	 				$("#chargeId").val(data1.resultData[0].chargeId);
   	 				
   	 			    $("#charges-details").show();
   	 				
   	 			} 
   	        
   	        }); 

	}


function getBusinessTypeData()
{
/* Prefix code for Status */
$.ajax({
	      type: "GET",
	      url: jsonLookupUrl,
	      contentType : "application/json",
	      //dataType : 'json',
	      //data : JSON.stringify(finalObj),
	      async: false,
	      headers: {
	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
	          "Authorization": "Basic " + btoa("ashok:pass") 
	          //"USER":btoa(getUserId(storeInvUser)),
	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
	      },
	      success: function (data){
	    	  //alert("data : "+data.toString())
	      		//console.log(JSON.stringify(data));
	    	  
	      	  $.each(data.resultData, function (i, result) {
      		      
	      		if(result.lookupCode == "BST") 
      		   {
      			 lookupId=result.lookupId;
      			lookupCode=result.lookupCode;
      			
      			 $.ajax({
      	     	      type: "POST",
      	     	      url: jsonLookupDetUrl,
      	     	      contentType : "application/json",
      	     	      dataType : 'json',
      	     	      //data : "deptId="+aaa,
      	     	      async: false,
      	     	      headers: {
      	     	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
      	     	          "Authorization": "Basic " + btoa("ashok:pass") 
      	     	          //"USER":btoa(getUserId(storeInvUser)),
      	     	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
      	     	      },
      	     	      success: function (data){
      	     	    	
      	     	    	var lookupDetId;
      	     	     $("#businessType").empty();
      					$("#businessType").append(
      							$("<option></option>").attr("value", '0').text(
      									'Please select'));
      	     	    	$.each(data.resultData, function (i, result) {

      	     	    		if(lookupId == result.lookupId){
    				      	     	    			
    				      	     	    			$("#businessType").append(
    				      	    							$("<option></option>").attr("value",
    				      	    									result.lookupDetId).text(
    				      	    									result.lookupDetDescEn));
    				      	     	    		}
    				      	     	    		}); 
    			      	     	    		
    			      	     	      
    			      	     	      }
    			      	              });

    	     	    		}
      	     	    	});
      		   	         
      		   	      },



      		   	      
 });    
}

/*function getULBbusinessTypesList(jsonULBbusinessTypeListUrl,businessType){
	 $.ajax({
     type: "POST",
     url: jsonULBbusinessTypeListUrl,
     contentType : "application/json",
     dataType : 'json',
     async: false,
    
     success: function (data){
       var row = 1;
       dataSet = [];
       if(parseInt(data.totalRows) > 0){
    	   var newArray = [];
    	   var totCol = 0;
    	   $.each(data.resultData, function (i, result) {
    		   $("#"+businessType).append($("<option></option>").val(result.id).html(result.desc));
           });
    	  
       }else{
             new PNotify({
                 title: 'Data Not Available',
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
         }
     });
	
}
*/

	/* function getServicesBySearch(jsonServiceListUrl){
		 $.ajax({
	      type: "POST",
	      url: jsonServiceListUrl,
	      contentType : "application/json",
	      dataType : 'json',
	      async: false,
	      headers: {
	          //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
	          "Authorization": "Basic " + btoa("ashok:pass") 
	          //"USER":btoa(getUserId(storeInvUser)),
	         // "BUSID":btoa( getBussId(storeselectInvBusinessId))
	      },
	      success: function (data){
	    	  console.log(data);
	        var row = 1;
	        dataSet = [];
	        if(parseInt(data.totalRows) > 0){
	     	   var newArray = [];
	     	   var totCol = 0;
	     	   $.each(data.resultData, function (i, result) {
	     		   $(".serId").append($("<option></option>").val(result.serviceId+","+result.DeptId.modId).html(result.servicNameRg));
	            });
	     	  
	        }else{
	              new PNotify({
	                  title: 'Data Not Found.',
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
	          }
	      });
	 }*/
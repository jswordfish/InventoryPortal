/*
 * 
 * @Author Ketan Gaonkar
 * @Date : 14/11/2017 * 
 * @Desc: Used for LookupMaster
 */

$(document).ready(function() 
{	
	getModuleList(jsonModuleListUrl,"modId");
	getModuleList(jsonModuleListUrl,"modId0");
	searchData(JSON.stringify( {"modId" : "0"}));
	
	
	 $("input[name='hierarchical']").change(function()
		{	              
		            if($(this).val() == "N")
	        	  	{
		            	$("#hierarchicalNoLevel0").val('0');
		            	$("#hierarchicalNoLevel0").prop("readonly", true)
	        	  	}
		            if($(this).val() == "Y")
		            {
		            	$("#hierarchicalNoLevel0").val('');
		            	$("#hierarchicalNoLevel0").prop("readonly", false)
		            }
		            
		});
	
	$("#btnReset").click(function() 
	{
		$("#lookupmaster tbody").empty();
		$("#lookupmaster tbody").append('<tr><td colspan="7">Data not found.</td></tr>');
		
	});
	$("#addBtn").click(function() 
	{
		//$("#saveUpdate-Form").reset();
		document.getElementById("saveUpdate-Form").reset();
		
		$("#btnUpdate").hide();
		$("#btnSave").show();
		$("#lookupCode0").prop("readonly", false);
		/*$('#status').removeAttr('checked');
		$('#status').removeAttr('checked');
		$('#status').removeAttr('checked');
		$('#status').removeAttr('checked');*/
	});
	//-----------searchBtn start----------
	$("#searchBtn").click(function() 
	{
		if(search_validations())
		{
			var formData = $("#searchLookup-form").serializeObject();
			var json_string = JSON.stringify(formData);
			var finalArry = removeEmptyValueFromJSON(json_string);
			searchData(finalArry);
		}
		
	});//searchBtn end
	
	//-------update strat---------------- 
	
		$("#btnUpdate").click(function() 
		{
			if(add_validations())
			{
			var formData = $("#saveUpdate-Form").serializeObject();
			var json_string = JSON.stringify(formData);
			var finalArry = removeEmptyValueFromJSON(json_string);
			
			//ajax start
			
			 $.ajax({
			       type: "POST",
			       url: jsonUpdateMasterListUrl,
			       contentType : "application/json",
			       dataType : 'json',
			       data : finalArry,
			       async: false,
			       headers: 
			       {
			           //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			           "Authorization": "Basic " + btoa("ashok:pass") 
			           //"USER":btoa(getUserId(storeInvUser)),
			          // "BUSID":btoa( getBussId(storeselectInvBusinessId))
			       },
			       success: function (data)
			       {
			         var row = 1;
			         dataSet = [];
			         //console.log("success------"+data.totalRows);
			         
			         $("#actionModal").modal('hide');
			         
			       },
			       statusCode: 
			       {
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
			       error : function(e) 
			       {
			                 console.log("ERROR: ", e.responseText);
			                 console.log("ERROR: ", e);
			               //	display(e);
			           new PNotify({
			                   title: 'Request Not Process. ',
			                   styling: 'bootstrap3',
			                   type: 'error'
			               });
			         }
			       });
			
			//ajax end
			 
			}//end if 
		});
	 //-------update end
		
		//-------save strat---------------- 
		
		$("#btnSave").click(function() 
		{
			if(add_validations())
			{
					var formData = $("#saveUpdate-Form").serializeObject();
				var json_string = JSON.stringify(formData);
				var finalArry = removeEmptyValueFromJSON(json_string);
				
				//ajax start
				
				$.ajax({
					type: "POST",
					url: jsonSaveMasterListUrl,
					contentType : "application/json",
					dataType : 'json',
					data : finalArry,
					async: false,
					headers: 
					{
						//"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
						"Authorization": "Basic " + btoa("ashok:pass") 
						//"USER":btoa(getUserId(storeInvUser)),
						// "BUSID":btoa( getBussId(storeselectInvBusinessId))
					},
					success: function (data)
					{
						var row = 1;
						dataSet = [];
						//console.log("success------"+data.totalRows);
						PNotify.removeAll();
						new PNotify({
							title: 'Data save successfully',
							styling: 'bootstrap3',
							type: 'success'
						});
						$("#actionModal").modal('hide');
						
					},
					statusCode: 
					{
						403: function() {
							new PNotify({
								title: 'Sessfunctionion Expire. Please Re-Login...',
								styling: 'bootstrap3',
								type: 'error'
							});
							setTimeout(function(){
								window.location.href="/"; 
							}, 2000);
						}
					},
					error : function(e) 
					{			
						new PNotify({
							title: 'Request Not Process... ',
							styling: 'bootstrap3',
							type: 'error'
						});
					}
				});
				
				//ajax end
				
			}//end if
				});
		//-------save end
	//-----checking duplicate record--------
		
		$("#lookupCode0").change(function()
		{
			
			$.ajax({
		        type : "POST",
		        url : jsonchkDuplicateLookupUrl,
		       // contentType: "application/json; charset=UTF-8",
		       // datatype: 'json',
		        data : "lookupCode="+$("#lookupCode0").val(),
		        async : false,
		        cache: false,
		        success : function(data)
		        {		        	
		        		if(data == "duplicate")
		        		{
		        			// alert("Lookup code already exist");
		        			 new PNotify({
									title: 'Lookupcode already exist.',
									styling: 'bootstrap3',
									type: 'error'
								});
		        			 $("#lookupCode0").val('');
		        		}	    	
		                
		        } ,
		        error : function(request, status, error)
		        {
		                 //console.log("error "+request);
		                // console.log("error "+error);
		        }
		        
			});
		});
		//-----checking duplicate record--------
	
});//end document.ready

//--------- edit master -----

function editMaster(lookupId)
{
	 $("#lookupCode0").prop("readonly", true);
	$("#lookupCode0").val($("#lookupCode"+lookupId).val());
	$("#lookupDescEn0").val($("#lookupDescEn"+lookupId).val());
	$("#lookupDescRg0").val($("#lookupDescRg"+lookupId).val());
	$("#modId0").val($("#modId"+lookupId).val());
	
	
	$("#lookupId").val($("#lookupId"+lookupId).val());
	
	if($("#hierarchicalNoLevel"+lookupId).val() != 'undefined')
		$("#hierarchicalNoLevel0").val($("#hierarchicalNoLevel"+lookupId).val());
	else
		$("#hierarchicalNoLevel0").val(0);
	
	if($("#hierarchical"+lookupId).val() == "Y")
	{
		$("#hierarchicalNoLevel0").prop("readonly", false);
	}
	else
		{
		$("#hierarchicalNoLevel0").prop("readonly", true);
		}
	
	
	checkRadio("saveUpdate-Form","hierarchical",$("#hierarchical"+lookupId).val());
	checkRadio("saveUpdate-Form","lookupAddFlag",$("#lookupAddFlag"+lookupId).val());
	checkRadio("saveUpdate-Form","lookupEditFlag",$("#lookupEditFlag"+lookupId).val());
	checkRadio("saveUpdate-Form","flagStateUlb",$("#flagStateUlb"+lookupId).val());
	checkCheckbox("saveUpdate-Form","lookupStatus",$("#lookupStatus"+lookupId).val());
	$("#btnUpdate").show();
	$("#btnSave").hide();
	$("#actionModal").modal('show');
}

function checkRadio(formName, chkbox,chkval)
{
	$("#"+formName+" input[name='"+chkbox+"']").each( function()
	{ 
		if(chkval == $(this).val())
			{
				$(this).attr('checked', 'checked');
			}
	});
}
function checkCheckbox(formName, chkbox,chkval)
{
	$("#"+formName+" input[name='"+chkbox+"']").each( function()
	{ 
		if(chkval == "1")
		{
			$(this).attr('checked', 'checked');
		}
		else
			$(this).attr('checked', false);
			
	});
}

//--------- delete master-----
function deleteMaster(lookupId)
{
	
	   
	   $.ajax({
        type : "POST",
        url : jsonDeleteMasterListUrl,
       // contentType: "application/json; charset=UTF-8",
       // datatype: 'json',
        data : "lookupId="+lookupId,
        async : false,
        cache: false,
        success : function(data)
        {	
        	 $("#statusChk"+lookupId).prop("checked",false);
    		 new PNotify({
                   title: data,
                   styling: 'bootstrap3',
                   type: 'success'
               });
        	/*var dataArr = dataSet;
        	var newArray = [];
        	dataSet = [];
        	 $.each(dataArr, function (i, result) 
  		     {
        		
        		 newArray = [];
        		if(result[7] == lookupId)
        		{
        			 //continue;
        		}
        		else
        		{
        			dataSet.push(result);
        		}
        		 
  		     });
        	
        	setDataTable();*/
        	//alert(data);
            	//window.location.href = "${waterDemandCollectionUrl}";
                
        } ,
        error : function(request, status, error) {
                 //console.log("error "+request);
                // console.log("error "+error);
        } 
}); 

	
}
//set data table for water
function setDataTable() 
{
	var oTable = $('#lookupmaster').DataTable({
		responsive : true,
		data : dataSet,
		select : true,
		"paging" : true,
		"bDestroy" : true
	});
}

//Remove empty string JSON getAPIKey

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


function searchData(finalArry)
{
	//ajax start
	
	 $.ajax({
	       type: "POST",
	       url: jsonSearchMasterListUrl,
	       contentType : "application/json",
	       dataType : 'json',
	       data : finalArry,
	       async: false,
	       headers: 
	       {
	           //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
	           "Authorization": "Basic " + btoa("ashok:pass") 
	           //"USER":btoa(getUserId(storeInvUser)),
	          // "BUSID":btoa( getBussId(storeselectInvBusinessId))
	       },
	       success: function (data){
	         var row = 1;
	        
	         dataSet = [];
	         console.log("success------"+data.totalRows);
	         if(parseInt(data.totalRows) > 0)
	         {
	        	var row = 1;
            var count = 1;
	      	   	var newArray = [];
	      	   	var checked, defaultVal;
	      	   $.each(data.resultData, function (i, result) 
	      	   {
	      		 checked = "";
	      		count = 1;
        		 if(result.lookupStatus == 1)
        		 {
        			  checked = "checked='checked'"
        		 }
	      		   newArray = [];						
					var hd_field = '<input type="hidden" id="lookupId'+result.lookupId+'" value="'+result.lookupId+'">';
					hd_field = hd_field+ '<input type="hidden" id="lookupCode'+result.lookupId+'" value="'+result.lookupCode+'">';
					hd_field = hd_field+ '<input type="hidden" id="lookupDescEn'+result.lookupId+'" value="'+result.lookupDescEn+'">';
					hd_field = hd_field+ '<input type="hidden" id="lookupDescRg'+result.lookupId+'" value="'+result.lookupDescRg+'">';
					hd_field = hd_field+ '<input type="hidden" id="hierarchical'+result.lookupId+'" value="'+result.hierarchical+'">';
					hd_field = hd_field+ '<input type="hidden" id="lookupAddFlag'+result.lookupId+'" value="'+result.lookupAddFlag+'">';
					hd_field = hd_field+ '<input type="hidden" id="lookupEditFlag'+result.lookupId+'" value="'+result.lookupEditFlag+'">';
					hd_field = hd_field+ '<input type="hidden" id="flagStateUlb'+result.lookupId+'" value="'+result.flagStateUlb+'">';
					hd_field = hd_field+ '<input type="hidden" id="lookupStatus'+result.lookupId+'" value="'+result.lookupStatus+'">';
					hd_field = hd_field+ '<input type="hidden" id="modId'+result.lookupId+'" value="'+result.modId+'">';
					hd_field = hd_field+ '<input type="hidden" id="hierarchicalNoLevel'+result.lookupId+'" value="'+result.hierarchicalNoLevel+'">';
					newArray.push(row+ hd_field);		

					newArray.push(result.lookupCode);
					newArray.push(result.lookupDescEn);
					newArray.push(result.lookupDescRg);
					$.each(moduleMap, function (i, mod) 
					{
						if(mod.modId == result.modId)
						{
							newArray.push(mod.modNameEn);
							count = 0;
						}
					});
					if(count == 1)
						newArray.push("NA");
					//newArray.push(result.lookupStatus);
					newArray.push("<input type='checkbox' id='statusChk"+result.lookupId+"' "+checked+" disabled='disabled'>");
					//newArray.push("<a href='#' onClick='javascript:showWaterAppModal("+ result.connectionId+ ");'>"+ result.connectionNo+ "</a>");
					newArray.push("<a href='#' onClick='javascript:editMaster("+ result.lookupId+ ");'><i class='fa fa-edit'></i></a> / <a href='#' onClick='javascript:deleteMaster("+ result.lookupId+ ");'><i class='fa fa-trash' aria-hidden='true'></i></a>");
					dataSet.push(newArray);
					row++;
	           });
	      	   setDataTable();
	      	  
	         }
	         else
	         {
	        	 $("#lookupmaster tbody").empty();
	     		$("#lookupmaster tbody").append('<tr><td colspan="7"> Data not found</td></tr>');
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
	
	//ajax end
	 
	 

}
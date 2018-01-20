/*
 * 
 * @Author Ketan Gaonkar
 * @Date : 16/11/2017 * 
 * @Desc: Used for LookupMasterDetails
 */

$(document).ready(function() 
{
	getLookupCodeList(jsonLookupCodeListUrl,"lookupId");
	getLookupCodeList(jsonLookupCodeListUrl,"lookupId0");
	getModuleList(jsonModuleListUrl,"modId");
	//getModuleList(jsonModuleListUrl,"modId0");
	
	var rows = "";
	var row=0;
	
	
	$("#addBtn").click(function() 
	{
		 $("#btnSave").show();
		 $("#btnUpdate").hide();
		 $("#btnAdd").show();
		 $("#btnRemove").show();
		 $("#lookupId0").val(0);
		 $("#modId0").val('');
		 
		 $("#addlookupmasterdetails tbody").empty();
		 $("#addlookupmasterdetails tbody").append('<tr><td colspan="7"> <center><p> Please select lookup code</p></center></tr>');
	});
	
	//-----------searchBtn start----------
	$("#searchBtn").click(function() 
	{
		var formData = $("#searchLookupDet-form").serializeObject();
		var json_string = JSON.stringify(formData);
		var finalArry = removeEmptyValueFromJSON(json_string);
		
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
		       success: function (data)
		       {
		         var row = 1;
		         dataSet = [];
		         console.log("success------"+data.totalRows);
		         if(parseInt(data.totalRows) > 0)
		         {
		        	var row = 1;
		      	   	var newArray = [];
		      	   	var totCol = 0;
		      	   $.each(data.resultData, function (i, result) 
		      	   {
		      		   	newArray = [];						
						var hd_field = '<input type="hidden" id="lookupId'+result.lookupId+'" value="'+result.lookupId+'">';
						hd_field = hd_field+ '<input type="hidden" id="lookupDescEn'+result.lookupId+'" value="'+result.lookupDescEn+'">';
						hd_field = hd_field+ '<input type="hidden" id="lookupDescRg'+result.lookupId+'" value="'+result.lookupDescRg+'">';
						hd_field = hd_field+ '<input type="hidden" id="hierarchical'+result.lookupId+'" value="'+result.hierarchical+'">';
						hd_field = hd_field+ '<input type="hidden" id="lookupEditFlag'+result.lookupId+'" value="'+result.lookupEditFlag+'">';
						hd_field = hd_field+ '<input type="hidden" id="lookupCode'+result.lookupId+'" value="'+result.lookupCode+'">';
						hd_field = hd_field+ '<input type="hidden" id="modId'+result.lookupId+'" value="'+result.modId+'">';
						newArray.push(row+ hd_field);	
						newArray.push(result.lookupCode);
						newArray.push(result.lookupDescEn);
						newArray.push(result.lookupDescRg);
						$.each(moduleMap, function (i, mod) 
						{
							if(mod.modId == result.modId)
							newArray.push(mod.modNameEn);	
						});
						//newArray.push(result.lookupStatus);
						newArray.push("<a href='#' onClick='javascript:editMaster("+ result.lookupId+ ");'><i class='fa fa-edit'></i></a> / <a href='#' onClick='javascript:viewMaster("+ result.lookupId+ ");'><i class='fa fa-eye' aria-hidden='true'></i></a>");
						dataSet.push(newArray);
						row++;
		           });
		      	   setDataTable();
		      	  
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
		
		//ajax end
		 
		 
	});//searchBtn end
	
	
	
	
	//-------update strat---------------- 
	
	$("#btnUpdate").click(function() 
	{
		var formData = $("#saveUpdate-Form").serializeObject();
		var json_string = JSON.stringify(formData);
		var finalArry = removeEmptyValueFromJSON(json_string);
		
		//ajax start
		
		 $.ajax({
		       type: "POST",
		       url: jsonUpdateLookupDetailsUrl,
		       contentType : "application/json",
		       //dataType : 'json',
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
		         //console.log("success------"+data.totalRows);
		         new PNotify({
	                   title: 'Data Update Successfully',
	                   styling: 'bootstrap3',
	                   type: 'success'
	               });
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
		 
		 
	});
 //-------update end

	//-----on change of lookupId0----
	$("#lookupId0").change(function() 
	{
		
		 $.ajax({
		        type : "POST",
		        url : jsonSearchMasterListUrl,
		        contentType: "application/json; charset=UTF-8",
		        datatype: 'json',
		        data : JSON.stringify({"lookupId" : $("#lookupId0").val(),"modId" : "0"}),
		        async : false,
		        cache: false,
		        success : function(data)
		        {		        	
		        	var newArray = [];
		        	dataSetView = [];
		        	row = 1;
		        	$('#addlookupmasterdetails th:nth-child(7)').show();
		        	$("#addlookupmasterdetails tbody").empty();
		        	$("#flagStateUlb").val(data.resultData[0].flagStateUlb);
		        	$("#hierarchical").val(data.resultData[0].hierarchical);
		        	$.each(moduleMap, function (i, mod) 
							{
								if(mod.modId == data.resultData[0].modId)
								$("#modId0").val(mod.modNameEn);
							});
		        	
		        	
		        	
		        		 //console.log("data.resultData[0].hierarchical---"+data.resultData[0].hierarchical)
		        		if(data.resultData[0].hierarchical == "Y" )
		        		{
		        			
		        			if(data.resultData[0].lookupAddFlag == "Y")
		        			{
			        			for(var i=1;i<= data.resultData[0].hierarchicalNoLevel;i++)
			        			{
				        			 rows = '<tr role="row" class="odd"> <td class="sorting_1"><input type="text" class="form-control" value="'+i+'" readonly="readonly" name="lookupDetParentLevel"></td> <td><input type="text" class="form-control" name="lookupDetDescEn"> </td> <td><input type="text" class="form-control" name="lookupDetDescRg"></td> <td><input type="text" class="form-control" name="lookupDetValue"></td> <td><input type="text" class="form-control" name="lookupDetOthers"></td> <td><input type="hidden" class="lookupDetDefault" id="lookupDetDefault'+i+'" name="lookupDetDefault" value="N"> <input type="checkbox" value="N" class="defaultClass"  id="'+i+'"></td> <td><input type="text" class="form-control" readonly="readonly" name="parentName"> </td> </tr>';
				        			 $("#addlookupmasterdetails	 tbody").append(rows);
			        			}
			        			 $("#btnAdd").hide();
		        			}
		        			else
		        			{
		        				PNotify.removeAll();
		        				new PNotify({
		    						title: 'You do not have access to add',
		    						styling: 'bootstrap3',
		    						type: 'error'
		    					});
		        			}
		        		}
		        		else
		        		{
		        			if(data.resultData[0].lookupAddFlag == "Y")
		        			{
		        				rows = '<tr role="row" class="odd"> <td class="sorting_1"><input type="text" class="form-control" value="'+row+'" readonly="readonly" name="lookupDetParentLevel"></td> <td><input type="text" class="form-control" name="lookupDetDescEn"> </td> <td><input type="text" class="form-control" name="lookupDetDescRg"></td> <td><input type="text" class="form-control" name="lookupDetValue"></td> <td><input type="text" class="form-control" name="lookupDetOthers"></td> <td><input type="hidden" class="lookupDetDefault" id="lookupDetDefault'+row+'" name="lookupDetDefault" value="N"> <input type="checkbox" value="N" class="defaultClass"  id="'+row+'"></td> </tr>';
			        			$("#addlookupmasterdetails	 tbody").append(rows);
			        			$('#addlookupmasterdetails th:nth-child(7)').hide();
			        			$("#btnAdd").show();
		        			}
		        			else
		        			{
		        				PNotify.removeAll();
		        				new PNotify({
		    						title: 'You do not have access to add',
		    						styling: 'bootstrap3',
		    						type: 'error'
		    					});
		        				 	$("#btnAdd").hide();
		        			}
		        		}
		        		 
		        		
		        		
		        		 
		        		$(".defaultClass").change(function()
			        	{  		        			
			    		        			 var id = $(this).attr("id");
			    		        			 $(this).val("Y");
			    		        			 $('.defaultClass').not(this).prop('checked', false); 		        					
			    		        			 defaultCheckBox("lookupDetDefault",id);
			    		});
		        		
		        			
		        } ,
		        error : function(request, status, error) {
		                 //console.log("error "+request);
		                // console.log("error "+error);
		        } 
		 });
		
	});
	
	function addTableRow(tableId, rowCount)
	{
		
			rows = '<tr role="row" class="odd"> <td class="sorting_1"><input type="text" class="form-control" value="'+rowCount+'" readonly="readonly" name="lookupDetParentLevel"></td> <td><input type="text" class="form-control" name="lookupDetDescEn"> </td> <td><input type="text" class="form-control" name="lookupDetDescRg"></td> <td><input type="text" class="form-control" name="lookupDetValue"></td> <td><input type="text" class="form-control" name="lookupDetOthers"></td> <td><input type="hidden" class="lookupDetDefault" id="lookupDetDefault'+rowCount+'" name="lookupDetDefault" value="N"> <input type="checkbox" value="N" class="defaultClass"  id="'+rowCount+'"></td> </tr>';
			$("#"+tableId+" tbody").append(rows);
		
	}

	$("#btnAdd").click(function()
    		{
    			row++;
    			addTableRow("addlookupmasterdetails", row);
    			 $(".defaultClass").change(function()
    			 {  	  			
        			 var id = $(this).attr("id");
        			 $(this).val("Y");
        			 $('.defaultClass').not(this).prop('checked', false); 		        					
        			 defaultCheckBox("lookupDetDefault",id);
		        });
    			 
    		});


	//----------save----
	
	$("#btnSave").click(function() 
	{
		if(add_validations())
		{	
		var formData = $("#saveUpdate-Form").serializeObject();
		var json_string = JSON.stringify(formData);
		var finalArry = removeEmptyValueFromJSON(json_string);
		console.log(finalArry);
		//ajax start
		
		$.ajax({
			type: "POST",
			url: jsonSaveMasterDetListUrl,
			contentType : "application/json",
			//dataType : 'json',
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
				$("#addUpdateModal").modal('hide');
				new PNotify({
					title: 'Data save successfully',
					styling: 'bootstrap3',
					type: 'success'
				});
/*				$("#actionModal").modal('hide');
				new PNotify({
					title: 'Request Not Process... ',
					styling: 'bootstrap3',
					type: 'error'
				});
*/			}
		});
		
		//ajax end
		
		}//if end
			});
	//-------save end
	
});
//-----end document----


//--------- edit master -----

function editMaster(lookupId)
{
	if($("#lookupEditFlag"+lookupId).val().trim()=="Y")
	{
		alert("working");
		$("#modId0").val($("#modId"+lookupId).val());
		$("#lookupId").val($("#lookupId"+lookupId).val());
		$("#addlookupmasterdetails tbody").empty();
		//fetch update ajax start
		var checked, defaultVal;
		 $.ajax({
		        type : "POST",
		        url : jsonViewMasterDetListUrl,
		        contentType: "application/json; charset=UTF-8",
		        datatype: 'json',
		        data : JSON.stringify({"lookupId" : lookupId}),
		        async : false,
		        cache: false,
		        success : function(data)
		        {        	
		        	 $.each(data.resultData, function (i, result) 
		  		     {
		        		 checked = "";
		        		 defaultVal = "N"
		        		 if(result.lookupDetDefault.trim() == "Y")
		        		 {
		        			  checked = "checked='checked'"
		        			  defaultVal= "Y"
		        		 }
		        		
		        		 var rows = '<tr role="row" class="odd"> <td class="sorting_1"><input type="hidden" value="'+result.lookupDetId+'" name="lookupDetId"><input type="text" class="form-control" value="'+result.lookupDetParentLevel+'" readonly="readonly" name="lookupDetParentLevel"></td> <td><input type="text" class="form-control" name="lookupDetDescEn" value="'+result.lookupDetDescEn+'"> </td> <td><input type="text" class="form-control" name="lookupDetDescRg" value="'+result.lookupDetDescRg+'"></td> <td><input type="text" class="form-control" name="lookupDetValue" value="'+result.lookupDetValue+'"></td> <td><input type="text" class="form-control" name="lookupDetOthers" value="'+result.lookupDetOthers+'"></td> <td><input type="hidden" class="lookupDetDefault" id="lookupDetDefault'+i+'" name="lookupDetDefault" value="'+defaultVal+'"> <input type="checkbox" value="'+defaultVal+'" class="defaultClass"  id="'+i+'" '+checked+'></td> <td><input type="text" class="form-control" readonly="readonly" name="parentName"> </td> </tr>';
	        			 $("#addlookupmasterdetails	 tbody").append(rows);	
	        			 
	        			 $(".defaultClass").change(function()
	     			     {  		        			
		        			 var id = $(this).attr("id");
		        			 $(this).val("Y");
		        			 $('.defaultClass').not(this).prop('checked', false); 		        					
		        			 defaultCheckBox("lookupDetDefault",id);
	     			    });
		        		 
		  		     });
		                
		        },
		        error : function(request, status, error) 
		        {
		                 //console.log("error "+request);
		                // console.log("error "+error);
		        } 
		 });
		//ajax end
		 
		
		 $(".btn-primary").show();
		 
		 $("#btnSave").hide();
		 $("#btnUpdate").show();
		 $("#btnAdd").hide();
		 $("#btnRemove").hide();
		 $("#addUpdateModal").modal('show');
		 
		 
	}
	else
	{
		new PNotify({
            title: 'Not access to edit ',
            styling: 'bootstrap3',
            type: 'error'
        });
		viewMaster(lookupId);
		
	}
}


//end edit
function checkCheckbox(id)
{
	
	alert("abc"+id);
	 $("input[name='lookupDetDefault']").each( function()
	  { 
 			 alert(id);
 			 alert($(this).attr("id"));
 			 if($(this).attr("id") != id)
     			{
 				 				alert(id);
 				 				$(this).val("N");
     							$(this).attr('checked', false);
     						}
     						
						});
}

//--------- view master -----

function viewMaster(lookupId)
{
	
	$("#lookupIdView").val($("#lookupCode"+lookupId).val()+"-"+$("#lookupDescEn"+lookupId).val());
	$.each(moduleMap, function (i, mod) 
			{
				if(mod.modId == $("#modId"+lookupId).val())
					$("#modIdView").val(mod.modNameEn);	
			});
	
	var checked;
	 $.ajax({
	        type : "POST",
	        url : jsonViewMasterDetListUrl,
	        contentType: "application/json; charset=UTF-8",
	        datatype: 'json',
	        data : JSON.stringify({"lookupId" : lookupId}),
	        async : false,
	        cache: false,
	        success : function(data)
	        {		        	
	        	var newArray = [];
	        	dataSetView = [];
	        	 $.each(data.resultData, function (i, result) 
	  		     {
	        		 checked = "";
	        		 if(result.lookupDetDefault.trim() == "Y")
	        		 {
	        			  checked = "checked='checked'"
	        			  defaultVal= "Y"
	        		 }
	        		
	        		 newArray = [];
	        		 newArray.push(result.lookupDetParentLevel);
	        		 newArray.push(result.lookupDetDescEn);
	        		 newArray.push(result.lookupDetDescRg);
	        		 newArray.push(result.lookupDetValue);
	        		 newArray.push('<input type="checkbox"   '+checked+' disabled="disabled">');
	        		 newArray.push(result.lookupDetOthers);
	        		 newArray.push(result.lookupDetParentId);

	        		 dataSetView.push(newArray);
	        		 
	  		     });
	        	
	        	 setViewDataTable();
	        	
	                
	        } ,
	        error : function(request, status, error) {
	                 //console.log("error "+request);
	                // console.log("error "+error);
	        } 
	 });
	
	 $(".btn-primary").hide();
	$("#viewModal").modal('show');
}


//end view


//set data table for water
function setDataTable() 
{
	var oTable = $('#lookupmasterdetails').DataTable({
		responsive : true,
		data : dataSet,
		select : true,
		"paging" : true,
		"bDestroy" : true
	});
}
function setViewDataTable() 
{
	var oTable = $('#viewlookupmasterdetails').DataTable({
		responsive : true,
		data : dataSetView,
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



function appendTable()
{
	/*$("#scrutinymastertable").DataTable();
	var rows = "";
	var itemIndex = "";
	var noofrow="";
	$('table').on('click', '.btnAdded', function(){    
		noofrow++;
	   
	    alert("index no "+noofrow);
	    rows = '<tr><td><input type="number" class="form-control"></td><td><div><input type="text" class="form-control"></div></td><td><div><select class="form-control"><option><spring:message code="label.scrutiny.question.textboxs" /></option><option><spring:message code="label.scrutiny.question.numericbox" /></option><option><spring:message code="label.scrutiny.question.yesno" /></option><option><spring:message code="label.scrutiny.question.acceptreject" /></option><option><spring:message code="label.scrutiny.question.docattach" /></option><option><spring:message code="label.scrutiny.question.date" /></option><option><spring:message code="label.scrutiny.question.callui" /></option><option><spring:message code="label.scrutiny.question.txtattach" /></option></select></div></td><td><input type="checkbox"></td><td><span><a><i class="fa fa-plus btnAdded" aria-hidden="true"></i></a></span><span>/</span><span><a><i class="fa fa-minus btnDeleted" aria-hidden="true"></i></a></span></td></tr>';

	    var $this     = $(this);
	    var appd=$this.closest('tr');
	    $(rows).insertAfter(appd);
	    
	}).on('click', '.btnDeleted', function(){
		 alert("number of rows "+noofrow);
		if(noofrow == 0){
			alert("can not delete all rows");
		}
		else{
			$(this).closest('tr').remove();
		}
		noofrow--;
	});
	 */

}

//----add table rows-----
/*function addTableRow(tableId, rowCount)
{
	
		rows = '<tr role="row" class="odd"> <td class="sorting_1"><input type="text" class="form-control" value="'+rowCount+'" readonly="readonly" name="lookupDetParentLevel"></td> <td><input type="text" class="form-control" name="lookupDetDescEn"> </td> <td><input type="text" class="form-control" name="lookupDetDescRg"></td> <td><input type="text" class="form-control" name="lookupDetValue"></td> <td><input type="text" class="form-control" name="lookupDetOthers"></td> <td><input type="hidden" class="lookupDetDefault" id="lookupDetDefault'+rowCount+'" name="lookupDetDefault" value="N"> <input type="checkbox" value="N" class="defaultClass"  id="'+rowCount+'"></td> </tr>';
		$("#"+tableId+" tbody").append(rows);
	
}*/

function defaultCheckBox(className,id)
{
	 $("."+className).each(function () 
			 {
				 if($(this).attr("id")=="lookupDetDefault"+id)
				 {
					 $(this).val("Y");
				 }
				 else
				 {
					 $(this).val("N");
				 }
			 });
}
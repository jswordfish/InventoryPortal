
	function removeEmptyValueFromJSON(reqArr) {
		for ( var key in reqArr) {
			if (reqArr[key] == undefined || reqArr[key] == '') {
				delete reqArr[key];
			}
		}
		return reqArr;
	}
	
	$(document).ready(function () {
		
		var idArray = [];
		var chkArray = [];
                    var modId = $('#modId').val();

					var editDate = {"modId":modId};

								$.ajax({
		             			    type : "POST",
									url : jsonModuleMenuName,
									contentType : "application/json",
									dataType : 'json',
									data : JSON.stringify(editDate),
									async : false,

									success : function(data) {     
												console.log("VAL: "+ data.totalRows);
												var row = 1;
												if (parseInt(data.totalRows) > 0){
													$('#moduleMenu tbody tr').remove() ;
													
													$.each(data.resultData,function(i,result) {
															console.log(" >>> "+ result.menuId+ " "+ result.menuFeatureNameEn+ " "+ result.menuFeatureNameRg);
																
															$("#moduleMenu tbody").append(
																		'<tr> <td><input type="text" id="menuName" value="'+result.menuFeatureNameEn+'" readonly></td> <td><input type="checkbox" class="mnId" id="'+result.menuId+'"></td></tr>');

																		var menuIds = $(".menuIdHide");
																	     for(var i = 0; i < menuIds.length; i++){
																	    	 var mId = $(menuIds[i]).val();
																	    	 $('#'+mId).prop('checked', true);
																	    	 
																	     }
																		
																	});  //each func
													$('.mnId').each(function() 
															{
													    if($('#'+this.id).is(":checked"))
													    	{
													    	idArray.push(this.id);
													    	}
													    
													});
													alert("My array - "+idArray+"   and length "+idArray.length);		
													$('#moduleMenu').show();
												} else {
												
													PNotify.removeAll();
													new PNotify(
															{
																title : 'Error In Fetching Data',
																styling : 'bootstrap3',
																type : 'error'
															});
												} //else	

											}   //success

										}); //ajax
								
								$("#demoBtn").click(function(){
									var addnew = [];
									var removeold = [];
									$('.mnId').each(function() 
											{
									    if($('#'+this.id).is(":checked"))
									    	{
									    		chkArray.push(this.id);
									    	}
									    
									}); 
									
									var match = 0 ;
									for(var i = 0; i< idArray.length;i++)
								    {
										 match = 0;
								    	for(var j = 0; j< chkArray.length;j++)
								    	{
								    		if(parseInt(idArray[i]) == parseInt(chkArray[j]))
								    			{
								    				match = 1;
								    			}
								    		
								    	}
								    	if(match == 0)
						    			{
								    		removeold.push(idArray[i]);
						    			}
								    	
								    }
									
									for(var i = 0; i< chkArray.length;i++)
								    {
										 match = 0;
								    	for(var j = 0; j< idArray.length;j++)
								    	{
								    		if(parseInt(idArray[i]) == parseInt(chkArray[j]))
								    			{
								    				match = 1;
								    			}
								    		
								    	}
								    	if(match == 0)
						    			{
								    		addnew.push(chkArray[i]);
						    			}
								    	
								    }	
									
									alert("length"+addnew.length);
									alert("value "+addnew);
									$('#updateCheck').empty();
									$('#newCheck').empty();
									for(var i = 0; i< removeold.length;i++){
										alert("for - "+i)
										$('#updateCheck').append('<input type="hidden" value="'+removeold[i]+'" name="updatedcheckedMenuIds">');
									}
									
                                     for(var i = 0; i< addnew.length;i++){
                                    	 $('#newCheck').append('<input type="hidden" value="'+addnew[i]+'" name="checkedMenuIds">');
									}
									
								});
		
	});  //document ready

				var jsonUpdateRoleMenuMapData = jsonUpdateRoleMenuMapData;
				$("#updateBtn").click(function() {
					var datavar = $("#updateData").serializeObject();
		 			 console.log(" >>> datavar <<< "+datavar);
		 			var json_string = JSON.stringify(datavar);
		 			 console.log(" >>> json_string <<< "+json_string);
		 			var datavar = removeEmptyValueFromJSON(json_string);
		 			 console.log(" >>> datavar <<< "+datavar);

		 			$.ajax({
		 				type : "POST",
		 				url : jsonUpdateRoleMenuMapData,
		 				contentType: "application/json",
		 				dataType : 'json',
		 				data : datavar,
		 				async : false,
		 				success : function(data2){
		 					console.log(data2);
		 					if(data2)
		 					new PNotify(
									{
										title : 'Successfully Updated',
										styling : 'bootstrap3',
										type : 'success'
									});
		 					window.location = "${redirectUrl}";
		                 }   
		 			
		 			});
				 });
			
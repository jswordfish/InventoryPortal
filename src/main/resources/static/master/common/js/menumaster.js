function removeEmptyValueFromJSON(reqArr) {
		for ( var key in reqArr) {
			if (reqArr[key] == undefined || reqArr[key] == '') {
				delete reqArr[key];
			}
		}
		return reqArr;
	}
$(document).ready(function () 
			{
				
				
		
		var options = {
		        sourceLanguage:
		        google.elements.transliteration.LanguageCode.ENGLISH,
		        destinationLanguage:
		        [google.elements.transliteration.LanguageCode.MARATHI],
		        shortcutKey: 'ctrl+g',
		        transliterationEnabled: true
		    };
		
		    var control = new google.elements.transliteration.TransliterationControl(options);
		 
		    control.makeTransliteratable(["menuFeatureNameRg"]);
		    control.makeTransliteratable(["menuFeatureNameRg"]);
		    control.makeTransliteratable(["menuFeatureNameRg"]);
			
	var dataSet = [];
	getModuleNameLst(jsonModuleName, "moduleName");
	
	function getModuleNameLst(jsonModuleName,moduleName) {
		var dataVar = {}

		$.ajax({
				type : "POST",
				url : jsonModuleName,
				contentType : "application/json",
				dataType : 'json',
				//data : JSON.stringify(dataVar),
				async : false,

				success : function(data) {

					console.log("VAL: "+ data.totalRows);
						var row = 1;
						dataSet = [];
						if (parseInt(data.totalRows) > 0) {
							var newArray = [];
							var totCol = 0;
							$.each(data.resultData,function(i,result) {
									console.log(" >>> "+ result.modId+ " "+ result.modCode+ " "+ result.modNameEn+ " "+ result.modNameRg);
												dataSet.push(result);
												$("#moduleName").append(
														$("<option></option>").val(result.modId).html(result.modNameEn));
											});

						} else {
							PNotify.removeAll();
							new PNotify(
									{
										title : 'Error in Fetching Data',
										styling : 'bootstrap3',
										type : 'error'
									});
						}  //else

					}  //success func
				});  //ajax

	}  //func end
	$('#moduleName').change(function() {
		var editDate;
		var modId = $('#moduleName').val();
					$.each(dataSet,function(i,result) {
							if (modId == result.modId) {
									editDate = {"modId" : modId};
										}  //if
									}); //each

					$.ajax({
						type : "POST",
						url : jsonMenuParent,
						contentType : "application/json",
						dataType : 'json',
						data : JSON.stringify(editDate),
						async : false,

						success : function(data) {
									console.log("VAL: "+ data.totalRows);
									var row = 1;
									dataSetTaluka = [];
									if (parseInt(data.totalRows) > 0)
									{
										$("#mparent").empty();
										$("#mparent").append(
											$("<option></option>").val("0").html("Select Menu Parent"));
										$.each(data.resultData,function(i,result) {
															console.log(" >>> "+ result.menuId+ " "+ result.menuFeatureNameEn+ " "+ result.menuFeatureNameRg);
															//dataSetTaluka.push(result);
															$("#mparent").append(
																$("<option></option>").val(result.menuId).html(result.menuFeatureNameEn));
														});

									} else {
										$("#mparent").empty();
										$("#mparent").append(
											$("<option></option>").val("0").html("Select Menu Parent"));
										PNotify.removeAll();
										new PNotify(
												{
													title : 'Data Not Found',
													styling : 'bootstrap3',
													type : 'error'
												});
									}

								}

							}); //ajax

				}); //func
	
			});// document ready

var jsonSaveMenuData = jsonSaveMenuData;
$("#saveBtn").click(function() {
	if(addFormValid())
		{
		var datavar = $("#saveData").serializeObject();
		var json_string = JSON.stringify(datavar);
		var datavar = removeEmptyValueFromJSON(json_string);
		$.ajax({
			type : "POST",
			url : jsonSaveMenuData,
			contentType: "application/json",
			dataType : 'json',
			data : datavar,
			async : false,
			success : function(response){
				if(parseInt(response) == 0){
					new PNotify(
							{
								title : 'Data Already Exist',
								styling : 'bootstrap3',
								type : 'error'
							});
				}else {
					new PNotify(
							{
								title : 'Successfully Added',
								styling : 'bootstrap3',
								type : 'success'
							});
					window.location = redirectUrl;
				}	
          }   
		
		});
		}
	 
	
 });

function addFormValid(){
	
	$.validator.addMethod( "letterswithbasicpunc1", function( value, element ) {
		return this.optional( element ) || /^[a-z\-.,()'"\s]+$/i.test( value );
	}, "Letters or punctuation only please" );
	
	$("#saveData").validate(
			{
				rules : {
					menuFeatureNameEn : {
						required : true
						
					},
					menuFeatureNameRg : {
						required : true
					},
					menuController : {
						required : true
					},
					menuParentId : {
						required : true
					},
					modId : {
						required : true
					}
				},
				messages : {
					menuFeatureNameEn : {
						required : "Please enter menu name in english"
					},
					menuFeatureNameRg : {
						required : "Please enter menu name in regional"
					},
					menuController : {
						required : "Please enter menu controller"
					},
					menuParentId : {
						required : "Please select parent name"
					},
					modId : {
						required : "Please select module name"
					}
				},
				errorElement : "em",
				errorPlacement : function(error, element) {
					// Add the `help-block` class to the error element
					error.addClass("help-block");

					if (element.prop("type") === "checkbox") {
						error.insertAfter(element.parent("label"));
					} else {
						error.insertAfter(element);
					}
				},
				highlight : function(element, errorClass, validClass) {
					$(element).parents(".col-sm-5").addClass(
							"has-error").removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-sm-5").addClass(
							"has-success").removeClass("has-error");
				}
			});
	if ($("#saveData").valid()) {
		return true;
		
	} else {
		return false;

	}

}
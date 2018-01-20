function removeEmptyValueFromJSON(reqArr) {
		for ( var key in reqArr) {
			if (reqArr[key] == undefined || reqArr[key] == '') {
				delete reqArr[key];
			}
		}
		return reqArr;
	}

$(document).ready(function () {               
    
	var options = {
	        sourceLanguage:
	        google.elements.transliteration.LanguageCode.ENGLISH,
	        destinationLanguage:
	        [google.elements.transliteration.LanguageCode.MARATHI],
	        shortcutKey: 'ctrl+g',
	        transliterationEnabled: true
	    };
	
	    var control = new google.elements.transliteration.TransliterationControl(options);
	 
	    control.makeTransliteratable(["roleNameRg"]);
	    control.makeTransliteratable(["roleNameRg"]);
	    control.makeTransliteratable(["roleNameRg"]);
	    
});
	
	var jsonSaveRoleData = jsonSaveRoleData;
	$("#saveBtn").click(function() {
		if(addFormValid())
			{
			var datavar = $("#saveData").serializeObject();
			var json_string = JSON.stringify(datavar);
			var datavar = removeEmptyValueFromJSON(json_string);
			$.ajax({
				type : "POST",
				url : jsonSaveRoleData,
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
						roleNameEn : {
							required : true
							
						},
						roleNameRg : {
							required : true
						},
						roleDescription : {
							required : true
						}
					},
					messages : {
						roleNameEn : {
							required : "Please enter role name in english"
						},
						roleNameRg : {
							required : "Please enter role name in regional"
						},
						roleDescription : {
							required : "Please enter role description"
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
	
	
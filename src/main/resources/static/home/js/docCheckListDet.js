
function doccheckvalid(){
	
	
 
	$("#checkdoclist")
	.validate(
			{
				rules : {
					checkListId : {
						required : true
						
					}
				},
				messages : {
				
					checkListId : {
						required : "Please Select"
						
					}
				},
				highlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-3").addClass(
							"has-error").removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-3").addClass(
							"has-success").removeClass("has-error");
				}
			});
	if($("#checkdoclist").valid()){
		return true;

	}else{
		return false;
	}

}

	

function doccheckvalid1(){

	
 
	$("#demo-form2")
	.validate(
			{
				rules : {
					docChkId : {
						required : true
						
					},
					docDescDetEn : {
						required : true
						
					},
					docDescDetReg : {
						required : true
					}
				},
				messages : {
				
					docChkId : {
						required : "Please Select"
						
					},
					docDescDetEn : {
						required : "This field is required"
						
					},
					docDescDetReg : {
						required : "This field is required"
					}
				},
				highlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-3").addClass(
							"has-error").removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-3").addClass(
							"has-success").removeClass("has-error");
				}
			});
	if($("#demo-form2").valid()){
	return true;

	}else{
		return false;  
	}

}

	



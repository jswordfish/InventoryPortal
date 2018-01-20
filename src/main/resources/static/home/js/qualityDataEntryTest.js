





function formValidations(){


	$("#test_form")
	.validate(
			{
				rules : {
					lookup_code : {
						required : true
					},
					testdate : {
						required : true,
						date : true,
						maxlength : 10
					},
					numberOfSample : {
						digits : true,
						required : true
					},
					sourceOfWaterLoc : {
						required : true
					}
					
				},
				messages : {
					lookup_code : {
						required : "This Field Is Required"
					},
					testdate : {
						required : "This Field Is Required"
					},
					numberOfSample : {
						digits : "Please Enter Digits Only",
						required : "This Field Is Required"
					},
					sourceOfWaterLoc : {
						required : "This Field Is Required"
					}
				
			
				},
				highlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-4").addClass(
							"has-error").removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-4").addClass(
							"has-success").removeClass("has-error");
				}
			});
	
	if ($("#test_form").valid()) {
		return true;
		
    } else {
        return false; 
       
    }
	

}
		






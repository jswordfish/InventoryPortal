
function search_validations() 
{
	jQuery.validator.addMethod("letters", function(value, element) {
		  return this.optional(element) || /^[A-z]+$/.test(value);
		}, "Please Enter alphabets only");
	
	$("#searchLookup-form").validate(
		{
				rules : {
					lookupCode : {
						minlength : 3,
						maxlength : 5
						
					},
					lookupDescEn : {
						letters : true
					},
					lookupDescRg : {
						letters : true
					}
					
				},
				messages : {
					
					lookupCode : {
						minlength : "Please Enter Minimum 3 Characters ",
						maxlength : "Please Enter Maximum 5 Characters"
					}
					

				},
				highlight : function(element, errorClass, validClass) {
					$(element).closest(".col-md-3").addClass("has-error")
							.removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-3").addClass("has-success")
							.removeClass("has-error");
				}			
				
			});

	if ($("#searchLookup-form").valid()) {
		return true;
		
	} else {
		return false;

	}

}





//-------------add -----------

function add_validations() 
{
	jQuery.validator.addMethod("letters", function(value, element) {
		  return this.optional(element) || /^[a-zA-Z ]*$/.test(value);
		}, "Please Enter alphabets only");
	
	jQuery.validator.addMethod('selectbx', function (value) {
        return (value != '0');
    }, "Please select module");



	
	$("#saveUpdate-Form").validate(
	{
				rules : {
					lookupCode : {
						minlength : 3,
						maxlength : 5,
						required  : true
						
					},
					lookupDescEn : {
						letters : true,
						required  : true
					},
					lookupDescRg : {
						//letters : true,
						required  : true
					},
					modId : {
						selectbx : true
					},
					hierarchical : {
						required  : true
					},
					lookupAddFlag : {
						required  : true
					},
					lookupEditFlag : {
						required  : true
					},
					flagStateUlb : {
						required  : true
					},
					hierarchicalNoLevel : {
						required  : true
					}
					
				},
				messages : {
					
					lookupCode : {
						minlength : "Please Enter Minimum 3 Characters ",
						maxlength : "Please Enter Maximum 5 Characters"
					},
					lookupDescEn : {
						required : "Please enter lookup description in english."
					},
					lookupDescRg : {
						required : "Please enter lookup description in marathi. "
					},
					hierarchical : {
						required : "Please select hierarchical. "
					},
					lookupAddFlag : {
						required : "Please select add. "
					},
					lookupEditFlag : {
						required : "Please select edit. "
					},
					flagStateUlb : {
						required : "Please select edit. "
					},
					hierarchicalNoLevel : {
						required : "Please enter no of level. "
					}

				},
				highlight : function(element, errorClass, validClass) {
					$(element).closest(".col-md-3").addClass("has-error")
							.removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-3").addClass("has-success")
							.removeClass("has-error");
				},
				
				errorPlacement: function(error, element) 
		        {
		            if ( element.is(":radio") ) 
		            {
		                error.appendTo( element.parents('.col-md-3') );
		            }
		            else 
		            { // This is the default behavior 
		                error.insertAfter( element );
		            }
		         }			
				
			});

	if ($("#saveUpdate-Form").valid()) {
		return true;
		
	} else {
		return false;

	}

}
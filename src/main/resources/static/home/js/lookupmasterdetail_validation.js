/*
 * 
 * @Author Ketan Gaonkar
 * @Date : 16/11/2017 * 
 * @Desc: Used for LookupMasterDetails validation
 */





//-------------add -----------

function add_validations() 
{
	jQuery.validator.addMethod("letters", function(value, element) {
		  return this.optional(element) || /^[A-z]+$/.test(value);
		}, "Please Enter alphabets only");
	
	jQuery.validator.addMethod('selectbx', function (value) {
      return (value != '0');
  }, "Please select module");



	
	$("#saveUpdate-Form").validate(
		{
				rules : {
					lookupDetValue : {
						letters : true,
						required  : true
						
					},
					lookupDetDescEn : {
						letters : true,
						required  : true
					},
					lookupDetDescRg : {
						letters : true,
						required  : true
					},
					lookupId : {
						selectbx : true
					}
				},
				messages : {
					
					lookupDetValue : {
						required : "Please enter value."
					},
					lookupDetDescEn : {
						required : "Please enter description in english."
					},
					lookupDetDescRg : {
						required : "Please enter description in marathi. "
					}

				},
				highlight : function(element, errorClass, validClass) {
					$(element).closest("td").addClass("has-error")
							.removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents("td").addClass("has-success")
							.removeClass("has-error");
				}		
				
			});

	if ($("#saveUpdate-Form").valid()) {
		return true;
		
	} else {
		return false;

	}

}
/*
 * 
 * @Author Ketan Gaonkar
 * @Date : 01/11/2017 * 
 * @Desc: Used for change of ownership validation
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



	
	$("#saveOwner").validate(
		{
				rules : {
					connectionNo : {
						//letters : true,
						required  : true
						
					},
					firstNameOwner : {
						letters : true,
						required  : true
					},
					middleNameOwner : {
						letters : true,
						required  : true
					},
					lastNameOwner : {
						letters : true,
						required  : true
					},
					ulbIdDesc : {
						selectbx : true,
						//required  : true
					}
				},
				messages : {
					
					connectionNo : {
						required : "Please enter connection No."
					},
					firstNameOwner : {
						required : "Please enter first name. "
					},
					middleNameOwner : {
						required : "Please enter middle name. "
					},
					lastNameOwner : {
						required : "Please enter last name. "
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

	if ($("#saveOwner").valid()) {
		return true;
		
	} else {
		return false;

	}

}
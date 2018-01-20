function property_validations() 
{

	var i = 0;
	
	$("#propertyform").validate(
			{
				rules : {
					propertyNo : {
						alphanumeric : true
					},
					oldPropertyNo : {
						alphanumeric : true
					},
					manualPropertyNo : {
						alphanumeric : true
					},
					aadharNo : {
						digits : true,
						minlength : 12,
						maxlength : 12
					},
					mobileNo : {
						digits : true,
						minlength : 10,
						maxlength : 10
					}/*,
					ownerName : {
						lettersonly : true
					},
					occupierName : {
						lettersonly : true
					}*/
				},
				messages : {

					aadharNo : {
						digits : "Please Enter digits only",
						minlength : "Please enter 12 digit adhar no",
						maxlength : "Please enter 12 digit adhar no"
					},
					mobileNo : {
						digits : "Please enter numbers only",
						minlength : "Please enter 10 digit mobile no",
						maxlength : "Please enter 10 digit mobile no"

					}

				},
				highlight : function(element, errorClass, validClass) {
					$(element).closest(".col-md-4").addClass("has-error")
							.removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-4").addClass("has-success")
							.removeClass("has-error");
				}
			});

	if ($("#propertyform").valid()) {
		
		$("textarea,:input[type=text],:input[type=email],:input[type=number]").each(
				function() {
					if ($(this).val() != "") {
						i = 1;

					}

				});
		if (i == 1) {
			
			return true;
		}
		else{
			alert("Please Enter at least one field");
		}

	} else {
		return false; // keeps dialog open

	}

}

// water validationsssssssssssssssss
function water_validations() {
var j=0;
	
	$("#pay-water-form").validate(
			{
				rules : {
					consumerNo : {
						alphanumeric : true
					},
					oldConsumerNo : {
						alphanumeric : true
					},
					manualConsumerNo : {
						alphanumeric : true
					},
					aadharNo : {
						digits : true,
						minlength : 12,
						maxlength : 12
					},
					mobileNo : {
						digits : true,
						minlength : 10,
						maxlength : 10
					}/*,
					ownerName : {
						lettersonly : true
					},
					occupierName : {
						lettersonly : true
					}*/

				},
				messages : {

					aadharNo : {
						digits : "Please Enter digits only",
						minlength : "Please enter 12 digit adhar no",
						maxlength : "Please enter 12 digit adhar no"

					},
					mobileNo : {
						digits : "Please enter numbers only",
						minlength : "Please enter 10 digit mobile no",
						maxlength : "Please enter 10 digit mobile no"
					}

				},
				highlight : function(element, errorClass, validClass) {
					$(element).closest(".col-md-4").addClass("has-error")
							.removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-4").addClass("has-success")
							.removeClass("has-error");
				}

			});
	if ($("#pay-water-form").valid()) {
	
		$("textarea,:input[type=text],:input[type=email],:input[type=number]").each(
				function() {
					
					if ($(this).val() != "") {
						j = 1;

					}

				});
		if (j == 1) {
			
			return true;
		}
		else{
			alert("Please Enter at least one field");
		}

	} else {
		return false; // keeps dialog open

	}


}


function myFunction() {
	amount=document.getElementById("payAmount").value;
	
	if(amount>0){
		return true;
	}
	else{
		alert("please Enter Amount Correctly");
		$('#payAmount').focus().css('border-color', 'red');
		 return false;		
	}
 
}
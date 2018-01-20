function MarketFormValid_step1() {
	

	$.validator.addMethod("not_allow_repeated_char", function(value, element) {
		//cannot be zero(1..)
		return this.optional(element)
				|| /^(?!.*([A-Za-z])\1{4})[A-Za-z]+$/.test(value);
	}, "Please Enter Correctly");

	$("#ownerDetail")
			.validate(
					{
						rules : {
							licenseOldNo : {
								required : true
							},
							holderUid : {
								digits : true
							},
							mobileNo1 : {
								digits : true,
								minlength : 10,
								maxlength : 10
							},
							phone_no : {
								digits : true
							},
							firstNameEn : {
								not_allow_repeated_char : true
							}

						},
						messages : {
							licenseOldNo : {
								required : "This field is required"
							},
							holderUid : {
								digits : "Please enter numbers only"
							},
							mobileNo1 : {
								digits : "Please enter numbers only",
								minlength : "Please enter 10 digit mobile no",
								maxlength : "Please enter 10 digit mobile no"
							},
							phone_no : {
								digits : "Please enter numbers only"
							}

						},
						highlight : function(element, errorClass, validClass) {
							$(element).closest(".col-md-4").addClass(
									"has-error").removeClass("has-success");
						},
						unhighlight : function(element, errorClass, validClass) {
							$(element).parents(".col-md-4").addClass(
									"has-success").removeClass("has-error");
						}
					});

	if ($("#ownerDetail").valid()) {
		alert("inside js");
		return true;

	} else {
		return false; // keeps dialog open

	}

}

function MarketFormValid_step2() {
	
	$.validator.addMethod("not_repeat", function(value, element) {
		return this.optional(element)
				|| /^(?!.*([0-9])\1{4})[0-9]+$/.test(value);
	}, "enter pincode correctly");

	$("#establishDetails").validate(
			{
				rules : {
					
					
					businessPincode : {
						not_repeat : true,
						minlength : 6,
						maxlength : 6
					},
					businessMobileNo : {
						not_repeat : true,
						minlength : 10,
						maxlength : 10
					},
					businessPhoneNo : {
						not_repeat : true
					}
				},
				messages : {

					businessPincode : {
						minlength : "Please enter 6 digit pincode",
						maxlength : "Please enter 6 digit pincode"
					},
					businessMobileNo : {

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

	if ($("#establishDetails").valid()) {
		
		return true;

	} else {
		return false; // keeps dialog open

	}

}

//step-3 validations

function MarketFormValid_step3() {
	

	$.validator.addMethod("not_allow_zero", function(value, element) {
		//cannot be zero(1..)
		return this.optional(element) || /^[1-9][0-9]*$/.test(value);
	}, "Cannot be zero");

	$("#licenseDetail").validate(
			{
				rules : {
					businessArea : {
						not_allow_zero : true
					},
					totalEmployee : {
						not_allow_zero : true
					},
					totalMachines : {
						not_allow_zero : true
					}
					
				},
				messages : {


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

	if ($("#licenseDetail").valid()) {
	
		return true;

	} else {
		return false; // keeps dialog open

	}

}

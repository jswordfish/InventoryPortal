function addValidations() {

	jQuery.validator.addMethod("bigDecimal", function(value, element) {
		return this.optional(element)
				|| /^[+-]?([0-9]*[.]{1,2})?[0-9]+$/.test(value);
	}, "Allowed Only Numbers and Point ");

	$.validator
			.addMethod("value_not_same", function(value, element) {
				return $('#reservationUlb').val() < $('#capacityOfSource')
						.val()
			},"* Reservation of ULB Value Must Be Less Than Capacity of Source Value ");

	$.validator
			.addMethod("value_not_same1", function(value, element) {
				return $('#capacityOfSource').val() > $('#reservationUlb')
						.val()
			},"* Capacity of Source Value Must Be Greater Than Reservation of ULB  Value ");

	$.validator.addMethod("noZeroValue", function(value, element) {
		return value != 0
	}, "* Value Must Be Greater Than Zero ");

	$("#waterSource").validate(
			{
				rules : {
					sourceType : {
						required : true

					},
					sourceDescription : {
						required : true

					},
					capacityOfSource : {
						required : true,
						bigDecimal : true,
						value_not_same1 : true,
						noZeroValue : true

					},
					reservationUlb : {
						required : true,
						bigDecimal : true,
						value_not_same : true,
						noZeroValue : true

					}
				},
				messages : {

					sourceType : {
						required : "This Field Is Required"

					},
					sourceDescription : {
						required : "This Field Is Required"

					},
					capacityOfSource : {
						required : "This Field Is Required"

					},
					reservationUlb : {
						required : "This Field Is Required"

					}
				},
				highlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-4").addClass("has-error")
							.removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-4").addClass("has-success")
							.removeClass("has-error");
				}
			});
	if ($("#waterSource").valid()) {

		return true;

	} else {

		return false;
	}

}

$("#closeBtn").click(function() {
	$('#capacityOfSource-error').hide();
	$('#reservationUlb-error').hide();
	$('#sourceDescription-error').hide();
	$('#sourceType-error').hide();
});

function updateValidations() {

	$.validator.addMethod("bigDecimal1", function(value, element) {
		return this.optional(element)
				|| /^[+-]?([0-9]*[.]{1,2})?[0-9]+$/.test(value);
	}, "Allowed Only Numbers and Point ");

	$("#waterSource1").validate(
			{
				rules : {
					sourceType : {
						required : true
					},
					sourceDescription : {
						required : true

					},
					capacityOfSource : {
						required : true,
						bigDecimal1 : true
					},
					reservationUlb : {
						required : true,
						bigDecimal1 : true
					}
				},
				messages : {
					sourceType : {
						required : "This Field Is Required"

					},
					sourceDescription : {
						required : "This Field Is Required"

					},
					capacityOfSource : {
						required : "This Field Is Required"
					},
					reservationUlb : {
						required : "This Field Is Required"
					}
				},
				highlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-4").addClass("has-error")
							.removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-4").addClass("has-success")
							.removeClass("has-error");
				}
			});
	if ($("#waterSource1").valid()) {

		return true;

	} else {

		return false;
	}

}



function SearchValidations() {

	$.validator.addMethod("bigDecimal11", function(value, element) {
		return this.optional(element)
				|| /^[+-]?([0-9]*[.]{1,2})?[0-9]+$/.test(value);
	}, "Allowed Only Numbers and Point ");

	$("#searchform").validate(
			{
				rules : {
					capaciy : {
						bigDecimal11 : true
					},
					rsrvtn : {
						bigDecimal11 : true

					}
				},
				
				highlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-2").addClass("has-error")
							.removeClass("has-success");
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents(".col-md-2").addClass("has-success")
							.removeClass("has-error");
				}
			});
	if ($("#searchform").valid()) {

		return true;

	} else {

		return false;
	}

}


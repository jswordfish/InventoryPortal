
function submitApplicantValidations() 
{
		
		 jQuery.validator.addMethod('selectUlb', function (value)
		 {
		      return (value != '0');
		  }, "Please select ULB Name");	
		 
		 $.validator.addMethod("mailID", function(value, element) 
		 {
				return this.optional(element)
						|| /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(value);
			}, "Please Enter Valid Email Id ");

			$("#frmData").validate(
					{
						rules : {
							ulbIdDesc : {
								selectUlb : true
							},
							
							applicantFirstName: {
								required : true
							},
							applicantLastName: {
								required : true
							},
							applicantMobile: {
								required : true,
								digits : true,
								minlength : 10
							},
							applicantEmail: {
								required : true,
								mailID : true
							},
							aadharNo: {
								required : true,
								digits : true,
								minlength : 12
							},
							organisationName : {
								   lettersonly: true
								}

						},
						messages : {
						
							applicantFirstName: {
								required : " This Field is required"
							},
							applicantLastName: {
								required : " This Field is required"
							},
							applicantMobile: {
								required : " This Field is required",
								digits : "Please Enter Digits only",
								minlength : "Please valid mobile number"
							},
							applicantEmail: {
								required : " This Field is required"
							},
							aadharNo: {
								required : " This Field is required",
								digits : "Please Enter Digits only",
								minlength : "Please valid aadhar number"
							},
							organisationName : 
							{
								   lettersonly: "Please Enter alphabets only"
							}

						},
						highlight : function(element, errorClass, validClass) {
							$(element).parents(".col-md-3").addClass("has-error")
									.removeClass("has-success");
						},
						unhighlight : function(element, errorClass, validClass) {
							$(element).parents(".col-md-3").addClass("has-success")
									.removeClass("has-error");
						}
					});
			
		
			if ($("#frmData").valid())
			{
				return true;			
				
			} 
			else 
			{
				return false;

			}
			
			
}


function validateCheckList()
{
	var k = 0,allOk = 0;
	if ($("#checkListForm").valid()) 
		{
						$(".fileValidation").each(function(i)
						{
							console.log(i);
							var divId = "#fileValidation-"+i;
							$("#checkListForm "+divId+" input[type=text]").each(
								function() 
								{								
									if ($(this).val() != "") {
										k = 1;

									}

								});
							
							if (k == 1) 
							{							
								k = 0;
							}
							else
							{
								allOk = 1;
								alert("Please upload reqired documents for "+$("#docType"+i).val());							
								return false; 
							}
							
						});
						
						
						if (allOk == 0) 
						{
							
							return true;
						}
						
						

					} 
			else
			{
				return false; // keeps dialog open

			}
					
}
			
	//-------------checklist end---------		

			//**********------------validation--------***********//*
		/*	First Name
			function validateFname() {
				var fName = $("#applicantFirstName").val();
				var length = $('#firstNameApended').length;
				if (length == 0) {
					if (fName == "") {
						$("#fname")
								.append(
										'<div id="firstNameApended" style="color:red;"> Enter First Name </div>')
								.show(); 
					} else {
						$("#firstNameApended").remove();
					}
				}
			}
			function removeFname() {
				$("#firstNameApended").remove();
			}

			Last Name
			function validateLname() {
				var lName = $("#applicantLastName").val();
				var length = $('#lastNameApended').length;
				if (length == 0) {
					if (lName == "") {
						$("#lname")
								.append(
										'<div id="lastNameApended" style="color:red;"> Enter Last Name </div>')
								.show(); 
					} else {
						$("#lastNameApended").remove();
					}
				}
			}
			function removeLname() {
				$("#lastNameApended").remove();
			}

			MObileNumber
			function validateMobile() {
				var mobileNo = $("#applicantMobile").val();
				var length = $('#mobileApended').length;
				if (length == 0) {
					if (mobileNo == "" ) {
						$("#mobileNo")
								.append(
										'<div id="mobileApended" style="color:red;"> Enter Mobile Number</div>')
								.show(); 
					} else if (mobileNo.length < 10) {
						$("#mobileNo")
						.append(
								'<div id="mobileApended" style="color:red;"> Enter Valid Mobile Number</div>')
						.show(); 
					} else {
						$("#mobileApended").remove();
					}
				}
			}
			function isNumber(evt) {
				$("#mobileApended").remove();
				evt = (evt) ? evt : window.event;
				var charCode = (evt.which) ? evt.which : evt.keyCode;
				if (charCode > 31 && (charCode < 48 || charCode > 57)) {
					return false;
				}
				return true;
			}

			EmailAddress
			function validateEmail() {
				var fName = $("#applicantEmail").val();
				var length = $('#emailApended').length;
				if (length == 0) {
					if (fName == "") {
						$("#emailId")
								.append(
										'<div id="emailApended" style="color:red;"> Enter Email Address</div>')
								.show(); 
					} else {
						$("#emailApended").remove();
						if (/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(fName)) {
							return (true)
						}
						else
							$("#emailId")
							.append(
									'<div id="emailApended" style="color:red;"> Enter Valid Email Address</div>')
							.show(); 
						//$("#emailApended").remove(); 
					}
				} 
			}

			function removeEmail()
			{
				$("#emailApended").remove();
			}
			AadharNo
			function validateAadhar() {
				var aadharNo = $("#aadharNo").val();
				var length = $('#aadharApended').length;
				if (length == 0) {
					if (aadharNo == "") {
						$("#aadharnumber")
								.append(
										'<div id="aadharApended" style="color:red;"> Enter Aadhar Card Number</div>')
								.show(); 
					} else if (aadharNo.length < 12) {
						$("#aadharnumber")
						.append(
								'<div id="aadharApended" style="color:red;"> Enter Valid Aadhar No</div>')
						.show(); 
					} else {
						$("#aadharApended").remove();
					}
				}
			}

			function isNumberAadhar(evt) {
				$("#aadharApended").remove();
				evt = (evt) ? evt : window.event;
				var charCode = (evt.which) ? evt.which : evt.keyCode;
				if (charCode > 31 && (charCode < 48 || charCode > 57)) {
					return false;
				}
				return true;
			}
			
			*/
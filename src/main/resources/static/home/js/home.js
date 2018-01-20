var dataSet = [];

$(document).ready(function() {

	getULBList(jsonULBListUrl, "ulb-dropdownForSignup");
	getULBList(jsonULBListUrl, "ulb-dropdown");
	getULBListID(jsonULBListUrl, "ulb-dropdownForTracking");
	getULBList(jsonULBListUrl, "ulb-dropdownForDownload");
	getULBListID(jsonULBListUrl, "ulb-option-template");
	  

}); // ready

$(document).ready(function() {
	$('#reg-modal').modal('hide');
	regFormValid();
	$("#create-account").click(function() {
		// alert("indi#####");
		$('#otpconfirmation').hide();
		$('#reg-modal').modal('show');
	});
	// $('#track-model').modal('show');

	$("#track-go").click(function() {
		trackGo();
	});
	$("#download-go").click(function(){
		downloadGo();
	});
	$('#Reg-button').click(function() {
	//	ashokLoader.showPleaseWait();
	
		if($("#citizenFrom").valid()){
			var isOk = 0;
			//$('#Reg-button').button('Please Wait...');	
			if(isMobile() == 0){
				if(isUserLogin() == 0){
					requestOTP();
				}
			}
		//	$('#Reg-button').button('reset');
			//regBtn();
		}
		//ashokLoader.hidePleaseWait();
	});
	$('#otp-button').click(function() {
	//	$('#Reg-button').button('Please Wait...');
		validOTP();
	//	$('#Reg-button').button('reset');
	});
	$('#loginBtn').click(function() {
		validUser();
	});
	
	
	/*$('#registrationForm').submit(function() {
		alert("submit..."+validOTPUrl);
	    $(this).attr('action', validOTPUrl); 
	    return true;
	  });*/

}); // ready

function regFormValid(){
 
	$("#citizenFrom")
	.validate(
			{
				rules : {
					userMobile : {
						required : true,
						digits : true,
						minlength : 3,
						maxlength : 10
					},
					userName : {
						required : true,
						minlength : 3,
						maxlength : 30,

					},
					userLoginName : {
						required : true,
						minlength : 5
					},
					userPassword : {
						required : true,
						minlength : 5
					},
					confirmpass : {
						required : true,
						minlength : 5,
						equalTo : "#userPassword"
					},
					userEmailId : {
						required : true,
						email : true
					}
				},
				messages : {
					userMobile : {
						required : "Please enter your mobile number",
						digits : "Please enter numbers only",
						minlength : "Your mobile number must be at least 3 literals long",
						maxlength : "Your mobile number can not be greater then 10 literals"
					},
					userName : {
						required : "Please enter your name",
						lettersonly : "Please enter letters and spaces",
						minlength : "Your name must be at least 3 character long",
						maxlength : "Your name can not be greater then 10 characters"	
					},
					userLoginName : {
						required : "Please enter a username",
						minlength : "Your username must consist of at least 2 characters"
					},
					userPassword : {
						required : "Please provide a password",
						minlength : "Your password must be at least 5 characters long"
					},
					confirmpass : {
						required : "Please provide a password",
						minlength : "Your password must be at least 5 characters long",
						equalTo : "Please enter the same password as above"
					},
					userEmailId : "Please enter a valid email address"
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

}
function showTrackAppModel(srNumber) {
//	alert("ajax call");
	$("#spwater_consumerno").html($("#srNumber" + srNumber).val());
	$("#spwater_aadharno").html($("#srDate" + srNumber).val());
	$("#spwater_mobileno").html($("#applicantName" + srNumber).val());

	$('#track-model').modal('show');

};
function isMobile(){
	var isMob = 0;
	var datavar = {
			"userMobile" : $("#userMobile").val() 
		};
	$.ajax({
		type : "POST",
		url : isMobileExist,
		contentType: "application/json; charset=UTF-8",
		dataType : 'json',
		data : JSON.stringify(datavar),
		async : false,
		success : function(msg) {
		//  console.log(msg);
		  if(msg == "1"){
			  new PNotify({
					title : 'Mobile Already Register.',
					styling : 'bootstrap3',
					type : 'error'
				}); 
			  isMob = 1; 
		  } 
		}
	});
	return isMob;
}
function isUserLogin(){
	var isUser = 0;
	var datavar = {
			"userLoginName" : $("#userLoginName").val(),
		};
	$.ajax({
		type : "POST",
		url : isUserExist,
		contentType: "application/json; charset=UTF-8",
		dataType : 'json',
		data : JSON.stringify(datavar),
		async : false,
		success : function(msg) {
		//  console.log(msg);
		  if(msg == "1"){
			  isUser = 1; 
			  new PNotify({
					title : 'Username Already Register.',
					styling : 'bootstrap3',
					type : 'error'
				}); 
		  } 
		}
	});
	return isUser;
}
/* Validate OTP */
function validOTP() {
	var prevotp = JSON.parse(sessionStorage.getItem("result"));
	var otp = $("#otpconfirm").val();
	$.ajax({
		type : "POST",
		url : validateOTP+otp,
		contentType: "application/json; charset=UTF-8",
		dataType : 'json',
		async : false,
		success : function(msg) {
		  console.log(msg);
		
		  if(msg == "1"){
			  if (prevotp == otp) {
					$("#citizenFrom").submit();
				} else {
					$('#otpconfirm').val('');
					$("#otpconfirm").focus();
					new PNotify({
						title : 'Invalid OTP.',
						styling : 'bootstrap3',
						type : 'error'
					});
				}
		  }else{
			  new PNotify({
					title : 'Invalid OTP.',
					styling : 'bootstrap3',
					type : 'error'
				}); 
		  }
		}
	});
	
	
}
function regBtn() {
	 
	var formData = $("#citizenFrom").serializeObject();
	var json_string = JSON.stringify(formData);
	var finalArry = removeEmptyValueFromJSON(json_string);
	$.ajax({
		type : "POST",
		url : jsoncitizenRegUrl,
		contentType : "application/json",
		dataType : 'json',
		data : finalArry,
		async : false,

		success : function(msg) {
			$('#Reg-button').prop("disabled", true);
			$("#otpconfirmation").show();
			sessionStorage.setItem("result", msg);
		}
	});
}  


function trackGo() {
	var data = $("#trackApplication").val();
	var data1=$("#ulb-dropdownForTracking").val();


	var datavar={"srNumber":data,"ulbId":data1};

	 	
	 	$.ajax({
	    type: "POST",
	    url: jsonTrackDetailUrl,
	    contentType: "application/json; charset=UTF-8",
	    dataType : 'json',
	    data: JSON.stringify(datavar),
	    async: false,
	    headers: {                  
	        "Authorization": "Basic " + btoa("ashok:pass")
	        
	    },
	    success: function (data)
	    {
	   	 $('#track-modal').modal('show');
	   	 
	   	 console.log("VAL: "+data.resultData[0].srNumber);
	   	 /* $('#srNumber').html(data.resultData[0].srNumber); 
	   	 $('#organisationName').html(data.resultData[0].organisationName); 
	   	 $('#organisationAddress').html(data.resultData[0].organisationAddress); 
	   	 $('#apllicationName').html(data.resultData[0].applicantName);  */
	   	  var row = 1;
	        dataSet = [];
	        var fianlTotal=0;
	        if(parseInt(data.totalRows) > 0)
	        {
	     	   var newArray = [];
	     	   var totCol = 0;
	     	 $('#trackingTableData tbody').empty();
	     	   $.each(data.resultData, function (i, result) 
	     	   {                  		  	
	           	var dateperiod= result.fromDate + " - " + result.toDate;
	           	var appendTR="<tr><td><span>"+result.srNumber+"</span></td><td><span>"+result.organisationName +"</span></td><td><span>"+result.organisationAddress+"</span></td><td><span>"+result.applicantName+"</span></td></tr>";
	           	 $('#trackingTableData tbody').append(appendTR);
	           	 
	           	//dataSet.push(newArray);
	                	row++;
	     	   });
	     	     }
	        else{
	            new PNotify({
	                title: 'Data Not Found.',
	                styling: 'bootstrap3',
	                type: 'error'
	            });
	      }
	        
	   	 
	                	
	    }
	     });
}

function requestOTP(){
	var datavar = {
			"userName" : $("#userName").val(),
			"userMobile" : $("#userMobile").val(),
			"userEmailId" : $("#userEmailId").val()
		};
	$.ajax({
		type : "POST",
		url : jsonOTPUrl,
		contentType: "application/json; charset=UTF-8",
		dataType : 'json',
		async : false,
		data : JSON.stringify(datavar),
		success : function(msg) {
			// $("#registrationForm")[0].reset();
			/*$('#userMobile').prop("disabled", true);
			$('#userName').prop("disabled", true);
			$('#userEmailId').prop("disabled", true);
			$('#userLoginName').prop("disabled", true);
			$('#userPassword').prop("disabled", true);
			$('#confirmpass').prop("disabled", true);*/
			
			 $('#userMobile').attr('readonly', 'true');
			 $('#userName').attr('readonly', 'true');
			 $('#userEmailId').attr('readonly', 'true');
			 $('#userLoginName').attr('readonly', 'true');
			 $('#userPassword').attr('readonly', 'true');
			 $('#confirmpass').attr('readonly', 'true');
			 
			$('#Reg-button').prop("disabled", true);

			sessionStorage.setItem("result", msg);
			$("#otp").val(msg);
			$("#otpconfirmation").show();
			//console.log('OTP Sent' + msg);
			sessionStorage.setItem("result", msg);
		},
		error : function(e) {
			new PNotify({
				title : 'Request Not Process...Try After Sometime. ',
				styling : 'bootstrap3',
				type : 'error'
			});
		}
	});
	
}

function validUser(){
	
	 var userType = $('input[name=optradio]:checked').val(); 
 
	var datavar = {
			"username" : $("#mobileNumber").val(),
			"password" : $("#loginpass").val(),
			"ulbId" :    $("#ulbId").val(),
			"userType" :  userType
		};
	$.ajax({
		type : "POST",
		url : jsonLoginValidUrl,
		contentType: "application/json; charset=UTF-8",
		dataType : 'json',
		async : false,
		data : JSON.stringify(datavar),
		success : function(msg) {
			//console.log(' MSG ' + msg.resultData[0].userName);
			if( parseInt(msg.totalRows) > 0){
				new PNotify({
					title : 'Welcome '+msg.resultData[0].userName,
					styling : 'bootstrap3',
					type : 'error'
				});
				window.location.href = homePage;
				
			}else{
				new PNotify({
					title : 'Invalid Username / Password. ',
					styling : 'bootstrap3',
					type : 'error'
				});
			}
			 
		},
		error : function(e) {
			new PNotify({
				title : 'Request Not Process...Try After Sometime. ',
				styling : 'bootstrap3',
				type : 'error'
			});
		}
	});
}

function downloadGo(){
	var data = $("#downloadApplication").val();
    var data1=$("#ulb-dropdownForDownload").val();
    var datavar={"srNumber":data,"ulbId":data1};
   
    $.ajax({
        type: "POST",
        url: jsonDownloadCertificateUrl,
        contentType : "application/json",
        dataType : 'json',
        data: JSON.stringify(datavar),
        async: false,
        headers: {                  
            "Authorization": "Basic " + btoa("ashok:pass")
            
        },
        success: function (data)
        {
       	 $('#downloading-modal').modal('show');
       	 
       	 var row = 1;
            dataSet = [];
            var fianlTotal=0;
            if(parseInt(data.totalRows) > 0)
            {
         	   var newArray = [];
         	   var totCol = 0;
         	 $('#downloadingTableData tbody').empty();
         	   $.each(data.resultData, function (i, result) 
         	   {                  		  	
               	var dateperiod= result.fromDate + " - " + result.toDate;
               	var appendTR="<tr><td><span>"+result.srNumber+"</span></td><td><span>"+result.organisationName +"</span></td><td><span>"+result.organisationAddress+"</span></td><td><span>"+result.applicantName+"</span></td></tr>";
               	 $('#downloadingTableData tbody').append(appendTR);
               	 
               	//dataSet.push(newArray);
	                 	row++;
         	   });
         	     }
            else{
                new PNotify({
                    title: 'Data Not Found.',
                    styling: 'bootstrap3',
                    type: 'error'
                });
          }
       } });
	
}
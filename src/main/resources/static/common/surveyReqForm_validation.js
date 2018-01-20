/*First Name*/
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

/*Last Name*/
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

/*MObileNumber*/
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

/*EmailAddress*/
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
			if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(fName)) {
				return (true)
			}
			//$("#emailApended").remove(); 
		}
	} 
}

function removeEmail()
{
	$("#emailApended").remove();
}
/*AadharNo*/
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

/*Location*/
function validateLocation() {
	var locationNo = $("#locationId").val();
	var length = $('#locationApended').length;
	if (length == 0) {
		if (locationNo == "") {
			$("#locId")
					.append(
							'<div id="locationApended" style="color:red;"> Enter Location Number</div>')
					.show(); 
		} else {
			$("#locationApended").remove();
		}

	}
}

function removeLocation(){
	$("#locationApended").remove();
}

/*aprtId*/
function validateApart() {
	var aadharNo = $("#apartmentId").val();
	var length = $('#apartApended').length;
	if (length == 0) {
		if (aadharNo == "") {
			$("#aprtId")
					.append(
							'<div id="apartApended" style="color:red;"> Enter Apartment Number</div>')
					.show(); 
		} else {
			$("#apartApended").remove();
		}
	}
}

function removeApart(){
	$("#apartApended").remove();
}

/*wardNo*/
function validateWard() {
	var wardNo = $("#wardId").val();
	var length = $('#wardApended').length;
	if (length == 0) {
		if (wardNo == "") {
			$("#wardNo")
					.append(
							'<div id="wardApended" style="color:red;"> Enter Ward Number</div>')
					.show(); 
		} else {
			$("#wardApended").remove();
		}
	}
}

function removeWard(){
	$("#wardApended").remove();
}

/*zoneNo*/
function validateZone() {
	var zoneNo = $("#zoneId").val();
	var length = $('#zoneApended').length;
	if (length == 0) {
		if (zoneNo == "") {
			$("#zoneNo")
					.append(
							'<div id="zoneApended" style="color:red;"> Enter Ward Number</div>')
					.show(); 
		} else {
			$("#zoneApended").remove();
		}
	}
}

function removeZone(){
	$("#zoneApended").remove();
}

/*roadNo*/
function validateRoad() {
	var roadNo = $("#roadId").val();
	var length = $('#roadApended').length;
	if (length == 0) {
		if (roadNo == "") {
			$("#roadNo")
					.append(
							'<div id="roadApended" style="color:red;"> Enter Road</div>')
					.show(); 
		} else {
			$("#roadApended").remove();
		}
	}
}

function removeRoad(){
	$("#roadApended").remove();
}

/*localityNo*/
function validateLocality() {
	var roadNo = $("#localityId").val();
	var length = $('#localityApended').length;
	if (length == 0) {
		if (roadNo == "") {
			$("#localityNo")
					.append(
							'<div id="localityApended" style="color:red;"> Enter Locality</div>')
					.show(); 
		} else {
			$("#localityApended").remove();
		}
	}
}

function removeLocality(){
	$("#localityApended").remove();
}

function validatePropertyNo(){
	
	var lName = $("#propertyNo").val();
	var length = $('#propertyNo').length;
	var length2 = $('#propertyErr').length;
	
	if(length2 == 0){
		if (length == 0 || lName == "") {
			$("#propertyDiv")
					.append(
							'<div id="propertyErr" style="color:red;">Enter Property number</div>')
					.show(); 
		}
	} else {
		$("#propertyErr").remove();
	}
	
	
	
}

function removePropertyNo(){
	$("#propertyErr").remove();
}




function validateWaterNo(){
	debugger
	var lName = $("#waterConnNo").val();
	var length = $('#waterConnNo').length;
	var length2 = $('#waterErr').length;
	
	if(length2 == 0){
		if (length == 0 || lName == "") {
			$("#waterDiv")
					.append(
							'<div id="waterErr" style="color:red;">Enter Water number</div>')
					.show(); 
		}
	} else {
		$("#waterErr").remove();
	}
	
	
	
}

function removeWaterNo(){
	$("#waterErr").remove();
}




function validateLicensceNo(){
	var lName = $("#licNo").val();
	var length = $('#licNo').length;
	var length2 = $('#licensceErr').length;
	
	if(length2 == 0){
		if (length == 0 || lName == "") {
			$("#licenscediv")
					.append(
							'<div id="licensceErr" style="color:red;">Enter Licensce number</div>')
					.show(); 
		}
	} else {
		$("#licensceErr").remove();
	}
	
	
	
}

function removeWaterNo(){
	$("#licensceErr").remove();
}





<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<input type="hidden" name="propULBId" id="propULBId" />

<div class="row">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.title" /> :<span class="astric">*</span></label>
		<div id="fname" class="col-md-3 col-sm-12 col-xs-12">
			<form:input path="applicantFirstName" id="applicantFirstName"  required="required" class=" form-control" placeholder="First Name"  onkeypress="removeFname()"/>
			<form:hidden path="lookupDetIdApplicatType" id="lookupDetIdApplicatType"  />
		</div>
		<div class="col-md-3 col-sm-12 col-xs-12">
		<form:input path="applicantMiddName" id="applicantMiddName"  class=" form-control" placeholder="Middle Name"/>
		</div>
		<div id="lname" class="col-md-4 col-sm-12 col-xs-12">
		<form:input path="applicantLastName" id="applicantLastName" required="required" class=" form-control" placeholder="Last Name"  onkeypress="removeLname()"/>
		</div>
	</div>
</div>
<div class="row">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.mobno" /> :<span class="astric">*</span></label>
		<div id="mobileNo" class="col-md-4 col-sm-12 col-xs-12">
			<form:input path="applicantMobile" id="applicantMobile" required="required" maxlength="10" class=" form-control"  onkeypress="return isNumber(event)"/>
		</div>

		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.emailid" /> :<span class="astric">*</span></label>
		<div id="emailId" class="col-md-4 col-sm-12 col-xs-12">
			<form:input pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required" path="applicantEmail" id="applicantEmail"  class=" form-control"  />
		</div>
	</div>
</div>

<div class="row">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.aadharno" /> :<span class="astric">*</span></label>
		<div id="aadharnumber" class="col-md-4 col-sm-12 col-xs-12">
			<form:input path="aadharNo" id="aadharNo" maxlength="12" required="required" class=" form-control"   onkeypress="return isNumberAadhar(event)"/>
		</div>

		<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.appadd" />:</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<form:textarea path="applicantAddress" id="applicantAddress" class="form-control"/>
			 
		</div>
	</div>
</div>
<div class="row">
	<div class="form-group col-md-12 col-sm-12 col-xs-12">
		<label id="orgName" for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.orgname" />:</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<form:input path="organisationName" id="organisationName"  class=" form-control"/>
		</div>

		<label id="orgAdd" for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.appdetail.orgadd" />:</label>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<form:textarea path="organisationAddress" id="organisationAddress" class="form-control"/>
		</div>
	</div>
</div>





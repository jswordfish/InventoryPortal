<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor"
	prefix="compress"%>

<compress:html>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
    .error{
        color: red !important;
    }
    .has-error .form-control {
    border-color: red !important;
   }
    </style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Government of Maharashtra</title>

<link rel="icon" href="images/favicon.ico">
<jsp:include page="../homeheader.jsp" />
</head>
<body>
	<jsp:include page="../citizenHeaderTop.jsp" />

	<div class="prop-section">

		<div class="container">
			<div class="form-title">
				<h1>
					<spring:message
						code="label.service.changepartnerservice.parterTitle" />
				</h1>
				<span class="home-icon"><i class="fa fa-home"></i></span>
			</div>
			<!-- Smart Wizard -->

			<div>
				<div class="ulb-section">
					<div class="toggle-header" data-target="#application-details">
						<h2 class="StepTitle">
							<spring:message
								code="label.service.changepartnerservice.applicantpagetitle" />
							<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
						</h2>
					</div>

					<form:form action="" method="POST" modelAttribute="applicationBean"
						id="frmData">
						<div id="application-details">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="form-input-group clearfix">

										<label class="col-md-2 col-sm-12 col-xs-12" for="ulb-name">
											<spring:message
												code="label.service.propertytransfer.applicantulbName" /><span
											class="required">*</span>:
										</label>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<form:input type="hidden" path="" id="licNo"
												value="${licNo }" />
											<form:hidden path="" id="ulbIdDeschide"
												value="${ulbIdDeschide }" />
											<form:hidden path="" id="servDeschide"
												value="${servDeschide }" />
											<form:select class=" form-control" path="ulbIdDesc"
												id="ulbIdDesc" required="required">
												<form:option value="">Select ULB</form:option>
											</form:select>
										</div>
									</div>
									<!-- form-input-group  -->
								</div>
								<!-- col-md-12 -->
							</div>
							<!-- row -->

							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="form-input-group clearfix">
										<label class="col-md-2 col-sm-12 col-xs-12" for="ulb-name">
											<spring:message
												code="label.service.propertytransfer.applicantserviceName" />:
										</label>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<input class=" form-control" id="setServiceId1"
												disabled="disabled" />
											<form:select class=" form-control" path="setServiceId"
												id="setServiceId" readonly="true" style="display: none">
												<form:option value="" readonly="true">
													Select Service Name
												</form:option>
											</form:select>
										</div>
									</div>
									<!-- form-input-group -->
								</div>
								<!-- col-md-12 col-sm-12 col-xs-12 -->
							</div>
							<!--  row -->

							<jsp:include page="applicant-details.jsp" />
						</div>
					</form:form>

					<jsp:include
						page="../../servicewise/change-number-of-partner-service.jsp" />
                 <form:form modelAttribute="filesBean"  method="post" enctype="multipart/form-data" action=" " id="checkListForm1"> 
					<jsp:include page="checklist.jsp" />

					<div class="toggle-header" data-target="#charges-details">
						<h2 class="StepTitle">
							<spring:message code="label.service.propertytransfer.charges" />
							<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
						</h2>
					</div>

					
						<div id="charges-details">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.service.propertytransfer.charges" />:
								</label>

								<div class="col-md-4 col-sm-12 col-xs-12">
									<input type="text"
										id="Charges" name="finalAmount"
										readonly="readonly" class="form-control" required="required">
								</div>
								<!--  
								<div class="col-md-4 col-sm-12 col-xs-12">
									<button type="button" id="payCharges" class="btn"><spring:message code="label.service.propertytransfer.pay"/></button>
								</div>
								-->
							</div>
						</div>
			</form:form> 

					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="actionBar">
								<button type="button" id="submit" class="btn">
									<spring:message code="label.btn.submit" />
								</button>
								<input class="btn" type="reset"
									value="<spring:message code="label.btn.reset" />">
							</div>
						</div>
						<!-- col-md-6 col-sm-12 col-xs-12  -->
					</div>
					<!-- row -->
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="jsFooter.jsp" />
	<jsp:include page="../citizenFooter.jsp" />
	
	
	
	<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
	<c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
	<c:url var="jsonSearchUrl" value="/duplicate/search" />
	<c:url var="jsonSearchUrl1" value="/transferLic/search" />
	<c:url var='sendNoDuePayProperty' value='/common/application/save' />
	<c:url var="jsonChargesUrl" value="/market1/charge" />
	<c:url var="searchLicenDet" value="/duplicate/viewSearch" />
	<c:url var="jsonMarketChecklistUrl" value="/market/saveChecklist" />
	<c:url var="getDetails" value="/transferLic/getDetails" />
	<c:url var="getTransferTypeOtherData" value="/transferLic/getTransferTypeOtherData" />
	<c:url var="saveData" value="/transferLic/saveNoOfPartnersRequestData" />

	<script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
	
	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
	<script src="<c:url value="/maha-dma/js/app.js"/>"></script>

	
	<script src="<c:url value="/js/applicant_validation.js" />"></script>
	<c:url var="getTryList" value="/market/getTryList" />
	<c:url var='jsonLookupDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupDet' />
	<c:url var='jsonLookupHierDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupHeirDet' />
	<script src="<c:url value="/js/applicant_validation.js" />"></script>
	<script>
	     getULBListIDnDesc("${jsonULBListUrl}", "ulbIdDesc");
	    getServiceList("${jsonServiceListUrl}", "setServiceId");
	    var searchLicenDet = "${searchLicenDet}";
	    var jsonSearchUrl = "${jsonSearchUrl}";
	    var jsonSearchUrl1 = "${jsonSearchUrl1}";
	    var sendNoDuePayProperty = "${sendNoDuePayProperty}";
	    var jsonChargesUrl = "${jsonChargesUrl}";
	    var searchLicenDet = "${searchLicenDet}";
	    var jsonMarketChecklistUrl = "${jsonMarketChecklistUrl}";
	    var jsonLookupDetUrl = "${jsonLookupDetUrl}";
	    var jsonLookupHierDetUrl = "${jsonLookupHierDetUrl}";
	    var getTryList = "${getTryList}";
	</script>
	<script src="<c:url value="/tradeLicense/js/tradeLicenseService.js" />"></script>
</body>
<script>

$(document).ready(function() {
	
	
	
	$(document).on('click', '.toggle-header', function(e) {
	    $content = $($(this).data('target'));
	    if (!$content.is(':visible')) {
	        $content.slideDown('slow');
	        $(this).find('i.toggle-icon span').html('keyboard_arrow_up')
	    } else {
	        $content.slideUp('slow');
	        $(this).find('i.toggle-icon span').html('keyboard_arrow_down')
	    }
	});

    $("#licNO").val($("#licenseNo").val());
    var serviceId = $("#servDeschide").val();
    $("#setServiceId1").val($('#setServiceId').find('option[value="' + serviceId + '"]').text());
    $("#setServiceId").val($("#servDeschide").val());
    if ($("#ulbIdDeschide").val() != "0") {
        $("#ulbIdDesc").val($("#ulbIdDeschide").val());
    }
    
    $("#searchLicenDet").click(function(e) {
        var ulbId = $("#ulbIdDesc").val().split("|");
        var ulb = ulbId[0];
        if (parseInt(ulb) > 0) {

            $('#frmData').attr('action', searchLicenDet);
            $("#frmData").submit();
        } else {
            $('#ulbIdDesc').focus().select().css('border-color', 'red');
            alert("Please Select ULB Name");
        }
    });
    
    load();
});



function load() {
    $.ajax({
        type: "POST",
        url: "${jsonLookupDetUrl}",
        contentType: "application/json",
        dataType: 'json',
        // data : "deptId="+aaa,
        async: false,
        headers: {
            "Authorization": "Basic " + btoa("ashok:pass")
        },
        success: function(data) {
            var lookupId;
            $.each(data.resultData, function(i, result) {
                if (result.lookupDetValue == 'CRY') {
                    lookupId = result.lookupDetId;
                    $.ajax({
                        type: "POST",
                        url: "${jsonLookupHierDetUrl}",
                        contentType: "application/json",
                        dataType: 'json',
                        async: false,
                        headers: {
                            "Authorization": "Basic " + btoa("ashok:pass")
                        },
                        success: function(data) {

                            $("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry").empty();
                            $("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry").append(
                                $("<option></option>").attr("value", '').text('Please select'));
                            $.each(data.resultData, function(i, result) {
                                if (lookupId == result.lookupDetId) {
                                    $("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry").append(
                                        $("<option></option>").attr("value", result.lookupDetHierId).text(result.lookupDetHierDescEn));
                                }
                            });
                        }
                    });
                }
            });

        },

    });
}

function getState(val) {

    $.ajax({
        type: "GET",
        url: "${getTryList}",
        data: "parentId=" + val,
        dataType: "json",
        success: function(data) {
            var newArray = [];
            var totCol = 0;
            $("#state").empty();
            $("#state").append(
                $("<option></option>").attr("value", '').text(
                    'Please select'));
            $.each(data.resultData, function(i, result) {

                $("#state").append(
                    $("<option></option>").attr("value",
                        result.lookupDetHierId).text(
                        result.lookupDetHierDescEn));

            });

        }

    });
}

function getDistrict(val) {

    $.ajax({
        type: "GET",
        url: "${getTryList}",
        data: "parentId=" + val,
        dataType: "json",
        success: function(data) {
            var newArray = [];
            var totCol = 0;
            $("#district").empty();
            $("#district").append(
                $("<option></option>").attr("value", '').text(
                    'Please select'));
            $.each(data.resultData, function(i, result) {

                $("#district").append(
                    $("<option></option>").attr("value",
                        result.lookupDetHierId).text(
                        result.lookupDetHierDescEn));

            });

        }

    });
}

function getTaluka(val) {

    $.ajax({
        type: "GET",
        url: "${getTryList}",
        data: "parentId=" + val,
        dataType: "json",
        success: function(data) {

            // window.location="${suceesSavePropDataUrl}";

            // console.log("VAL: "+data.resultData[0].applicantName);

            var newArray = [];
            var totCol = 0;
            $("#taluka").empty();
            $("#taluka").append(
                $("<option></option>").attr("value", '').text(
                    'Please select'));
            $.each(data.resultData, function(i, result) {

                $("#taluka").append(
                    $("<option></option>").attr("value",
                        result.lookupDetHierId).text(
                        result.lookupDetHierDescEn));

            });

        }

    });
}

function getCity(val) {

    $.ajax({
        type: "GET",
        url: "${getTryList}",
        data: "parentId=" + val,
        dataType: "json",
        success: function(data) {

            // window.location="${suceesSavePropDataUrl}";

            // console.log("VAL: "+data.resultData[0].applicantName);

            var newArray = [];
            var totCol = 0;
            $("#city").empty();
            $("#city").append(
                $("<option></option>").attr("value", '').text(
                    'Please select'));
            $.each(data.resultData, function(i, result) {

                $("#city").append(
                    $("<option></option>").attr("value",
                        result.lookupDetHierId).text(
                        result.lookupDetHierDescEn));

            });

        }

    });
}

var data = {
		
	partner_birthdate : "",
	ulbId : "",
    licenseNo :"",
    srn_id :"",
    srNumber : "",
	serviceId : "",
    ttTlsLicenseHolders: []
};
// saving data

var retrievingCount;



function payProperty() {
    var datavar = $("#frmData").serializeObject();
    console.log(" >>> datavar <<< " + datavar);
    var json_string = JSON.stringify(datavar);
    console.log(" >>> json_string <<< " + json_string);
    var datavar = removeEmptyValueFromJSON(json_string);
    console.log(" >>> datavar <<< " + datavar);

    $.ajax({
        type: "POST",
        url: "${sendNoDuePayProperty}",
        contentType: "application/json; charset=UTF-8",
        dataType: 'json',
        data: datavar,
        async: false,
        success: function(data2) {
        	data.ulbId=data2.ulbId,
        	data.srn_id=data2.srn_id,
        	data.srNumber=data2.srNumber,
        	data.serviceId= data2.serviceId
        
        }

    });
}

function removeEmptyValueFromJSON(reqArr) {
    for (var key in reqArr) {
        if (reqArr[key] == undefined || reqArr[key] == '') {
            delete reqArr[key];
        }
        for (var inKey in reqArr[key]) {
            if (reqArr[key][inKey] == undefined || reqArr[key][inKey] == '') {
                delete reqArr[key][inKey];
            }
        }
    }
    return reqArr;
}


// if (addValidations()) {
function add(data) {
    $.ajax({
        type: "POST",
        url: "${saveData} ",
        contentType: "application/json",
        dataType: 'json',
        data: JSON.stringify(data),
        async: false,
        success: function(data) {

            PNotify.removeAll();
            new PNotify({
                title: 'Saved Successfully.',
                styling: 'bootstrap3',
                type: 'success',
                animate_speed: 'fast'
            });

        },
        statusCode: {
            403: function() {
                PNotify.removeAll();
                new PNotify({
                    title: 'Session Expire. Please Re-Login...',
                    styling: 'bootstrap3',
                    type: 'error'
                });
                setTimeout(
                    function() {
                        window.location.href = "/";
                    },
                    2000);
            }
        },
        error: function(e) {
            console.log("ERROR: ", e.responseText);
            console.log("ERROR: ", e);
            PNotify.removeAll();

            // display(e);
            new PNotify({
                title: 'Request Not Process... ',
                styling: 'bootstrap3',
                type: 'error'
            });
            return false;
        }
    }); // ajax end

    // }//if

}
// saving end



! function(e) {
    var t = function(t, n) {
        this.$element = e(t), this.type = this.$element.data("uploadtype") || (this.$element.find(".thumbnail").length > 0 ? "image" : "file"), this.$input = this.$element.find(":file");
        if (this.$input.length === 0) return;
        this.name = this.$input.attr("name") || n.name, this.$hidden = this.$element.find('input[type=hidden][name="' + this.name + '"]'), this.$hidden.length === 0 && (this.$hidden = e('<input type="hidden" />'), this.$element.prepend(this.$hidden)), this.$preview = this.$element.find(".fileupload-preview");
        var r = this.$preview.css("height");
        this.$preview.css("display") != "inline" && r != "0px" && r != "none" && this.$preview.css("line-height", r), this.original = {
            exists: this.$element.hasClass("fileupload-exists"),
            preview: this.$preview.html(),
            hiddenVal: this.$hidden.val()
        }, this.$remove = this.$element.find('[data-dismiss="fileupload"]'), this.$element.find('[data-trigger="fileupload"]').on("click.fileupload", e.proxy(this.trigger, this)), this.listen()
    };
    t.prototype = {
        listen: function() {
            this.$input.on("change.fileupload", e.proxy(this.change, this)), e(this.$input[0].form).on("reset.fileupload", e.proxy(this.reset, this)), this.$remove && this.$remove.on("click.fileupload", e.proxy(this.clear, this))
        },
        change: function(e, t) {
            if (t === "clear") return;
            var n = e.target.files !== undefined ? e.target.files[0] : e.target.value ? {
                name: e.target.value.replace(/^.+\\/, "")
            } : null;
            if (!n) {
                this.clear();
                return
            }
            this.$hidden.val(""), this.$hidden.attr("name", ""), this.$input.attr("name", this.name);
            if (this.type === "image" && this.$preview.length > 0 && (typeof n.type != "undefined" ? n.type.match("image.*") : n.name.match(/\.(gif|png|jpe?g)$/i)) && typeof FileReader != "undefined") {
                var r = new FileReader,
                    i = this.$preview,
                    s = this.$element;
                r.onload = function(e) {
                    i.html('<img src="' + e.target.result + '" ' + (i.css("max-height") != "none" ? 'style="max-height: ' + i.css("max-height") + ';"' : "") + " />"), s.addClass("fileupload-exists").removeClass("fileupload-new")
                }, r.readAsDataURL(n)
            } else this.$preview.text(n.name), this.$element.addClass("fileupload-exists").removeClass("fileupload-new")
        },
        clear: function(e) {
            this.$hidden.val(""), this.$hidden.attr("name", this.name), this.$input.attr("name", "");
            if (navigator.userAgent.match(/msie/i)) {
                var t = this.$input.clone(!0);
                this.$input.after(t), this.$input.remove(), this.$input = t
            } else this.$input.val("");
            this.$preview.html(""), this.$element.addClass("fileupload-new").removeClass("fileupload-exists"), e && (this.$input.trigger("change", ["clear"]), e.preventDefault())
        },
        reset: function(e) {
            this.clear(), this.$hidden.val(this.original.hiddenVal), this.$preview.html(this.original.preview), this.original.exists ? this.$element.addClass("fileupload-exists").removeClass("fileupload-new") : this.$element.addClass("fileupload-new").removeClass("fileupload-exists")
        },
        trigger: function(e) {
            this.$input.trigger("click"), e.preventDefault()
        }
    }, e.fn.fileupload = function(n) {
        return this.each(function() {
            var r = e(this),
                i = r.data("fileupload");
            i || r.data("fileupload", i = new t(this, n)), typeof n == "string" && i[n]()
        })
    }, e.fn.fileupload.Constructor = t, e(document).on("click.fileupload.data-api", '[data-provides="fileupload"]', function(t) {
        var n = e(this);
        if (n.data("fileupload")) return;
        n.fileupload(n.data());
        var r = e(t.target).closest('[data-dismiss="fileupload"],[data-trigger="fileupload"]');
        r.length > 0 && (r.trigger("click.fileupload"), t.preventDefault())
    })
}(window.jQuery)

function GetDateFormat(date) {
    var month = (date.getMonth() + 1).toString();
    month = month.length > 1 ? month : '0' + month;
    var day = date.getDate().toString();
    day = day.length > 1 ? day : '0' + day;
    return day + '/' + month + '/' + date.getFullYear();
}

$(document).on('change', '.btn-file :file', function() {
    var input = $(this),
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [label]);
});

$('.btn-file :file').on('fileselect', function(event, label) {

    var input = $(this).parents('.input-group').find(':text'),
        log = label;

    if (input.length) {
        input.val(log);
    } else {
        if (log) alert(log);
    }

});

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('#img-upload').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$("#imgInp").change(function() {
    readURL(this);
});
$(document).on('click', '#isCorrospondence', function(){  
	   if($("#isCorrospondence").prop('checked') == true){
		   $("#partner_correspondence_address").val(" ");
		    $("#partner_correspondence_address").val($("#partner_address").val());
		}else{
			 $("#partner_correspondence_address").val(" ");
		}
			
	   
});

$("#partner_address").keyup(function(){
	   if($("#isCorrospondence").prop('checked') == true){
		   $("#partner_correspondence_address").val(" ");
		    $("#partner_correspondence_address").val($("#partner_address").val());
		}
});

$(document).on("click", ".btnDeleted1", function() {
    console.log("remove");
    console.log("r count " + retrievingCount);
    console.log("table length " + $('#ownerDetailstbl tr').length);
    var index = $('#ownerDetailstbl tr').length - retrievingCount - 1;
    console.log("index " + index);

    data.ttTlsLicenseHolders.splice(index, 1);


    console.log("array length  " + data.ttTlsLicenseHolders.length);
});


$("#addDiv").click(function() {
  
        if (AddValidations()) {
            var ulbId = $("#ulbIdDesc").val().split("|");
            console.log("licenno " + $("#licenseno").val());

            data.licenseNo=$("#licenseno").val();
            data.partner_birthdate=$("#partner_birthdate").val();
            data.ttTlsLicenseHolders.push({
                "tmUlb": {
                    "ulbId": parseInt(ulbId[0]),
                },
                "ttTlsLicense": {
                    "licenseNo": $("#licenseno").val(),
                },
                "holderType": 'O',
                "tmCmLookupDetByLookupDetIdHolderSubtype": {
                    "lookupDetId": parseInt($("#partner_subtype").val())
                },
                "tmCmLookupDetByLookupDetIdGenderId": {
                    "lookupDetId": parseInt($("#partner_gender").val())
                },
                "tmCmLookupDetByLookupDetIdTitleId": parseInt($("#partner_title").val()),
                "firstNameEn": $("#partner_fisrtname").val(),
                "middleNameEn": $("#partner_middlename").val(),
                "lastNameEn": $("#partner_lastname").val(),
                "firstNameRg": $("#partner_l_firstname").val(),
                "middleNameRg": $("#partner_l_middlename").val(),
                "lastNameRg": $("#partner_l_lastname").val(),
                "tmCmLookupDetHierarchicalByLookupDetHierId3ResiDist": {
                    "lookupDetHierId": parseInt($("#district").val()),
                },
                "tmCmLookupDetHierarchicalByLookupDetHierId2ResiState": {
                    "lookupDetHierId": parseInt($("#state").val()),
                },
                "tmCmLookupDetHierarchicalByLookupDetHierId5ResiCity": {
                    "lookupDetHierId": parseInt($("#city").val()),
                },
                "tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry": {
                    "lookupDetHierId": parseInt($("#tmCmLookupDetHierarchicalByLookupDetHierId1ResiCntry").val()),
                },
                "tmCmLookupDetHierarchicalByLookupDetHierId4ResiTalu": {
                    "lookupDetHierId": parseInt($("#taluka").val()),
                },
                "residentialAddress": $("#partner_address").val(),
                "correspondenceAddress": $("#partner_correspondence_address").val(),
                "resiPincode": $("#partner_pincode").val(),
                "contactNo1": $("#partner_phoneno").val(),
                "mobileNo": $("#partner_mobileno").val(),
                "holderUid": $("#partner_aadharno").val(),
                "emailAddress": $("#partner_emailid").val()
            });

            console.log("array length  " + data.ttTlsLicenseHolders.length);
             $('#ownerDetailstbl tbody').append('<tr><td>' +$("#partner_fisrtname").val()+" "+$("#partner_middlename").val()+" "+$("#partner_lastname").val()+ '</td><td>' +$("#partner_aadharno").val() + '</td><td>' + $("#partner_address").val()+ '</td><td>' +$("#partner_mobileno").val()+ '</td><td>' + $("#partner_emailid").val()+ '</td><td>Added</td><td style="text-align: center;"> <span><a><i class="fa fa-plus btnAdded" aria-hidden="true"></i></a></span><span>/</span><span><a><i class="fa fa-minus btnDeleted1"  aria-hidden="true"></i></a></span> </td> </tr> ');
             $('#owner-details').slideUp(400);
             document.getElementById("transferLicense").reset();
        } // if
    
});


$(document).on('click', '#submit', function() {
   if (submitApplicantValidations() && validateCheckList()) {
       payProperty();
       console.log("called");
       add(data);
       console.log("called");
       saveChecklist();
       console.log("called");
    }
});

function saveChecklist() {
    var saveFile = "${jsonMarketChecklistUrl}";
    // $("#checkListForm1").submit();
    $('#checkListForm1').attr('action', saveFile);
    $("#checkListForm1").submit();
}
// search license details

$(function() {
    $('#licenseno').bind("blur", function(event) {
        var licNo = $(this).val();
        var ulbId = $("#ulbIdDesc").val().split("|");
        if (ulbId[0] > 0) {
            if (!!licNo) {
                $.ajax({
                    type: "GET",
                    url: "${jsonSearchUrl}",
                    dataType: 'json',
                    data: "licNO=" + licNo + "&ulbId=" + ulbId[0],
                    async: false,
                    success: function(data) {
                        if (!!data) {
                            $('#license_business_name').val(data.businessName);
                            $('#license_holder_name').val(data.title + " " + data.ttTlsLicHold.firstNameEn + " " + data.ttTlsLicHold.middleNameEn + " " + data.ttTlsLicHold.lastNameEn);
                            $('#license_partnertype').val(data.licenType);
                            $("#license_fromdate").val(GetDateFormat(new Date(data.renewalfromDate)));
                            $("#license_todate").val(GetDateFormat(new Date(data.renewaltoDate)));
                            if (!!data.propertyDues) {
                                $('#license_dues').val(data.propertyDues);
                            } else {
                                $("#license_dues").css("display", "none");
                            }

                            charges();
                            var serviceId = $("#servDeschide").val();
                            if (parseInt(serviceId) == 23) {
                                getDetails();
                            } else {
                                getTransferTypeOtherData();
                            }


                            tableData();
                        } else {
                            console.log("Please fill Proper data");
                        }

                    },
                    statusCode: {
                        403: function() {
                            PNotify.removeAll();
                            new PNotify({
                                title: 'Session Expire. Please Re-Login...',
                                styling: 'bootstrap3',
                                type: 'error'
                            });
                            setTimeout(
                                function() {
                                    window.location.href = "/";
                                },
                                2000);
                        }
                    },
                    error: function(e) {
                        /*
						 * $('#license_holder_name').val('');
						 * $('#license_fromdate').val('');
						 * $('#license_todate').val('');
						 * $('#license_business_name').val('');
						 * $('#license_ownership_type').val('');
						 * $('#license_partnertype').val('');
						 * $('#license_dues').val('');
						 * $('#business_oldname').val('');
						 * $('#business_newname').val('');
						 * $('#charges').val('');
						 */

                        PNotify.removeAll();

                        new PNotify({
                            title: 'Enete Valid License Number... ',
                            styling: 'bootstrap3',
                            type: 'error'
                        });
                        return false;
                    }


                });

            } else {
                alert("Please fill License No");
                $('#licNO').focus().css('border-color', 'red');
            }
        } else {

            $('#ulbIdDesc').focus().select().css('border-color', 'red');

        }

    });

});


// table data
function tableData() {
    var licNo = $("#licenseno").val();
    var ulbId = $("#ulbIdDesc").val().split("|");
    if (ulbId[0] > 0) {
        if (!!licNo) {
            $.ajax({
                type: "GET",
                url: "${jsonSearchUrl1}",
                dataType: 'json',
                data: "licNO=" + licNo + "&ulbId=" + ulbId[0],
                async: false,
                success: function(data) {


                    retrievingCount = data.length;
                    if (!!data) {
                        var ownerType;
                        $('#ownerDetailstbl tbody').html('');

                        $.each(data, function(i, result) {
                            if (result.holderType == "M") {
                                ownerType = "Primary";

                            }
                            if (result.holderType == "O") {
                                ownerType = "Secondary";
                            }
                            $('#ownerDetailstbl tbody').append('<tr><td>' +result.firstNameEn+" "+result.middleNameEn+" "+result.lastNameEn+ '</td><td>' +result.holderUid + '</td><td>' + result.residentialAddress+ '</td><td>' +result.mobileNo + '</td><td>' + result.emailAddress+ '</td><td>Unchanged</td><td style="text-align: center;"> <span><a><i class="fa fa-plus btnAdded" aria-hidden="true"></i></a></span><span>/</span><span><a><i class="fa fa-minus btnDeleted1" id="' + result.holderId + '" aria-hidden="true"></i></a></span> </td> </tr> ');
                            


                        });



                    } else {
                        console.log("Please fill Proper data");
                    }

                },
                statusCode: {
                    403: function() {
                        PNotify.removeAll();
                        new PNotify({
                            title: 'Session Expire. Please Re-Login...',
                            styling: 'bootstrap3',
                            type: 'error'
                        });
                        setTimeout(
                            function() {
                                window.location.href = "/";
                            },
                            2000);
                    }
                },
                error: function(e) {


                    PNotify.removeAll();

                    new PNotify({
                        title: 'Error getting type and subtype... ',
                        styling: 'bootstrap3',
                        type: 'error'
                    });
                    return false;
                }


            });

        } else {
            alert("Please fill License No");
            $('#licNO').focus().css('border-color', 'red');
        }
    } else {

        $('#ulbIdDesc').focus().select().css('border-color', 'red');

    }
}



// charges

function charges() {

    var noOfCopies = 1;
    var ulbId = $("#ulbIdDesc").val().split("|");
    console.log("ulbId " + ulbId[0]);

    var licNo = document.getElementById("licenseno").value;
    console.log("license " + licNo);
    $.ajax({
        type: "GET",
        url: "${jsonChargesUrl}",
        // contentType : "application/json",
        dataType: 'json',
        // data: finalArry,
        // async: false,
        data: "noCopy=" + noOfCopies + "&licNO=" + licNo + "&ulbId=" + ulbId[0],
        async: false,
        success: function(data) {
            if (data > 0) {
                console.log("charges " + data);
                $('#Charges').val(data);
            } else {
                $('div [data-target="#charges-details"]').css("display", "none");
                $("#charges-details").css("display", "none");
            }



        }

    });
}
// getting type and subtype
function getDetails() {

    $.ajax({
        type: "GET",
        url: "${getDetails}",
        // contentType : "application/json",
        dataType: 'json',
        async: false,
        success: function(data) {
            if (!!data) {
                console.log(data);
                console.log(data[0]);
                console.log(data[1]);
                $("#transfer_type").val(data[0] + "/" + data[1]);

            }
        }
    });
}

function getTransferTypeOtherData() {

    $.ajax({
        type: "GET",
        url: "${getTransferTypeOtherData}",
        // contentType : "application/json",
        dataType: 'json',
        async: false,
        success: function(data) {
            if (!!data) {
                console.log(data);
                console.log(data[0]);
                console.log(data[1]);
                $("#transfer_type").val(data[0] + "/" + data[1]);

            }
        }
    });
}
// validationssss
function SubmitValidations() {

    jQuery.validator.addMethod('selectUlb', function(value) {
        return (value != '0');
    }, "Please select ULB Name");

    $.validator.addMethod("mailID", function(value, element) {
        return this.optional(element) ||
            /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(value);
    }, "Please Enter Valid Email Id ");

    $("#frmData").validate({
        rules: {
            ulbIdDesc: {
                selectboxx2: true
            },
            licenseno: {
                required: true
            },
            business_newname: {
                required: true
            },
            applicantFirstName: {
                required: true
            },
            applicantLastName: {
                required: true
            },
            applicantMobile: {
                required: true,
                digits: true
            },
            applicantEmail: {
                required: true,
                mailID: true
            },
            aadharNo: {
                required: true,
                digits: true
            }
        },
        messages: {

            licenseno: {
                required: "Please enter license no"
            },
            business_newname: {
                required: " This Field is required"
            },
            applicantFirstName: {
                required: " This Field is required"
            },
            applicantLastName: {
                required: " This Field is required"
            },
            applicantMobile: {
                required: " This Field is required",
                digits: "Please Enter Digits only"
            },
            applicantEmail: {
                required: " This Field is required"
            },
            aadharNo: {
                required: " This Field is required",
                digits: "Please Enter Digits only"
            }
        },
        errorPlacement: function(error, element) {

            if (element.attr("name") == "licenseno") {
                console.log("error");
                error.appendTo(element.parents('.col-md-4'));

            } else {
                error.insertAfter(element);
            }
        },

        highlight: function(element, errorClass, validClass) {
            $(element).parents(".col-md-3").addClass("has-error")
                .removeClass("has-success");
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents(".col-md-3").addClass("has-success")
                .removeClass("has-error");
        }
    });
}
// validations for adding
function AddValidations() {
    jQuery.validator.addMethod('selectVld', function(value) {
        return (value != '0');
    });
    
    $.validator.addMethod("emailID", function(value, element) {
        return this.optional(element) ||
            /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(value);
    }, "Please Enter Valid Email Id ");

    $("#transferLicense").validate({
        rules: {
            owner_type: {
                required: true
            },
         
            partner_aadharno: {
                required: true,
                digits : true,
                minlength : 12,
                maxlength : 12
            },
            owner_gender: {
                required: true
            },
            partner_title: {
                required: true
            },
            partner_title_rg : {
            	required: true
            },
            partner_l_firstname : {
            	required: true
            },
            partner_l_lastname : {
            	required: true
            },
            partner_fisrtname: {
                required: true
            },
            partner_lastname: {
                required: true
            },
            bdate: {
                required: true
            },
            owner_type: {
                required: true
            },
            country: {
                selectVld: true
            },
            status: {
                selectVld: true
            },
            district: {
                selectVld: true
            },
            taluka: {
                selectVld: true
            },
            partner_pincode: {
                required: true,
                digits: true,
                minlength: 6,
                maxlength: 6
            },
            partner_emailid: {
                required: true,
                emailID : true
            },
            partner_mobileno: {
                required: true,
                digits: true,
                minlength: 10,
                maxlength: 10
            },
            partner_phoneno : {
            	digits: true
            },
            partner_correspondence_address : {
            	required: true
            },
            partner_address : {
            	required: true
            }
        },
        messages: {

            owner_type: {
                required: "Please Select Owner Type"
            },
           
            partner_aadharno: {
            	required: "This Field Is Required",
                digits : "Enter Valid Adhar Number",
                minlength : "Enter Valid Adhar Number",
                maxlength : "Enter Valid Adhar Number"
            },
           
            partner_gender: {
                required: "This Field Is Required"
            },
            partner_title: {
                required: "This Field Is Required"
            },
            partner_fisrtname: {
                required: "This Field Is Required"
            },
            partner_lastname: {
                required: "This Field Is Required"
            },
            partner_title_rg : {
            	 required: "This Field Is Required"
            },
            partner_l_firstname : {
            	 required: "This Field Is Required"
            },
            partner_l_lastname : {
            	 required: "This Field Is Required"
            },
            bdate: {
                required: "This Field Is Required"
            },
            resadd: {
                required: "This Field Is Required"
            },
            country: {
                required: "This Field Is Required"
            },
            status: {
                required: "This Field Is Required"
            },
            district: {
                required: "This Field Is Required"
            },
            taluka: {
                required: "This Field Is Required"
            },
            partner_pincode: {
                required: "This Field Is Required",
                digits: "Enter Valid pincode",
                minlength: "Enter Valid pincode",
                maxlength: "Enter Valid pincode"
            },
            partner_emailid: {
                required: "This Field Is Required"
            },
            partner_mobileno: {
                required: "This Field Is Required",
                digits: "Enter Valid Mobile Number",
                minlength: "Enter Valid Mobile Number",
                maxlength: "Enter Valid Mobile Number"
            },
            partner_phoneno : {
            	 digits: "Enter Valid Phone Number"
            },
            partner_correspondence_address : {
            	required: "This Field Is Required"
            },
            partner_address : {
            	required: "This Field Is Required"
            }
        },
        /*
		 * errorPlacement: function(error, element) {
		 * 
		 * if(element.attr("name") == "licenseno") { console.log("error"); //
		 * error.appendTo( element.parent("div").next("div") ); error.appendTo(
		 * element.parents('.col-md-4') ); } else { error.insertAfter(element); } },
		 */
        highlight: function(element, errorClass, validClass) {
            $(element).parents(".col-md-2").addClass("has-error")
                .removeClass("has-success");
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents(".col-md-2").addClass("has-success")
                .removeClass("has-error");
        }
    });

    if ($("#transferLicense").valid()) {

        return true;

    } else {

        return false;
    }
}


$(function() {
    $('#partner_birthdate').datetimepicker({
        format: 'DD/MM/YYYY',
        maxDate: new Date()
    });
});


$(document).on('click', '#chkbx', function() {
    if ($("#chkbx").prop('checked') == true) {
        $("#corraddress").val(" ");
        $("#corraddress").val($("#resadd").val());
    } else {
        $("#corraddress").val(" ");
    }


});
$("#resadd").keyup(function() {
    if ($("#chkbx").prop('checked') == true) {
        $("#corraddress").val(" ");
        $("#corraddress").val($("#resadd").val());
    }
});

</script>


</html>
 </compress:html>
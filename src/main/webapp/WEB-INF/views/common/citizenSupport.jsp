<%--

THIS PAGE USED FOR GIVEN SUPPORTING CODE FOR ALL CITIZEN PAGES

 --%>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
 <%@ page session="false"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%
	response.setContentType("text/html; charset=utf-8");
%>
 

<c:if test="${not empty message}" >
	 <script>
	 var notification = '<spring:message code="label.common.notification" />';
		 new PNotify({
	         title: notification,
	         text: '${message}',
	         type: '${msgtype}',
	         styling: 'bootstrap3',
	         hide: true
	     });
      </script>
</c:if>
 
      
      <!-- Supporting  -->
      <c:url var="jsonOTPUrl" value="/rest/common/otp/getOTP" />
      <c:url var="sucessloginUrl" value="/" />
	<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
	<c:set var='sessionId' value='${pageContext.session.id}' />
	<c:url var='jsonTrackDetailUrl' value='/tracking/rest/search/knowtracking' />
	<c:url var='jsonLoginValidUrl' value='/rest/common/login/isValidUser' />
	<c:url var='validateOTP' value='/rest/common/otp/validateOTP/' />
	<c:url var='isUserExist' value='/rest/common/login/isUserExist' />
	<c:url var='isMobileExist' value='/rest/common/login/isMobileExist' />
	<c:url var='homePage' value='/home' />
	<c:url var='jsonDownloadCertificateUrl' value='/tracking/rest/search/knowdownloading' />
	<c:url var='taxCalData' value='/data/taxJson.json' />
	<%-- <c:url var='servicePage' value='/common/application/add' /> --%>
	<c:url var='servicePage' value='/common/application/showServicePage' />
	<c:url var='tradeServicePage' value='/duplicate/application/showServicePage' />
	<c:url var='jsonServiceListUrl' value='/rest/common/service/servicelist' />
	<c:url var='paymentBillServicePage' value='/common/application/showWaterBillServicePage' />
		
  	<c:url var='getUserFromNum' value='/common/checkNumber' />
  	<c:url var='getOTPnum' value='/common/getOTPnum' />
  	<c:url var='matchOTP' value='/common/matchOTP' />
  	<c:url var='updateNewPass' value='/common/updateNewPass' />
  	<c:url var='home' value='/' />
  	<c:url var='getMoment' value='/tracking/rest/appTrack/getMoment' />
  	<c:url var='searchTrackAppli' value='/tracking/rest/appTrack/searchTrackAppli' />
  	<c:url var='searchServiceListUrl' value='/rest/common/ulb/servlist' />
  	
  	<c:url var='typeDocDrop' value='/tracking/rest/typeDocDrop' />
  	<c:url var='typeDocApi' value='/tracking/rest/typeDocApi' />
  	<c:url var='apiInitial' value="/" />
  	
	 	<script>
 		var jsonULBListUrl = "${jsonULBListUrl}";
 		var jsoncitizenRegUrl = "${jsoncitizenRegUrl}";
 		var jsonTrackDetailUrl = "${jsonTrackDetailUrl}";
 		var jsonOTPUrl = "${jsonOTPUrl}";
 		var validOTPUrl = "${validOTPUrl}";
 		var jsonLoginValidUrl = "${jsonLoginValidUrl}";
  		var validateOTP = "${validateOTP}";
  		var isUserExist = "${isUserExist}";
  		var isMobileExist = "${isMobileExist}";
  		var homePage = "${homePage}";
  		var jsonDownloadCertificateUrl = "${jsonDownloadCertificateUrl}";
  		var csrftoken = "<c:out value="${ctoken}"/>";
  		var propertyEntryForm = "${propertyEntryForm}";
  		var taxCalData = "${taxCalData}";
  		var servicePage = "${servicePage}";
  		var tradeServicePage = "${tradeServicePage}";
  		var paymentBillServicePage = "${paymentBillServicePage}";
  		var getMoment = "${getMoment}";
  		var jsonServiceListUrl = "${jsonServiceListUrl}";
  		var searchTrackAppli = "${searchTrackAppli}"
  		var searchServiceListUrl = "${searchServiceListUrl}";
  		var typeDocDrop = "${typeDocDrop}";
  		var typeDocApi = "${typeDocApi}";
  		var apiInitial ="${apiInitial}";
 	</script>
 	
      <script>
      
      $('.collapse').on('shown.bs.collapse', function(){
    	  $(this).parent().find(".fa-angle-up").removeClass("fa-angle-up").addClass("fa-angle-down");
    	  }).on('hidden.bs.collapse', function(){
    	  $(this).parent().find(".fa-angle-down").removeClass("fa-angle-down").addClass("fa-angle-up");
    	  });
      
      
     $(document).ready(function(){
    	 $('.banner').slick({
    	      arrows: false,
    	      dots:false,
    	      fade:true,
    	      autoplay:true
    	      });
     })
     
     $(document).ready(function() {
	$(window).scroll(function() {
		var sticky = $('header'),
		navbar_bottom = $('.navbar-bottom');
  				header_height =sticky.outerHeight();
			scroll = $(window).scrollTop();
		if (scroll > header_height ) navbar_bottom.addClass('navbar-fixed-top');
		else navbar_bottom.removeClass('navbar-fixed-top');
	});
 
	$('.autoplay').slick({
		  slidesToShow: 6,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  prevArrow: '<i class="fa fa-chevron-left image-left-arrow" aria-hidden="true"></i>',
		    nextArrow: '<i class="fa fa-chevron-right image-right-arrow" aria-hidden="true"></i>'
		});

		$('#forgot-password').click(function(){
				$('#dont-know-pass').show();
				$('#know-password').hide();
		});
		
		$('#goto-login').click(function(){
			$('#dont-know-pass').hide();
			$('#know-password').show();
		});
		
		/* $('#Reg-button').click(function(){
			$('#otpconfirmation').show();
		}); */
});
     
      </script>
      
     
 	
 	<!--  <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script> -->
 	 
	<script src="<c:url value="/maha-dma/js/custom-login.js" />"></script>
 	<script src="<c:url value="/maha-dma/js/custom.js" />"></script> 
 	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
 	
  	<script src="<c:url value="/js/common.min.js" />"></script> 
 	<script src="<c:url value="/home/js/home.min.js" />"></script> 
 	<script src="<c:url value="/home/js/taxcal.min.js" />"></script> 
 	<script src="<c:url value="/home/js/service.min.js" />"></script> 
 	<script>
 		$("#cit").click(function(){
			$(".ulb-drop").hide();
			$('#loginRegBtn').show();
		});
		$("#emp").click(function(){
			$(".ulb-drop").show();
			$('#loginRegBtn').hide();
			
		});
 	</script>
 	
 	<script>

$(document)
		.ready(
				function() {
					getULBListID("${jsonULBListUrl}", "ulbId");
					getServiceList();
					$('#ulbId').on('change', function() {
						$("#ulbId").val(this.value);
					});

					//Click On Forgot Password to get Mobile Number Screen
					$('#forgotPass').click(function() {

						$('.forget-passward-div').show();
						$('.login-1').hide();
					});

					var userId = "";

					//Click On send OTP, to get OTP
					$('#sendOTP')
							.click(
									function() {

										var mobileNumber = $(
												'#enterMobile')
												.val();
										var userName = "";
										var userMobile = "";
										var userEmailId = "";
										$
												.ajax({
													type : "POST",
													url : "${getUserFromNum}",
													data : "number="
															+ mobileNumber,

													success : function(
															response) {

														//alert("Data For Entred Number---"+response);

														$
																.ajax({
																	type : "POST",
																	url : "${getOTPnum}",
																	contentType : "application/json",
																	dataType : 'json',
																	data : response,

																	success : function(
																			response) {

																		//alert("response OTP----"+response);
																		$(
																				'.otp-div')
																				.show();
																		$(
																				'.forget-passward-div')
																				.hide();

																	},

																	error : function() {
																		alert('OTP not genrated !!!!!!!');

																	}
																});

													},

													error : function() {
														alert('You Are Not Register With us.....Please Register !!!!!!!');
														$(
																'.forget-passward-div')
																.hide();
														$(
																'.login-1')
																.show();
													}
												});

									});

					//verfiy OTP send to Your mobile
					$('#verifyOTP')
							.click(
									function() {

										var EnteredOTP = $(
												'#EnteredOTP')
												.val();

										$
												.ajax({
													type : "POST",
													url : "${matchOTP}",
													data : "EnteredOTP="
															+ EnteredOTP,

													success : function(
															response) {
														if (response == 1) {
															$(
																	".resetpass-div")
																	.show();
															$(
																	'.otp-div')
																	.hide();
														} else {
															alert('OTP not Matched !!!!!!!   Please Enter Correct Value');
														}

													},

													error : function() {
														alert('OTP not Matched !!!!!!!');

													}
												});

									});
					$('#setNewPass')
							.click(
									function() {

										var enterNewPass = $(
												'#enterNewPass')
												.val();
										var confirmNewPass = $(
												'#confirmNewPass')
												.val();

										if (enterNewPass == confirmNewPass) {
											alert("Password Update---  Please Login With Your New Password !!!");
											window.location = "${home}";
											/* $.ajax({
												type : "POST",
												url : "${updateNewPass}",
												data : "enterNewPass=" + enterNewPass
														+"&userId=" + userId,
													 
												success : function(response) {
													
												},
												
												error : function() {
													alert('System Issue --- Password Not Updated !!!!!!!');
													
												}
											}); */
										} else {
											alert("Entered Password is not Matched with Confirm Password !!!!!!!");
											$('#enterNewPass')
													.focus();
											return false;
										}
									});
				});
/*-----------------Service list------------------------------*/
function getServiceList() {
	var dataVar = {
		"type" : "All"
	};
	$.ajax({
		type : "POST",
		url : "${jsonServiceListUrl}",
		contentType : "application/json",
		dataType : 'json',
		data : JSON.stringify(dataVar),
		async : false,
		headers : {
			//"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
			"Authorization" : "Basic " + btoa("ashok:pass")
		//"USER":btoa(getUserId(storeInvUser)),
		// "BUSID":btoa(getBussId(storeselectInvBusinessId))
		},
		success : function(data) {
			var row = 1;
			dataSet = [];
			if (parseInt(data.totalRows) > 0) {

				$.each(data.resultData, function(i, result) {
					// $("#"+dropId).append($("<option></option>").val(result.serviceId).html(result.servicNameRg));
					dataSet.push(result);
				});

			} else {
				new PNotify({
					title : 'Data Not Found.',
					styling : 'bootstrap3',
					type : 'error'
				});
			}
		},
		statusCode : {
			403 : function() {
				new PNotify({
					title : 'Session Expire. Please Re-Login...',
					styling : 'bootstrap3',
					type : 'error'
				});
				setTimeout(function() {
					window.location.href = "/";
				}, 2000);
			}
		},
		error : function(e) {
			console.log("ERROR: ", e.responseText);
			console.log("ERROR: ", e);
			//	display(e);
			new PNotify({
							title : 'Request Not Process... ',
							styling : 'bootstrap3',
							type : 'error'
						});
					}
				});

			}
			//------------------end service-------------------
		</script>
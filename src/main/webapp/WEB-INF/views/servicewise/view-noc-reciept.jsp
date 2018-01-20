<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<%-- <%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<% pageContext.setAttribute("currentYear", java.util.Calendar.getInstance().get(java.util.Calendar.YEAR)); %> --%>

<jsp:useBean id="date" class="java.util.Date" />
<fmt:formatDate value="${date}" pattern="yyyy" var="currentYear" />


<compress:html >
<html>

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../common/header.jsp" />




</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<%-- <jsp:include page="../common/leftMenu.jsp" /> --%>

			<!-- page content -->
			<spring:message code="label.please.enter" var="pls" />

			<div class="" role="main" style=" padding-top: 0px;height:100%">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						
						<div class="x_panel">
							<div class="receipt-div">
								<div class="receipt-head">
									<div class="row ulb-details">
										<table border="1" style="width:100%">
											<thead>
												<tr>  
												
				<%-- <table width="100%">
						<tr>
							<td style="text-align:center;font-size: 18px">
								<b >${receipt.ulbName }</b>
							</td>
						</tr>
						<tr>
							<td style="text-align:center;font-size: 18px"><b>Receipt / पावती </b></td>
						</tr>
					</table>								
								 --%>				
												     <td class="ulb-logo" style="width:20%;text-align:center"> <img src="<c:url value="/images/ulb_logo/${receipt.logoName}_logo.png" />" alt=""> </td>
													<%-- <td class="ulb-logo" style="width:20%;text-align:center"><img src="<c:url value="/images/Project/demo_logo.png" />" alt=""></td> --%>
													<td class="ulb-name" style="width:60%;text-align:center" >
													    <span><b >${receipt.ulbName }</b></span> <br /> <br />
													    
														<b>Receipt / पावती </b>
													</td>
													<td class="maha-logo" style="width:20%;text-align:center"><img src="<c:url value="/images/Project/maharashtralogo.png" />" alt=""></td>
												</tr>
												<tr>
													<td class="rec-no" style="width:20% ;text-align:center"><span>Receipt No/ पावती नाही   :${receipt.nocReceiptNo }</span></td>
													<td class="rec-for" style="width:60% ;text-align:center">
													<span> <b>${receipt.deptName}</b></span><br/>
													<span>Receipt For/ पावती   : ${receipt.serviceNameRg }</span></td>
													<td class="rec-date" style="width:20% ;text-align:center"><span>Receipt Date/ पावती तारीख   : ${receipt.nocReceiptDate }</span></td>
												</tr>
												
											</thead>
										</table>
										<table border="1" style="width:100%">
											<thead>
												<tr>
													<td style="text-align:center" colspan="2">Payee Name / कडून मिळाले</td>
													<td style="text-align:left" colspan="4">${receipt.applicantName }</td>
												</tr>
												<tr>
													<td style="text-align:center" colspan="2">Narration Receipt / विवरण </td>
													<td style="text-align:left" colspan="4">${receipt.serviceNameRg }</td>
												</tr>
												<tr>
													<td style="width:10%;text-align:center">Application No. / अर्ज क्रमांक  </td>
													<td style="width:10%;text-align:center">Application Date / अर्जाची तारीख   </td>
													<td style="width:30%;text-align:center">Fees Name / फी नाव    </td>
													<td style="width:10%;text-align:center">Amount Due / देय रक्कम  </td>
													<td style="width:10%;text-align:center" colspan="2">Amount Paid / देय सशुल्क  </td>
													
												</tr>
												<tr>
													
													<td>${receipt.applicationNO }</td>
													<td>${receipt.nocReceiptDate }</td>
													<td>${receipt.serviceNameRg }</td>
													<td>${receipt.nocChgAmt }</td>
													<td colspan="2">${receipt.nocChgAmt }</td>
													
												</tr>
												<tr>
													<td colspan="3">Amount in Words / रुपये अक्षरी :   ${receipt.amountInWord }<span> </span></td>
													<td>Amount in digit / एकूण रक्कम रुपये</td>
													<td>${receipt.nocChgAmt }</td>
													
													
												</tr>
											</thead>
										</table>
										<table border="1" style="width:100%">
											<thead>
												
												<tr>
													<td style="width:15%">Mode / मोड</td>
													<td style="width:15%">Instrument No/इन्स्ट्रुमेंट नंबर</td>
													<td style="width:15%">Instrument Date/इन्स्ट्रुमेंट तारीख</td>
													<td style="width:40%;text-align:center;">Bank Name / बँकेचे नाव</td>
													<td style="width:15%">Account No/खाते क्रमांक</td>
													
													<td style="width:15%">Amount / रक्कम</td>
												</tr>
												<tr>
													<td>${receipt.payMode }</td>
													<td>${receipt.instrument_no }</td>
													<td>${receipt.instrumentDate }</td>
													<td>${receipt.bankBranchName }</td>
													<td></td>
													<td>${receipt.nocChgAmt }</td>
												</tr>
											</thead>
											
										</table>
										<!-- <div style="padding:80px 15px;">
										In case if payment mode is cheque then only display below first label
											<label class="control-label" style="float:left;">Subject to Realisation of Cheque</label>
											<label class="control-label" style="float:right;">Receiver Signature</label>
										</div> -->
									</div>
									<div  style="padding:40px 15px;">
									<div class="pull-left">
										<div><img src="<c:url value='/img/qrcode/${receipt.fileName}'/>"> </div>
									</div>
									<div class="pull-right">
										<label class="control-label qr-place">Receiver Signature</label>
									</div>
								</div>
								</div>
								
								
								
								<!-- <button onclick="myFunction()">Print this page</button> -->

							
							</div>
							
             			</div>
             				<%--<div class="x_panel">
             				<div class="x_title">
             					<h2>Acknowledgement</h2>
             				</div>
             			 <jsp:include page="view-acknowledgment.jsp" /> --%>
             			</div>
						<div class="clearfix"></div>
					</div>
					
					
                    
				</div>
				</div>
			</div>
		</div>
	</div>
<!-- <script>
		window.onload = function() {
			 
			 {
				 alert("Do You Want To Print Receipt.");
				 window.print();
			}
		};
		
</script> -->



</body>

</html>
</compress:html>
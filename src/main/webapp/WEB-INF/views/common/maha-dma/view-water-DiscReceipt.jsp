<%-- <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<% pageContext.setAttribute("currentYear", java.util.Calendar.getInstance().get(java.util.Calendar.YEAR)); %>

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
			<jsp:include page="../common/leftMenu.jsp" />

			<!-- page content -->
			<spring:message code="label.please.enter" var="pls" />

			<div class="right_col" role="main" style=" padding-top: 0px;height:100%">
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
													<th class="ulb-logo" style="width:20%;text-align:center"><img src="<c:url value="/images/Project/demo_logo.png" />" alt=""></th>
													<th class="ulb-name" style="width:60%"><span><b>${receipt.ulbName }</b></span> <br /><br />
														<span> <b>${receipt.departmentName}</b></span>
													</th>
													<th class="maha-logo" style="width:20%;text-align:center"><img src="<c:url value="/images/Project/maharashtralogo.png" />" alt=""></th>
												</tr>
												<tr>
													<td class="rec-no" style="width:20% ;text-align:center"><span>Receipt No/ पावती क्र. :${receipt.receiptNumber }</span></td>
													<td class="rec-for" style="width:60% ;text-align:center"><span>Receipt For/ पावती प्रकार : ${receipt.receiptFor }</span></td>
													<td class="rec-date" style="width:20% ;text-align:center"><span>Receipt Date/ पावती दिनांक : ${receipt.receiptDate }</span></td>
												</tr>
												<tr>
													<td colspan="3" style="text-align: left;">
														<label class="control-label">Connection No. / नळजोडणी क्र. : <span>${receipt.connectionNo }</span></label> <br />
														<label class="control-label">Consumer Owner Name / मालकाचे नाव : <span>${receipt.nameOwner }</span></label> <br />
														<label class="control-label">Consumer Address / पत्ता: <span>${receipt.address }</span></label>	 <br />
													</td>
												</tr>
											</thead>
										</table>
										<table border="1" style="width:100%">
											<thead>
												<tr>
													<td style="width:10%;text-align:center">Application No. / अर्ज क्र. </td>
													<td style="width:10%;text-align:center">Disconnection From Date / तारखेपासून विस्थापन </td>
													<td style="width:10%;text-align:center">Disconnection To Date  / तारखेपासून विच्छेदन </td>
													<td style="width:45%;text-align:center">Details / विवरण</td>
													<td style="width:45%;text-align:center">Payment Received / स्वीकारलेली रक्कम </td>
													
												</tr>
												<tr>
													<!-- <th></th>
													<th></th>
													<th></th> -->
													<td>${receipt.applicationNO }</td>
													<td>${receipt.tempFromDate }</td>
													<td>${receipt.tempToDate }</td>
													<td>${receipt.receiptFor }</td>
													<td>${receipt.payAmount }</td>
													
												</tr>
												<tr>
													<td colspan="3">Amount in Words / रुपये अक्षरी :<span> </span></td>
												</tr>
											</thead>
										</table>
										<table border="1" style="width:100%">
											<thead>
												<tr>
													<td colspan="8">Payment Mode / देयक पद्धत</td>
												</tr>
												<tr>
													<td style="width:15%">Mode / पद्धत</td>
													<td style="width:15%">Amount / रक्कम</td>
													<td style="width:15%">Cheque / DD No. / धनादेश / DD क्र.</td>
													<td style="width:15%">Cheque / DD Date / धनादेश / DD दिनांक</td>
													<td style="width:40%;text-align:center;">Bank Name / बँकेचे नाव</td>
												</tr>
												<tr>
													<td>${receipt.payMode }</td>
													<td>${receipt.payAmount }</td>
													<td></td>
													<td>${receipt.instrumentDate }</td>
													<td>${receipt.bankBranchName }</td>
												</tr>
											</thead>
											
										</table>
										<div style="padding:80px 15px;">
										<!-- In case if payment mode is cheque then only display below first label -->
											<label class="control-label" style="float:left;">Subject to Realisation of Cheque</label>
											<label class="control-label" style="float:right;">Receiver Signature</label>
										</div>
									</div>
								</div>
								
								
								
								<!-- <button onclick="myFunction()">Print this page</button> -->

							
							</div>
             			</div>
						<div class="clearfix"></div>
					</div>
					
					
                    
				</div>
				</div>
			</div>
		</div>
	</div>
<script>
		window.onload = function() {
			 
			 {
				 alert("Do You Want To Print Receipt.");
				 window.print();
			}
		};
		
</script>



</body>

</html>
</compress:html> --%>
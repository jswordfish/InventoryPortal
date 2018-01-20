<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
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
		<%-- 	<jsp:include page="../common/leftMenu.jsp" /> --%>

			<!-- page content -->
			<spring:message code="label.please.enter" var="pls" />

			<div class="container-fluid" role="main" style=" padding-top: 0px;height:100%">
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
													<td class="ulb-logo" style="width:20%;text-align:center"><%-- <img src="<c:url value="/images/Project/demo_logo.png" />" alt=""> --%></td>
													<td class="ulb-name" style="width:60%; text-align:center"><span><b>${ack.ulbName }</b></span></td>
													<td class="maha-logo" style="width:20%;text-align:center"><img src="<c:url value="/images/Project/maharashtralogo.png" />" alt=""></td>
												</tr>
										
												<tr>
												<td colspan="3">
													<table style="width:100%">
														<tr>
															<td>
																<table  style="width:100%">
																	<tr>
																		<td><label class="control-label"><span style="font-size: small; font-weight: bolder;">Application Number / अर्ज क्रमांक :</span></label></td>
																		<td><label class="control-label"><span>${ack.srNumber } </span></label></td>
																	</tr>
																	<tr>
																		<td><label class="control-label"><span style="font-size: small; font-weight: bolder;">Applicant Name / अर्जदाराचे नाव :</span></label></td>
																		<td><label class="control-label"><span>${ack.applicantName }</span></label></td>
																		
																	</tr>
																        <tr>
																		<td><label class="control-label"><span style="font-size: small; font-weight: bolder;">Service Name / सेवे चे नाव :</span></label></td>
																		<td><label class="control-label"><span>${ack.serviceNameRg }</span></label></td>
																	</tr>
																</table>
															</td>
															<td>
																<table  style="width:100%">
																	<tr>
																		<td><label class="control-label"><span style="font-size: small; font-weight: bolder;">Application Date :</span></label></td>
																		<td><label class="control-label"><span>${ack.sr_date }</span></label></td>
																	</tr>
																	<tr>
																		<td><label class="control-label"><span style="font-size: small; font-weight: bolder;">Department Name / विभागाचे नाव :</span></label></td>
																		<td><label class="control-label"><span>${ack.departmentName }</span></label></td>
																		
																	</tr>
															               <tr>
																    
																       </tr>
																</table>
															</td>
														</tr>
													</table>
												
												</td>
												
												</tr>											
															
														
														
											</thead>
										</table>
										
									</div>
								</div>
								
								<button type="button" id="printBtn" name="printBtn" class="btn btn-primary active" >Print this page</button>
								<button type="button" id="gotoHomeBtn" name="gotoHomeBtn" class="btn btn-primary active" >Go To Home Page</button>
								
<c:url var='home' value='/' />
								<script>
								var home = "${home}";
								
									window.print();
									
									$(document).ready(function(){
										$('#printBtn').click(function(){
											window.print();
										});
										
										$('#gotoHomeBtn').click(function(){
											window.location = home;
										});
									});
									
								
								</script>
							</div>
             			</div>
						<div class="clearfix"></div>
					</div>

				</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
</compress:html>

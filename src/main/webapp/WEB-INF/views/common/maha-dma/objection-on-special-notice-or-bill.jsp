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
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Government of Maharashtra</title>
	<jsp:include page="../homeheader.jsp" />
</head>
<body>
	<jsp:include page="../citizenHeaderTop.jsp" />
	
	<div class="prop-section">
		<div class="container">
			<div class="form-title">
				<h1><spring:message code="label.service.specialnoticebill.pageTitle"/></h1>
				<span class="home-icon"><i class="fa fa-home"></i></span>
			</div><!-- form-title -->
		
			<div class="ulb-section">
				<div class="toggle-header" data-target="#application-details">
					<h2 class="StepTitle">
						<spring:message code="label.service.specialnoticebill.applicantpagetitle"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
					</h2>
				</div>
				
				<form id="frmData">
					<div id="application-details">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label class="col-md-2 col-sm-12 col-xs-12" for="ulb-name">
										<spring:message code="label.service.specialnoticebill.applicantulbName"/><span class="required">*</span>:
									</label>
									<div class="col-md-6 col-sm-12 col-xs-12">
										<select class=" form-control" id="ulbIdDesc">
											<option value="">Select ULB</option>
										</select>
									</div>
								</div><!-- form-input-group  -->
							</div><!-- col-md-12 col-sm-12 col-xs-12 -->
						</div><!-- row -->
						
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-input-group clearfix">
									<label class="col-md-2 col-sm-12 col-xs-12" for="ulb-name">
										<spring:message code="label.service.specialnoticebill.applicantserviceName"/><span class="required">*</span>:
									</label>
									<div class="col-md-6 col-sm-12 col-xs-12">
										<select class=" form-control" id="setServiceId" disabled="disabled">
											<option value="">
												Select Service Name
											</option>
										</select>
									</div>
								</div><!-- form-input-group -->
							</div><!-- col-md-12 col-sm-12 col-xs-12 -->
						</div><!--  row -->

						 <%-- <jsp:include page="applicant-details.jsp" /> --%>
					</div>
				</form>

				<jsp:include page="../../servicewise/objection-on-special-notice-or-bill-service.jsp" />
				
				<jsp:include page="checklist.jsp" />

				<div class="toggle-header" data-target="#charges-details">
					<h2 class="StepTitle">
						<spring:message code="label.service.specialnoticebill.charges"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
					</h2>
				</div>
				
				<form>
					<div id="charges-details">
						<div class="form-group">
							<label class="control-label col-md-2 col-sm-2 col-xs-12">
								<spring:message code="label.service.specialnoticebill.license_charges"/>:
							</label>
							
							<div class="col-md-4 col-sm-4 col-xs-12">
								<input type="text" id="<spring:message code="label.service.specialnoticebill.license_charges"/>" class="form-control"  readonly="readonly" required="required">
							</div>
							<!-- 
							 
							<div class="col-md-4 col-sm-4 col-xs-12">
								<button type="button" id="payCharges" class="btn"><spring:message code="label.service.specialnoticebill.license_pay"/></button>
							</div>
							-->
						</div>
					</div>
				</form>
				
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="actionBar">
							<button type="button" id="addDiv" class="btn">
								<spring:message code="label.btn.submit" />
							</button>
							<input class="btn" type="reset"
								value="<spring:message code="label.btn.reset" />">
						</div>
					</div><!-- col-md-6 col-sm-12 col-xs-12  -->
				</div><!-- row -->
			</div><!-- ulb-section -->
		</div><!-- container -->
	</div><!-- prop-section -->

	<jsp:include page="../citizenFooter.jsp" />
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>

	<jsp:include page="jsFooter.jsp" />
	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
	<script src="<c:url value="/maha-dma/js/app.js" />"></script>
	
		
	
	<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$(document).on('click', '.toggle-header', function(e){
				$content = $($(this).data('target'));
			    
			    if(!$content.is(':visible')){
			      $content.slideDown('slow');
			      $(this).find('i.toggle-icon span').html('keyboard_arrow_up')
			    }
			    else{
			    	$content.slideUp('slow');
			      $(this).find('i.toggle-icon span').html('keyboard_arrow_down')
			    }
			  });
		});	
	</script>
</body>
</html>
</compress:html>
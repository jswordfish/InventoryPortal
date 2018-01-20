<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<compress:html >
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>Government of Maharashtra</title>
		<link rel="icon" href="images/favicon.ico">
		<jsp:include page="../../homeheader.jsp" />
	</head>
	<body>
		<jsp:include page="../../citizenHeaderTop.jsp" />

		<div class="prop-section">
			<div class="container">
				<div class="form-title">
					<h1><spring:message code="label.collection.loi.title" /></h1> <span class="home-icon"><i class="fa fa-home"></i></span>
				</div><!-- form-title-->

				<div class="ulb-section">
					<div class="toggle-header" data-target="#loi-div">
						<h2 class="StepTitle toggle-header"><spring:message code="label.collection.loi.loidetails" />
							<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
						</h2>
					</div>

					<div id="loi-div">
						<div class="row">
							<div class="form-group">
								<label for="loino" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.document.loisearch.loino" /><span class="required">*</span>:
								</label>
								
								<div class="col-md-4 col-sm-12 col-xs-12">
									<div class="input-group">
										<input type="text" class="form-control" id="loino">
										<span class="input-group-addon">
											<a href="#" id="searchLicenDet"><i class="fa fa-question-circle" style="font-size:20px"></i>
											</a>
										</span>
									</div>
								</div>

								<label for="loi_date" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.collection.loi.date" />:
								</label>
							
								<div class="col-md-4 col-sm-12 col-xs-12">
									<input type='text' class="form-control" id="loi_date" name="loi_date" disabled="disabled"/>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.document.loisearch.modulename" />:
								</label>
								<div class="col-md-4 col-sm-12 col-xs-12">
									<input type='text' class="form-control" id="modulename"  name="modulename" disabled="disabled"/>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.document.loisearch.sername" />:</label>
								<div class="col-md-4 col-sm-12 col-xs-12">
									<input type='text' class="form-control" id="sername" name="sername" disabled="disabled"/>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label for="applno" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.collection.loi.applno" />:
								</label>
								<div class="col-md-4 col-sm-12 col-xs-12">
									<input type='text' class="form-control" id="applno" name="applno" disabled="disabled"/>
								</div>
								
								<label for="appldate" class="col-md-2 col-sm-12 col-xs-12">
									<spring:message code="label.collection.loi.appldate" />:
								</label>
								<div class="col-md-4 col-sm-12 col-xs-12">
									<input type='text' class="form-control" id="appldate" name="appldate" disabled="disabled"/>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<div class="col-md-4 col-md-offset-2">
									<table class="table table-striped table-bordered text-center">
										<thead>
											<tr>
												<th><spring:message code="label.collection.loi.charges" /></th>
												<th><spring:message code="label.collection.loi.amount" /></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>TEst</td>
												<td>100</td>
											</tr>
											<tr>
												<td>TEst</td>
												<td>200</td>
											</tr>
										</tbody>
										<tfoot>
										<tr>
											<td><spring:message code="label.collection.loi.total" /></td>
											<td>300</td>
										</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="actionBar">
							<input type="submit" id="payCharges" class="btn" value="<spring:message code="label.btn.pay" />">
							<input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
						</div>
					</div>
				</div><!-- ulb-section -->
			</div><!-- container -->
		</div><!-- prop-section -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<jsp:include page="../jsFooter.jsp" />
		<jsp:include page="../../citizenFooter.jsp" />

		<script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
		
		<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
		<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
		<script>
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
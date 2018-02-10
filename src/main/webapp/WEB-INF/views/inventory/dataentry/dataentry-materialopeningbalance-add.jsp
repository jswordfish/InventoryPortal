<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<jsp:include page="../../common/header.jsp" />

</head>
<body class="nav-md">


	<div class="container body">
		<div class="main_container">
			<jsp:include page="../../common/leftMenu.jsp" />
			<jsp:include page="../../common/headerTop.jsp" />


			<!-- page content -->
			<spring:message code="label.please.enter" var="pls" />

			<div class="right_col" role="main">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
										<spring:message code="label.inventory.dataentry.materialopeningblnc.add" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<div class="row">
											
											<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.materialname" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-12 col-xs-12">
												  <select class="form-control">
												 	<option>Select</option>
												 </select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.storename" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-12 col-xs-12">
												 <select class="form-control">
												 	<option>Select</option>
												 </select>
											  </div>
											</div>
											
											 <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.finacialyear" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-6 col-xs-12">
												  <select class="form-control">
												 	<option>test</option>
												 </select>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.openquantity" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												  <input type=text class="form-control">
											  </div>
											</div>
											<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.asondateopening" />:<span class="required">*</span></label>
											  <div class="col-md-4 col-sm-6 col-xs-12">
												  <textarea class="form-control"></textarea>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.lotno" />:	</label>
											  <div class="col-md-4 col-sm-12 col-xs-12">
												  <input type=text class="form-control">
											  </div>
											</div>
											<div class="form-group">
												<label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.openingrate" />:<span class="required">*</span>	</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												  <input type=text class="form-control">
											  </div>
											  
											   <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.dataentry.materialopeningblnc.exprydate" />:	</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <div class='input-group date' id="exprydate">
														<input type='text' class="form-control" id=''  name="" placeholder="DD/MM/YYYY"/> <span
														class="input-group-addon"> <span
														class="glyphicon glyphicon-calendar"></span>
														</span>
													</div>
											  </div>
											</div>
									<div class="row">

										<div class="form-group ">
											<div class="actionBar">
												<input type="submit" id="submitBtn" class="btn" value="<spring:message code="label.btn.save" />">
												<input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
												<a href="<c:url value="/inventory/dataentry/searchsmaterialopening" />"><button class="btn" type="reset"><spring:message code="label.btn.close" /></button></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					

				</div>
			</div>

	

			
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>
	</div>
	<jsp:include page="../../common/jsFooter.jsp" />
	<script>
	$('#exprydate').datetimepicker({
		format:"DD/MM/YYYY"
	});
	</script>

		
</body>
</html>
</compress:html>
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
<jsp:include page="../common/header.jsp" />

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
										<spring:message code="label.inventory.master.materialtype.add" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
							              <div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.materialtypecode" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <input type="text" class="form-control">
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.materialtypename" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <input type="text" class="form-control">
											  </div>
											  
										 </div>
										 
										<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.materialdesc" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <textarea class="form-control"></textarea>
											  </div>
										 </div>
										 <div class="form-group">
											  <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2">
												 <label class="checkbox-inline"><input type="checkbox"><spring:message code="label.inventory.master.materialtype.chkbox.parenttype" /></label>
											  </div>
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.parentmaterialname" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <select class="form-control">
												 	<option></option>
												 </select>
											  </div>
										</div>
										<div class="form-group">
											  <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2">
												 <label class="checkbox-inline"><input type="checkbox"><spring:message code="label.inventory.master.materialtype.active" /></label>
											  </div>
										</div>
											  
									</div>
									
									<div class="row">
										<div class="form-group ">
											<div class="actionBar">
												<button type="submit" id="submitBtn" class="btn"><spring:message code="label.btn.save" /></button>
												<button class="btn" type="reset"><spring:message code="label.btn.reset" /></button>
												<a href="<c:url value="/inventory/searchmaterialtype" />"><button class="btn" type="reset"><spring:message code="label.btn.close" /></button></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					

				</div>
			

	

			
			<jsp:include page="../common/footer.jsp" />
		</div>
</div>
	
	<jsp:include page="../common/jsFooter.jsp" />
		
</body>
</html>
</compress:html>
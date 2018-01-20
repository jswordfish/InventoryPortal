
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <div class="toggle-header" data-target="#checklist"><h2 class="StepTitle toggle-header">Checklist Details <i class="material-icons toggle-icon">keyboard_arrow_down</i></h2></div> -->
  <div class="form-body">
			<%-- <c:forEach var="innerList" items="${chreckList}" varStatus="mainChk"> --%>
				<div class="x_panel" id="formDetailsOuterDiv">
					
						<%-- <h3>${innerList.docType}</h3>
						<input type="hidden" id="docType${mainChk.index }" value="${innerList.docType}"> --%>
						<div class="clearfix"></div>
					
					<div class="x_content">
						<br>
					
						<div class="row fileValidation" id="fileValidation">
							<c:forEach var="obj" items="${checkList}" varStatus="lk">
							
								<div class="col-md-6" style="padding:5px;">
									<div class="">
									
										<label class="control-label col-md-4">${obj.documentName}</label>
										<div class="col-md-8" style="display:inline-flex;">
										<c:url var='view' value='/rest/common/serviceMovementValue/viewdocument'/>
											<form method="get" action="${view}">
											<input type="hidden" name="documentPath" value="${obj.documentPath}">
											<input type="hidden" name="srnId" value="${srnId}">
											<input type="hidden" name="serviceCode" value="${serviceCode}">
											<input type="hidden" name="ulbId" value="${ulbId}">
											<button type="submit" class="btn" id="view">View</button>
											</form>
											
											<c:url var='download' value='/rest/common/serviceMovementValue/download'/>
											<form method="get" action="${download}">
											<input type="hidden" name="documentPath" value="${obj.documentPath}">
                                 			<button type="submit" class="btn" id="downloadBtn" style="margin-left: 10px;">Download</button>
                                 			</form>
										</div>
									</div>
								</div>
								
							</c:forEach>
						</div>
					</div>
				</div>
			<%-- </c:forEach> --%>
		</div>
		
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

<style type="text/css">

	.ui-autocomplete {
    position: absolute;
    z-index: 1000;
    top: 0;
    left: 0;
    cursor: default;   
    background-color: #fff;
    padding:3px;
    border: 1px solid #ccc;
    z-index: 9999
}

.ui-autocomplete > li.ui-state-focus {
  background-color: #FF6C00;
  z-index: 9999
}
</style>

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
										<spring:message code="label.treename" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									 <c:url var="searchTreeNameUrl" value="/master/treename/action/search" />
									 <input type="hidden" id="ulbId" value="${ulbId}" />
									<form:form method="post" action="${searchTreeNameUrl}" id="treenameSearchFrom" modelAttribute="treenamesearch">
										
										<div class="form-group">
											<div class="col-md-6 col-sm-12 col-xs-12 ">
												<label for="ex3"><spring:message code="label.form.treevername" /></label>
												 <form:input path="verSearch" class=" form-control" id=""/>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<label for="ex4"><spring:message code="label.form.treescienname" /></label>
												  <form:input path="sciSearch" class=" form-control" id=""/>
											</div>
										</div>
										<div class="form-group">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<label for="ex3"><spring:message code="label.form.treecommnname" /></label>
												  <form:input path="comSearch" class=" form-control" id=""/>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<label for="ex4"><spring:message code="label.form.treefimilyname" /></label> 
												 <form:input path="famSearch" class=" form-control" id=""/>
											</div>
										</div>

										
										<div class="row">

											<div class="form-group ">
												<div class="actionBar">
													<button class="btn btn-deanger" type="reset"><spring:message code="label.btn.reset" /></button>
													<button type="submit" id="submitBtn"
														class="btn btn-success"><spring:message code="label.btn.search" /></button>
												</div>
											</div>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<spring:message code="label.title.treenamelist" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     	<button type="button" id="addBtn"
										class="btn btn-primary" data-toggle="modal" data-target=".add-tree-modal-lg"><spring:message code="label.btn.add" /></button>
				                     </li>	  
				                    </ul>
									<div class="clearfix"></div>
									
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									
									</div>
								<div class="x_content">
								    <p class="text-muted font-13 m-b-30">
                      
                    			</p>
      
                    			<table id="datatable" class="table table-striped table-bordered">
			                      <thead>
			                        <tr>
										<th><spring:message code="label.tbl.srno" /></th>
										<th><spring:message code="label.tbl.treevername" />&nbsp; English</th>
										<th><spring:message code="label.tbl.treescienname" />&nbsp; Regional </th>
										<th><spring:message code="label.tbl.treefimilyname" /></th>
										<th><spring:message code="label.tbl.active" /></th>
										<th>Edit / Delete </th>
			                        </tr>
			                      </thead>
			                      <tbody>
			                        <c:choose>
										<c:when test="${not empty treenameList}">
										<form name="tblForm" id="tblForm">
											 <c:forEach var="treename" items="${treenameList}" varStatus="loopC">
											 <tr>
											 	<td>
											 	 <input type="hidden" id="datId${loopC.count}" value="${treename.treenameId}"/>
											 	  <input type="hidden" id="datVerEn${loopC.count}" value="${treename.treeVerNameEn}"/>
											 	 <input type="hidden" id="datVerRg${loopC.count}" value="${treename.treeVerNameRg}"/>
											 	 <input type="hidden" id="datSciEn${loopC.count}" value="${treename.treeSciNameEn}"/>
											 	 <input type="hidden" id="datSciRg${loopC.count}" value="${treename.treeSciNameRg}"/>
											 	 <input type="hidden" id="datComEn${loopC.count}" value="${treename.treeComNameEn}"/>
											 	 <input type="hidden" id="datComRg${loopC.count}" value="${treename.treeComNameRg}"/>
											 	 <input type="hidden" id="datFamEn${loopC.count}" value="${treename.treeFamNameEn}"/> 
											 	 <input type="hidden" id="datFamRg${loopC.count}" value="${treename.treeFamNameRg}"/>
											 	 <input type="hidden" id="datTua${loopC.count}" value="${treename.lookupDetAesthetic}"/>
											 	 <input type="hidden" id="datAuc${loopC.count}" value="${treename.lookupDetCultural}"/>
											 	 <input type="hidden" id="datTue${loopC.count}" value="${treename.lookupDetEcological}"/>
											 	 <input type="hidden" id="datTuc${loopC.count}" value="${treename.lookupDetEconomical}"/>
											 	     
											 	 <%-- <input type="hidden" id="datReg${loopC.count}" value="${treename.treeComNameEn}"/> --%>
											 	 <input type="hidden" id="datStatus${loopC.count}" value="${treename.status}"/>
											 	 <c:out value="${loopC.count}"/></td>
											 	<td><c:out value="${treename.treeVerNameEn}"/></td>
											 	<td><c:out value="${treename.treeSciNameRg}"/></td>
											 	<td><c:out value="${treename.treeFamNameEn}"/></td>
											 	<td>
											 	<c:choose>
											 		<c:when test="${treename.status == '1'}">
													   <span class="label label-success">Active</span>
													  </c:when>
													  <c:otherwise>
													    <span class="label label-danger">Inactive</span>
													  </c:otherwise>
												</c:choose> 
											  </td>
											  <td>
											  <button type="button" class="btn btn-xs btn-danger" onClick="del(${loopC.count});"><spring:message code="label.btn.delete" /></button>
											  <button type="button" class="btn btn-xs btn-info" onClick="edit(${loopC.count});"><spring:message code="label.btn.edit" /></button> 
											  </td>
											 	</tr>
											 </c:forEach>
											 </form>
										</c:when>
										<c:otherwise>
										<!--  <tr>
										 	<td colspan="6">No Result Found</td>
										 </tr> -->
										</c:otherwise>
									</c:choose>
			                      </tbody>
			                    </table>
									 
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

			<!-- /page content -->

			<!-- modals -->
                  <!-- Add Tree modal -->
                  <div class="modal fade add-tree-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                      <c:url var="saveTreeNameUrl" value="/master/treename/action/add" />
                      <c:url var="updateTreeNameUrl" value="/master/treename/action/update" />
                      
                      <c:url var="getTreeNameDetailUrl" value="/master/treeMasDet" />
                      <c:url var='jsonLookupDetUrl' value='/rest/common/scrutiny/lookup/data/dropdown/lookupDet' /> 
						 <form:form method="post" action="${saveTreeNameUrl}" id="treenameFrom" modelAttribute="treename">
						 <input type="hidden" id="treenameId" />
						  <%-- <form:hidden path="tmTreeNameMaster.treenameId" id="treenameId"/> --%>
						<%--   <form:hidden path="tmTreeMasterMas.treenameId" id="treenameId"/> --%>
						  <%-- <form:hidden path="searchKey" id="addsearchKeyId"/> --%>
						 
						  <%-- <form:hidden path="searchbean.treespecies" id="hdtreespecies"/> --%>
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel"><spring:message code="label.form.treeadd.title" /></h4>
                        </div>
                        <div class="modal-body">
                           
										<div class="form-group">
											<div class="col-md-6 col-sm-12 col-xs-12 ">
												<label for="ex3"><spring:message code="label.form.treevername" />
												</label> 
												<input type="text" class=" form-control" id="treeVerNameEn"		
												placeholder="" required="yes"
													oninput="setCustomValidity('')"
													oninvalid="this.setCustomValidity('${pls}')" />
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<label for="ex3"><spring:message code="label.form.treevername" /> Marathi</label> 
												<input type="text" class=" form-control" id="treeVerNameRg"		
												placeholder="" required="yes"
													oninput="setCustomValidity('')"
													oninvalid="this.setCustomValidity('${pls}')" />
											</div>
										</div>
										<div class="form-group">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<label for="ex4"><spring:message code="label.form.treescienname" /></label>
												<input type="text" class=" form-control" id="treeSciNameEn"	
													placeholder=" "
													required="yes" oninput="setCustomValidity('')"
													oninvalid="this.setCustomValidity('${pls}')"/>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<label for="ex4"><spring:message code="label.form.treescienname" /> Marathi</label>
												 <input type="text" class=" form-control" id="treeSciNameRg"
													 placeholder=" "
													required="yes" oninput="setCustomValidity('')"
													oninvalid="this.setCustomValidity('${pls}')"/>
											</div>
										</div>
										
										<div class="form-group">	
											<div class="col-md-6 col-sm-12 col-xs-12">
												<label for="ex3"><spring:message code="label.form.treefimilyname" /></label>
												 <input type="text" class=" form-control" id="treeFamNameEn"	
												  placeholder=""
													required="yes" oninput="setCustomValidity('')"
													oninvalid="this.setCustomValidity('${pls}')" />
											</div>
											
											<div class="col-md-6 col-sm-12 col-xs-12 ">
												<label for="ex3"><spring:message code="label.form.treefimilyname" /> Marathi</label> 
												 <input type="text" class=" form-control" id="treeFamNameRg" 
													placeholder=""
													required="yes" oninput="setCustomValidity('')"
													 />
											</div>
										</div>
										<div class="form-group">
											<div class="col-md-6 col-sm-12 col-xs-12 ">
												<label for="ex4"><spring:message code="label.form.treecommnname" /></label> 
												 <input type="text" class=" form-control" id="treeComNameEn"
												 	placeholder=" "
													required="yes" oninput="setCustomValidity('')"
													/>
											</div>
											
											<div class="col-md-6 col-sm-12 col-xs-12">
												<label for="ex4"><spring:message code="label.form.treecommnname" /> Marathi</label> 
												<input class=" form-control" id="treeComNameRg"	
												placeholder=" "
													required="yes" oninput="setCustomValidity('')"/>
											</div>
										</div>
										<div class="form-group">
											<!-- <div class="col-md-6 col-sm-12 col-xs-12">
														  <label for="cal">Tree Family Name: *</label>
							            		 		
														     <input id="treeFamilyListId" Class="form-control"/>
														   <hidden id="treeFamilyId"  cssClass="form-control"/>
											</div> -->
											<div class="col-md-6 col-sm-12 col-xs-12">
														 
														 <label for="cal">Tree Species: *</label>
							            		 		
														   <input id="treespeciesListId" Class="form-control"/>
														   <input id="treespeciesId" type="hidden" Class="form-control"/>
														    <%-- <hidden id="treespeciesId" path="lookupDetIdTsm" cssClass="form-control"/>
														     <form:hidden id="ulbid" path="ulbId" cssClass="form-control"/> --%>
														 </div>
										 </div> 
													
										        <div class="form-group">
										        	<div class="col-md-6 col-sm-12 col-xs-12">
							            		 	     <label for="cal">Bark Shape: *</label>
							            		 		
														    <input id="barkListId" Class="form-control"/>
														    <input id="barkId" type="hidden" Class="form-control"/>
														     <%-- <form:hidden id="barkId" path="lookupDetIdBsm" cssClass="form-control"/> --%>
													</div>	
													<div class="col-md-6 col-sm-12 col-xs-12">	 
														 <label for="cal">Leaf Shape: *</label>
							            		 		
														     <input id="leafshapeListId" Class="form-control"/>
														     <input id="leafId" type="hidden" Class="form-control"/>
														     <%-- <form:hidden id="leafId" path="lookupDetIdLsm" cssClass="form-control"/> --%>
														 </div>	  
											        </div>
											        
										         <div class="form-group">
											         	<div class="col-md-6 col-sm-12 col-xs-12">
							            		 	     <label for="cal">Leaf Colour: *</label>
							            		 		
														     <input id="leafcolourListId" Class="form-control"/>
														     <input id="leafcolourId" type="hidden" Class="form-control"/>
														     <%-- <form:hidden id="leafcolourId" path="lookupDetIdLcm" cssClass="form-control"/> --%>
														 </div>	
													 <div class="col-md-6 col-sm-12 col-xs-12">
														 <label for="cal">Texture: *</label>
							            		 		
														   <input id="textureListId" Class="form-control"/>
														   <input id="textureId" type="hidden" Class="form-control"/>
														    <%-- <form:hidden id="textureId" path="lookupDetIdTms" cssClass="form-control"/> --%>
													</div> 
											      </div>
														  
												<div class="form-group">
													<div class="col-md-6 col-sm-12 col-xs-12">
												        <label for="cal">Flower Name: *</label>
							            		 		
														    <input id="flowernameListId" Class="form-control"/>
														    <input id="flowernameId" type="hidden" Class="form-control"/>
														    <%-- <form:hidden id="flowernameId" path="lookupDetIdFnm" cssClass="form-control"/> --%>
														 </div>
													<div class="col-md-6 col-sm-12 col-xs-12">	 
														 <label for="cal">Colour Master: *</label>
														     <input id="colorMasterListId" Class="form-control"/>
														     <input id="colorMasterId" type="hidden" Class="form-control"/>
														    <%-- <form:hidden id="colorMasterId" path="lookupDetIdCom" cssClass="form-control"/> --%>
													 </div>
										        </div>
											        
											    <div class="form-group">
											    	<div class="col-md-6 col-sm-12 col-xs-12">
												        <label for="cal">Fruit Name: </label>
							            		 		
														   <input id="fruitnameListId" Class="form-control"/>
														   <input id="fruitnameId" type="hidden" Class="form-control"/>
														    <%-- <form:hidden id="fruitnameId" path="lookupDetIdFrm" cssClass="form-control"/> --%>
													</div>
													<div class="col-md-6 col-sm-12 col-xs-12">
												        <label for="cal">Tree Status: </label>
							            		 		
														   <input id="treeStatusListId" Class="form-control"/>
														   <input id="treeStatusId" type="hidden" Class="form-control"/>
														    <%-- <form:hidden id="fruitnameId" path="lookupDetIdFrm" cssClass="form-control"/> --%>
													</div>
													<!-- <div class="col-md-6 col-sm-12 col-xs-12">	 
														 <label for="cal">Size: *</label>
							            		 		
														   <input id="sizeId" Class="form-control"/>
														 </div> -->
											       </div>
											        
							            		 	<div class="form-group">
							            		 		<div class="col-md-6 col-sm-12 col-xs-12">	 
												        <label for="cal">Shape Master: *</label>
							            		 		
														     <input id="shapeListId" Class="form-control"/>
														     <input id="shapeId" type="hidden" Class="form-control"/>
														    <%-- <form:hidden id="shapeId" path="lookupDetIdSma" cssClass="form-control"/> --%>
														 </div>
														<div class="col-md-6 col-sm-12 col-xs-12">
														 <label for="cal">Odour: *</label>
							            		 		
														   <%-- <form:input id="odourListId" path="" cssClass="form-control"/> --%>
														   <input id="odourListId" Class="form-control"/>
														   <input id="odourId" type="hidden"  Class="form-control"/>
														   <%-- <form:hidden id="odourId" path="lookupDetIdOdm" cssClass="form-control"/> --%>
														</div>
											         </div> 
											         <div class="form-group">
							            		 		<div class="col-md-6 col-sm-12 col-xs-12">	 
												        <label for="cal">Aesthetic: *</label>
							            		 		
														     <select class="form-control aesthetic">
														     	<option value="0">--Select--</option>
														     </select>
														    <%-- <form:hidden id="shapeId" path="lookupDetIdSma" cssClass="form-control"/> --%>
														 </div>
														<div class="col-md-6 col-sm-12 col-xs-12">
														 <label for="cal">Cultural: *</label>
							            		 		
														   <select class="form-control cultural">
														     	<option value="0">--Select--</option>
														     </select>
														</div>
											         </div> 
											         <div class="form-group">
							            		 		<div class="col-md-6 col-sm-12 col-xs-12">	 
												        <label for="cal">Ecological: *</label>
							            		 		
														     <select class="form-control ecological">
														     	<option value="0">--Select--</option>
														     </select>
														    <%-- <form:hidden id="shapeId" path="lookupDetIdSma" cssClass="form-control"/> --%>
														 </div>
														<div class="col-md-6 col-sm-12 col-xs-12">
														 <label for="cal">Economical: *</label>
							            		 		
														   <select class="form-control economical">
														     	<option value="0">--Select--</option>
														     </select>
														</div>
											         </div> 
										<div class="form-group">
											<div class="checkbox col-md-6">
										  <label class="">
										 <input type="checkbox" id="status" name="status" checked="true"/><spring:message code="label.tbl.active" /></label>
										</div>
										</div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.btn.close" /></button>
                          <button type="button" id="save" class="btn btn-primary" onclick="saveData()" style="display:none;"><spring:message code="label.btn.save" /></button>
                          <button type="button" id="edit" class="btn btn-primary" onclick="editSave()" style="display:none;"><spring:message code="label.btn.edit" /></button>
                        </div>
						</form:form>   
                      </div>
                    </div>
                  </div>
                   <!-- /modals -->
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>
	<c:url var='getAestheticData' value='/treecensus/getAestheticData' />
	<c:url var='getCulturalData' value='/treecensus/getCulturalData' />
	<c:url var='getEcologicalData' value='/treecensus/getEcologicalData' />
	<c:url var='getEconomicData' value='/treecensus/getEconomicData' />
	<c:url var="saveTreeMaster" value="/treecensus/savetreemasterData" />
	<c:url var="EditTreeMaster" value="/treecensus/savetreemasterData" />
	<c:url var="updateTree" value="/master/update/tree" />
	
	 <c:url var="deleteTreeNameUrl" value="/master/treename/action/delete" />
<%-- 	<form:form method="post" action="${deleteTreeNameUrl}" id="treenameDeleteFrom" modelAttribute="treename"> --%>
<%-- 		<form:hidden path="tmTreeNameMaster.treenameId" id="treenameIdDel"/> --%>
		
<%-- 		<form:hidden path="treeNameSearchDto.verSearch" class=" form-control" id="treeVerNameEnDel"/> --%>
													
<%-- 		<form:hidden path="treeNameSearchDto.sciSearch" class=" form-control" id="treeSciNameEnDel"/> --%>
													
<%-- 		<form:hidden path="treeNameSearchDto.comSearch" class=" form-control" id="treeComNameEnDel"/> --%>
													
<%--  		<form:hidden path="treeNameSearchDto.famSearch" class=" form-control" id="treeFamNameEnDel"/> --%>
		
<%-- 		 <%-- <form:hidden path="searchKey" id="delsearchKeyId"/> --%> --%>
<%-- 		 <%-- <form:hidden path="searchbean.treespecies" id="hdtreespecies"/> --%> --%>
<%-- 	</form:form> --%>
									
									
	<jsp:include page="../../common/jsFooter.jsp" />
	<script>
	$(document).ready(function () {
		
		getAestheticData();
	    getCulturalData();
	    getEcologicalData();
	    getEconomicData();
		
	});
	
	 $(function(){
		$("#addBtn").click(function(){
			$('#save').css("display","block");
		    document.getElementById("treenameFrom").reset();
		});
		
		
	}); 
		function edit(id){
			
			$('#edit').css("display","block");
			var updateAction = "${updateTreeNameUrl}";
			
			//$("#treenameFrom").attr('action', updateAction);
			$("#treenameId").val($("#datId"+id).val());
			$("#datId").val($("#datId"+id).val());
			$("#treeVerNameEn").val($("#datVerEn"+id).val());
			$("#treeVerNameRg").val($("#datVerRg"+id).val());
			$("#treeSciNameEn").val($("#datSciEn"+id).val());
			$("#treeSciNameRg").val($("#datSciRg"+id).val());
			$("#treeComNameEn").val($("#datComEn"+id).val());
			$("#treeComNameRg").val($("#datComRg"+id).val());
			$("#treeFamNameEn").val($("#datFamEn"+id).val());
			$("#treeFamNameRg").val($("#datFamRg"+id).val()); 
			$('.aesthetic').val($("#datTua"+id).val());
			$('.cultural').val($("#datAuc"+id).val());
			$('.ecological').val($("#datTue"+id).val());
			$('.economical').val($("#datTuc"+id).val());
			
			if($("#datStatus"+id).val() == 1){
				$("#status1").attr('checked', true);
			}else{
				$('#status1').removeAttr('checked')
			}
	 		$(".add-tree-modal-lg").modal('show');
	 		
	 		var getTreeNameDetail = "${getTreeNameDetailUrl}";
	 		var jsonLookupDetUrl = "${jsonLookupDetUrl}"
	 		
	 		var lookupDetId = [];
	 		var lookupDetCode = [];
	 		
	 		$.ajax({
	 			type : "GET",
	 			url : jsonLookupDetUrl,
	 			contentType : "application/json",
	 			async : false,
	 			headers : {
	 				"Authorization" : "Basic " + btoa("ashok:pass")
	 			},
	 			success : function(data) {

	 				$.each(data.resultData, function(i, result) {
	 					
	 						if (result.lookupDetValue == "FNM") {
	 							lookupDetCode.push(result.lookupDetValue);
		 						lookupDetId.push(result.lookupDetId);
		 					}
			    	    	
			    	    	if (result.lookupDetValue == "COM") {
			    	    		lookupDetCode.push(result.lookupDetValue);
			    	    		lookupDetId.push(result.lookupDetId);
		 					}
			    	    	
			    	    	if (result.lookupDetValue == "FRM") {
			    	    		lookupDetCode.push(result.lookupDetValue);
			    	    		lookupDetId.push(result.lookupDetId);
		 					}
			    	    	
			    	    	if (result.lookupDetValue == "SMA"){
			    	    		lookupDetCode.push(result.lookupDetValue);
			    	    		lookupDetId.push(result.lookupDetId);
		 					}
			    	    	
			    	    	if (result.lookupDetValue == "ODM") {
			    	    		lookupDetCode.push(result.lookupDetValue);
			    	    		lookupDetId.push(result.lookupDetId);
		 					}
			    	    	
							if (result.lookupDetValue == "TST") {
								lookupDetCode.push(result.lookupDetValue);
								lookupDetId.push(result.lookupDetId);
		 					}
		 					
							if (result.lookupDetValue == "TSM") {
								lookupDetCode.push(result.lookupDetValue);
								lookupDetId.push(result.lookupDetId);

							}

							if (result.lookupDetValue == "BSM") {
								lookupDetCode.push(result.lookupDetValue);
								lookupDetId.push(result.lookupDetId);
	
							}
	
							if (result.lookupDetValue == "LSM") {
								lookupDetCode.push(result.lookupDetValue);
								lookupDetId.push(result.lookupDetId);
	
							}
	
							if (result.lookupDetValue == "LCM") {
								lookupDetCode.push(result.lookupDetValue);
								lookupDetId.push(result.lookupDetId);
	
							}
	
							if (result.lookupDetValue == "TMS") {
								lookupDetCode.push(result.lookupDetValue);
								lookupDetId.push(result.lookupDetId);
	
							}
	 			 		
	 				})

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
	 				// display(e);
	 				new PNotify({
	 					title : 'Request Not Process... ',
	 					styling : 'bootstrap3',
	 					type : 'error'
	 				});
	 			}
	 		});		
	 		
	 		$.ajax({
	    	      type: "GET",
	    	      url: getTreeNameDetail,
	    	      contentType : "application/json",
	    	      data : "treeId="+$("#datId"+id).val(),
	    	      async: false,
	    	      headers: {
	    	          "Authorization": "Basic " + btoa("ashok:pass") 
	    	      },
	    	      success: function (data){
	    	    	  
	    	    	$.each(data.resultData, function (i, results) {
	    	    		
	    	    		for(var i = 0; i < lookupDetId.length; i++){
	    	    			
	    	    				if (lookupDetCode[i] == "FNM" && lookupDetId[i] == results[1]) {
	 			    	    		$('#flowernameListId').val(results[2]);
	 			    	    		$('#flowernameId').val(results[0]);
	    	    				}
	    	    				
	    	    				if (lookupDetCode[i] == "COM" && lookupDetId[i] == results[1]) {
	 			    	    		$('#colorMasterListId').val(results[2]);
	 			    	    		$('#colorMasterId').val(results[0]);
	 		 					}
	    	    				
	    	    				if (lookupDetCode[i] == "FRM" && lookupDetId[i] == results[1]) {
	 			    	    		$('#fruitnameListId').val(results[2]);
	 			    	    		$('#fruitnameId').val(results[0]);
	 		 					}
	    	    				
	    	    				if (lookupDetCode[i] == "SMA" && lookupDetId[i] == results[1]){
	 			    	    		$('#shapeListId').val(results[2]);
	 			    	    		$('#shapeId').val(results[0]);
	 		 					}
	    	    				
	    	    				if (lookupDetCode[i] == "ODM" && lookupDetId[i] == results[1]) {
	 			    	    		$('#odourListId').val(results[2]);
	 			    	    		$('#odourId').val(results[0]);
	 		 					}
	    	    				
	    	    				if (lookupDetCode[i] == "TSM" && lookupDetId[i] == results[1]) {
									$('#treespeciesListId').val(results[2]);
									$('#treespeciesId').val(results[0]);
								}
	    	    				
	    	    				if (lookupDetCode[i] == "BSM" && lookupDetId[i] == results[1]) {
									$('#barkListId').val(results[2]);
									$('#barkId').val(results[0]);
								}
	    	    				
	    	    				if (lookupDetCode[i] == "LSM" && lookupDetId[i] == results[1]) {
									$('#leafshapeListId').val(results[2]);
									$('#leafId').val(results[0]);
								}
	    	    				
	    	    				if (lookupDetCode[i] == "LCM" && lookupDetId[i] == results[1]) {
									$('#leafcolourListId').val(results[2]);
									$('#leafcolourId').val(results[0]);
								}
	    	    				
	    	    				if (lookupDetCode[i] == "TMS" && lookupDetId[i] == results[1]) {
									$('#textureListId').val(results[2]);
									$('#textureId').val(results[0]);
								}
	    	    		}
	    	    		
	    	    	});
	    	    	  
	    	      },
	    	      error : function(e) {
	    	                console.log("ERROR: ", e.responseText);
	    	                console.log("ERROR: ", e);
	    	              //	display(e);
	    	          new PNotify({
	    	                  title: 'Request Not Process... ',
	    	                  styling: 'bootstrap3',
	    	                  type: 'error'
	    	              });
	    	          }
	    	      });
	 		
	 		
		}
		function del(id){
			
			$("#treenameIdDel").val($("#datId"+id).val());
			$("#treeVerNameEnDel").val($("#treeVerNameEn").val());
			$("#treeSciNameEnDel").val($("#treeSciNameEn").val());
			$("#treeComNameEnDel").val($("#treeComNameEn").val());
			$("#treeFamNameEnDel").val($("#treeFamNameEn").val());
			var msg = "Are You Sure To Remove : "+$("#datVerEn"+id).val() + " / "+$("#datVerRg"+id).val();
			ezBSAlert({
			      type: "confirm",
			      messageText: msg,
			      alertType: "danger"
			    }).done(function (e) {
			      //$("#treenameDeleteFrom").submit();
			      //Chnage as No also deleting the records.
			      if (e) {
			      		$("#treestatusDeleteFrom").submit();
			    	}else{
			    		return false;
			    	}
			    });
				
		}
	</script>
	 
      
	<c:if test="${msgtype != null}">
	 <script>
	 var notification = '<spring:message code="label.common.notification" />';
	 $(function(){
		 new PNotify({
	         title: notification,
	         text: '${message}',
	         type: '${msgtype}',
	         styling: 'bootstrap3',
	         hide: true
	     });
	 }); 	 
      </script>
</c:if>

<script type="text/javascript">

// Code for autocomplete

	$("#treespeciesListId").autocomplete({
	            source:function(request, response){
	            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'TSM',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){ 		
	            		response($.map(data, function(key, value) {
	            		    //console.log(key);
	            			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
	            		    	return {
	                                label: key,
	                                value: value
	                            };
	            		    }
                        }));
	            	})
	            },
	            select: function(event, ui) {
	                event.preventDefault();
	                $("#treespeciesListId").val(ui.item.label);
	                $("#treespeciesId").val(ui.item.value);
	                return false;
	            },
	            focus: function (event, ui) {
	                this.value = ui.item.label;	                 
	                event.preventDefault();
	            }
	        });
	        
	        
	$("#barkListId").autocomplete({
        source:function(request, response){
        			
     	
     $.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'BSM',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){	  
    	  response($.map(data, function(key, value) {
        		    //console.log(key);
        			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
        		    	return {
                            label: key,
                            value: value
                        };
        		    }
                }));
        	})
        },
        select: function(event, ui) {
            event.preventDefault();
            $("#barkListId").val(ui.item.label);
            $("#barkId").val(ui.item.value);
            return false;
        },
        focus: function (event, ui) {
            this.value = ui.item.label;	                 
            event.preventDefault();
        }
    });
	
	$("#leafshapeListId").autocomplete({
        source:function(request, response){
        		$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'LSM',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){   		
        		response($.map(data, function(key, value) {
        		    //console.log(key);
        			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
        		    	return {
                            label: key,
                            value: value
                        };
        		    }
                }));
        	})
        },
        select: function(event, ui) {
            event.preventDefault();
            $("#leafshapeListId").val(ui.item.label);
            $("#leafId").val(ui.item.value);
            return false;
        },
        focus: function (event, ui) {
            this.value = ui.item.label;	                 
            event.preventDefault();
        }
    });
	
	 $("#leafcolourListId").autocomplete({
         source:function(request, response){
         		
         $.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'LCM',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){ 				
         		response($.map(data, function(key, value) {
         		    //console.log(key);
         			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
         		    	return {
                             label: key,
                             value: value
                         };
         		    }
                 }));
         	})
         },
         select: function(event, ui) {
             event.preventDefault();
             $("#leafcolourListId").val(ui.item.label);
             $("#leafcolourId").val(ui.item.value);
             return false;
         },
         focus: function (event, ui) {
             this.value = ui.item.label;	                 
             event.preventDefault();
         }
     });
	 
	 $("#textureListId").autocomplete({
         source:function(request, response){
         		$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'TMS',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){      		
         		response($.map(data, function(key, value) {
         		    //console.log(key);
         			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
         		    	return {
                             label: key,
                             value: value
                         };
         		    }
                 }));
         	})
         },
         select: function(event, ui) {
             event.preventDefault();
             $("#textureListId").val(ui.item.label);
             $("#textureId").val(ui.item.value);
             return false;
         },
         focus: function (event, ui) {
             this.value = ui.item.label;	                 
             event.preventDefault();
         }
     });
	 
	 $("#flowernameListId").autocomplete({
         source:function(request, response){
         		$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'FNM',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){		
         		response($.map(data, function(key, value) {
         		    //console.log(key);
         			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
         		    	return {
                             label: key,
                             value: value
                         };
         		    }
                 }));
         	})
         },
         select: function(event, ui) {
             event.preventDefault();
             $("#flowernameListId").val(ui.item.label);
             $("#flowernameId").val(ui.item.value);
             return false;
         },
         focus: function (event, ui) {
             this.value = ui.item.label;	                 
             event.preventDefault();
         }
     });
	 
	 $("#colorMasterListId").autocomplete({
         source:function(request, response){
 	
	$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'COM',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){    	
         		response($.map(data, function(key, value) {
         		    //console.log(key);
         			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
         		    	return {
                             label: key,
                             value: value
                         };
         		    }
                 }));
         	})
         },
         select: function(event, ui) {
             event.preventDefault();
         $("#colorMasterListId").val(ui.item.label);
             $("#colorMasterId").val(ui.item.value);
             return false;
         },
         focus: function (event, ui) {
             this.value = ui.item.label;	                 
             event.preventDefault();
         }
     });
	 
	 $("#fruitnameListId").autocomplete({
         source:function(request, response){
         		$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'FRM',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){ 		
         		response($.map(data, function(key, value) {
         		    //console.log(key);
         			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
         		    	return {
                             label: key,
                             value: value
                         };
         		    }
                 }));
         	})
         },
         select: function(event, ui) {
             event.preventDefault();
             $("#fruitnameListId").val(ui.item.label);
             $("#fruitnameId").val(ui.item.value);
             return false;
         },
         focus: function (event, ui) {
             this.value = ui.item.label;	                 
             event.preventDefault();
         }
     });
	 
	 $("#treeStatusListId").autocomplete({
         source:function(request, response){
         		$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'TST',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){ 		
         		response($.map(data, function(key, value) {
         		    //console.log(key);
         			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
         		    	return {
                             label: key,
                             value: value
                         };
         		    }
                 }));
         	})
         },
         select: function(event, ui) {
             event.preventDefault();
             $("#treeStatusListId").val(ui.item.label);
             $("#treeStatusId").val(ui.item.value);
             return false;
         },
         focus: function (event, ui) {
             this.value = ui.item.label;	                 
             event.preventDefault();
         }
     });
	 
	 $("#shapeListId").autocomplete({
         source:function(request, response){
       $.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'SMA',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){           			
         		
         		response($.map(data, function(key, value) {
         		    //console.log(key);
         			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
         		    	return {
                             label: key,
                             value: value
                         };
         		    }
                 }));
         	})
         },
         select: function(event, ui) {
             event.preventDefault();
             $("#shapeListId").val(ui.item.label);
             $("#shapeId").val(ui.item.value);
             return false;
         },
         focus: function (event, ui) {
             this.value = ui.item.label;	                 
             event.preventDefault();
         }
     });
	 
	 $("#odourListId").autocomplete({
         source:function(request, response){
         $.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'ODM',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data) 			
         		         {            		
         		response($.map(data, function(key, value) {
         		    //console.log(key);
         			if(key.toLowerCase().indexOf(request.term.toLowerCase())!= -1){
         		    	return {
                             label: key,
                             value: value
                         };
         		    }
                 }));
         	})
         },
         select: function(event, ui) {
             event.preventDefault();
             $("#odourListId").val(ui.item.label);
             $("#odourId").val(ui.item.value);
             return false;
         },
         focus: function (event, ui) {
             this.value = ui.item.label;	                 
             event.preventDefault();
         }
     });

</script>

<script type="text/javascript">

	function getAestheticData(){
		
		var getAestheticData = "${getAestheticData}"; 
		//var obj = {ulbId : $('#ulbId').val()}
		
		$.ajax({
	     type: "GET",
	     url: getAestheticData,
	     contentType : "application/json",
	     dataType : 'json',
	     //data : JSON.stringify(obj),
	     async: false,
	      headers: {
	          "Authorization": "Basic " + btoa("ashok:pass") 
	      },
	      success: function (data){
	    	  
	    	
	    	$.each(data.resultData, function (i, result) {
	    		$('.aesthetic').append($("<option></option>").val(result.lookupDetId).html(result.lookupDetName));
	    	});
	    	

	      },
	      statusCode: {
			    403: function() {
			    	 new PNotify({
	                  title: 'Session Expire. Please Re-Login...',
	                  styling: 'bootstrap3',
	                  type: 'error'
	              });
			    	 setTimeout(function(){
			                window.location.href="/"; 
			            }, 2000);
			    }
			},
	      error : function(e) {
	                console.log("ERROR: ", e.responseText);
	                console.log("ERROR: ", e);
	              //	display(e);
	          new PNotify({
	                  title: 'Request Not Process... ',
	                  styling: 'bootstrap3',
	                  type: 'error'
	              });
	          }
	      });
		
	}
	
function getCulturalData(){
		
		var getCulturalData = "${getCulturalData}"; 
		//var obj = {ulbId : $('#ulbId').val()}
		
		$.ajax({
	     type: "GET",
	     url: getCulturalData,
	     contentType : "application/json",
	     dataType : 'json',
	     //data : JSON.stringify(obj),
	     async: false,
	      headers: {
	          "Authorization": "Basic " + btoa("ashok:pass") 
	      },
	      success: function (data){
	    	  
	    	
	    	$.each(data.resultData, function (i, result) {
	    		$('.cultural').append($("<option></option>").val(result.lookupDetId).html(result.lookupDetName));
	    	});
	    	

	      },
	      statusCode: {
			    403: function() {
			    	 new PNotify({
	                  title: 'Session Expire. Please Re-Login...',
	                  styling: 'bootstrap3',
	                  type: 'error'
	              });
			    	 setTimeout(function(){
			                window.location.href="/"; 
			            }, 2000);
			    }
			},
	      error : function(e) {
	                console.log("ERROR: ", e.responseText);
	                console.log("ERROR: ", e);
	              //	display(e);
	          new PNotify({
	                  title: 'Request Not Process... ',
	                  styling: 'bootstrap3',
	                  type: 'error'
	              });
	          }
	      });
		
	}
	
function getEcologicalData(){
	
	var getEcologicalData = "${getEcologicalData}"; 
	//var obj = {ulbId : $('#ulbId').val()}
	
	$.ajax({
     type: "GET",
     url: getEcologicalData,
     contentType : "application/json",
     dataType : 'json',
     //data : JSON.stringify(obj),
     async: false,
      headers: {
          "Authorization": "Basic " + btoa("ashok:pass") 
      },
      success: function (data){
    	  
    	
    	$.each(data.resultData, function (i, result) {
    		$('.ecological').append($("<option></option>").val(result.lookupDetId).html(result.lookupDetName));
    	});
    	

      },
      statusCode: {
		    403: function() {
		    	 new PNotify({
                  title: 'Session Expire. Please Re-Login...',
                  styling: 'bootstrap3',
                  type: 'error'
              });
		    	 setTimeout(function(){
		                window.location.href="/"; 
		            }, 2000);
		    }
		},
      error : function(e) {
                console.log("ERROR: ", e.responseText);
                console.log("ERROR: ", e);
              //	display(e);
          new PNotify({
                  title: 'Request Not Process... ',
                  styling: 'bootstrap3',
                  type: 'error'
              });
          }
      });
	
}

function getEconomicData(){
	
	var getEconomicData = "${getEconomicData}"; 
	//var obj = {ulbId : $('#ulbId').val()}
	
	$.ajax({
     type: "GET",
     url: getEconomicData,
     contentType : "application/json",
     dataType : 'json',
     //data : JSON.stringify(obj),
     async: false,
      headers: {
          "Authorization": "Basic " + btoa("ashok:pass") 
      },
      success: function (data){
    	  
    	
    	$.each(data.resultData, function (i, result) {
    		$('.economical').append($("<option></option>").val(result.lookupDetId).html(result.lookupDetName));
    	});
    	

      },
      statusCode: {
		    403: function() {
		    	 new PNotify({
                  title: 'Session Expire. Please Re-Login...',
                  styling: 'bootstrap3',
                  type: 'error'
              });
		    	 setTimeout(function(){
		                window.location.href="/"; 
		            }, 2000);
		    }
		},
      error : function(e) {
                console.log("ERROR: ", e.responseText);
                console.log("ERROR: ", e);
              //	display(e);
          new PNotify({
                  title: 'Request Not Process... ',
                  styling: 'bootstrap3',
                  type: 'error'
              });
          }
      });
	
}

</script>


<script type="text/javascript">

function saveData(){
	
	var saveObj = {};
	
	saveObj.treeVerNameEn = $('#treeVerNameEn').val();
	saveObj.treeVerNameRg = $('#treeVerNameRg').val();
	saveObj.treeSciNameEn = $('#treeSciNameEn').val();
	saveObj.treeSciNameRg = $('#treeSciNameRg').val();
	saveObj.treeFamNameEn = $('#treeFamNameEn').val();
	saveObj.treeFamNameRg = $('#treeFamNameRg').val();
	saveObj.treeComNameEn = $('#treeComNameEn').val();
	saveObj.treeComNameRg = $('#treeComNameRg').val();
	saveObj.lookupDetIdTsm = $('#treespeciesId').val();
	saveObj.lookupDetIdBsm = $('#barkId').val();
	saveObj.lookupDetIdLsm = $('#leafId').val();
	saveObj.lookupDetIdLcm = $('#leafcolourId').val();
	saveObj.lookupDetIdTms = $('#textureId').val();
	saveObj.lookupDetIdFnm = $('#flowernameId').val();
	saveObj.lookupDetIdCom = $('#colorMasterId').val();
	saveObj.lookupDetIdFrm = $('#fruitnameId').val();
	saveObj.lookupDetIdSma = $('#shapeId').val();
	saveObj.lookupDetIdOdm = $('#odourId').val();
	saveObj.lookupDetIdTst = $('#treeStatusId').val();
	saveObj.lookupDetAesthetic = $('.aesthetic').val();
	saveObj.lookupDetCultural = $('.cultural').val();
	saveObj.lookupDetEcological = $('.ecological').val();
	saveObj.lookupDetEconomical = $('.economical').val();
	
	console.log(saveObj);
	var saveTreeMaster = "${saveTreeMaster}"; 
	
	$.ajax({
	     type: "POST",
	     url: saveTreeMaster,
	     contentType : "application/json",
	     //dataType : 'json',
	     data : JSON.stringify(saveObj),
	     async: false,
	      headers: {
	          "Authorization": "Basic " + btoa("ashok:pass") 
	      },
	      success: function (data){
	    	  
	    	  location.reload(true);
	    	  /* var notification = '<spring:message code="label.common.notification" />';
	    		 $(function(){
	    			 new PNotify({
	    		         title: notification,
	    		         text: '<spring:message code="lable.common.sucess.added" />',
	    		         type: 'success',
	    		         styling: 'bootstrap3',
	    		         hide: true
	    		     });
	    		 }); 	  */

	      },
	      statusCode: {
			    403: function() {
			    	 new PNotify({
	                  title: 'Session Expire. Please Re-Login...',
	                  styling: 'bootstrap3',
	                  type: 'error'
	              });
			    	 setTimeout(function(){
			                window.location.href="/"; 
			            }, 2000);
			    }
			},
	      error : function(e) {
	    	  location.reload(true);
	                console.log("ERROR: ", e.responseText);
	                console.log("ERROR: ", e);
	              //	display(e);
	          new PNotify({
	                  title: 'Request Not Process... ',
	                  styling: 'bootstrap3',
	                  type: 'error'
	              });
	          }
	      });
	
}

</script>

<script type="text/javascript">

function editSave(){
	
var editObj = {};
	
editObj.treenameId = parseInt($("#treenameId").val());
	editObj.treeVerNameEn = $('#treeVerNameEn').val();
	editObj.treeVerNameRg = $('#treeVerNameRg').val();
	editObj.treeSciNameEn = $('#treeSciNameEn').val();
	editObj.treeSciNameRg = $('#treeSciNameRg').val();
	editObj.treeFamNameEn = $('#treeFamNameEn').val();
	editObj.treeFamNameRg = $('#treeFamNameRg').val();
	editObj.treeComNameEn = $('#treeComNameEn').val();
	editObj.treeComNameRg = $('#treeComNameRg').val();
	editObj.treemasIdTsm = parseInt($('#treespeciesId').val());
	editObj.treemasIdBsm = parseInt($('#barkId').val());
	editObj.treemasIdLsm = parseInt($('#leafId').val());
	editObj.treemasIdLcm = parseInt($('#leafcolourId').val());
	editObj.treemasIdTms = parseInt($('#textureId').val());
	editObj.treemasIdFnm = parseInt($('#flowernameId').val());
	editObj.treemasIdCom = parseInt($('#colorMasterId').val());
	editObj.treemasIdFrm = parseInt($('#fruitnameId').val());
	editObj.treemasIdSma = parseInt($('#shapeId').val());
	editObj.treemasIdOdm = parseInt($('#odourId').val());
	editObj.treemasIdTst = parseInt($('#treeStatusId').val());
	editObj.lookupDetAesthetic = parseInt($('.aesthetic').val());
	editObj.lookupDetCultural = parseInt($('.cultural').val());
	editObj.lookupDetEcological =parseInt( $('.ecological').val());
	editObj.lookupDetEconomical = parseInt($('.economical').val());
	if($('#status').is(":checked"))
	{
		var abc = 1
		editObj.status = parseInt(abc);
	}else{
		var abc = 0;
		editObj.status = parseInt(abc);
	}	
	console.log(editObj);
	
	var updateTree = "${updateTree}";
	$.ajax({
	     type: "POST",
	     url: updateTree,
	     contentType : "application/json",
	     data : JSON.stringify(editObj),
	     async: false,
	      headers: {
	          "Authorization": "Basic " + btoa("ashok:pass") 
	      },
	      success: function (data){
	    	  

	      },
	      statusCode: {
			    403: function() {
			    	 new PNotify({
	                  title: 'Session Expire. Please Re-Login...',
	                  styling: 'bootstrap3',
	                  type: 'error'
	              });
			    	 setTimeout(function(){
			                window.location.href="/"; 
			            }, 2000);
			    }
			},
	      error : function(e) {
	                console.log("ERROR: ", e.responseText);
	                console.log("ERROR: ", e);
	              //	display(e);
	          new PNotify({
	                  title: 'Request Not Process... ',
	                  styling: 'bootstrap3',
	                  type: 'error'
	              });
	          }
	      });
	
}

</script>



</body>
</html>
</compress:html>
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
										<spring:message code="label.leafshape" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									 <c:url var="searchLeafShapeUrl" value="/master/leafshape/action/search" />
									<form:form method="post" action="${searchLeafShapeUrl }" id="leafshapeSearchFrom" modelAttribute="leafshape">
										<div class="row">
									            <div class="form-group">
												  <label for="name" class="col-md-2 col-sm-2"><spring:message code="label.form.leafshapelist" />*	</label>
												  <div class="col-md-6">
													  <form:input path="searchKey" class=" form-control" id="treemasDescSearch"
														placeholder="" required="yes"
														oninput="setCustomValidity('')"
														oninvalid="this.setCustomValidity('${pls}')" />
												  </div>
												</div>
											
										</div>
										
										<div class="row">

											<div class="form-group ">
												<div class="actionBar">
													<button class="btn btn-deanger" type="reset"
													onclick="location.reload(true)"><spring:message code="label.btn.reset" /></button>
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
										<spring:message code="label.form.leafshapelist" />
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
										<th><spring:message code="label.form.leafshapelist" />&nbsp; English</th>
										<th><spring:message code="label.form.leafshapelist" />&nbsp; Regional </th>
										<th><spring:message code="label.tbl.active" /></th>
										<th>Edit / Delete </th>
			                        </tr>
			                      </thead>
			                      <tbody>
			                        <c:choose>
										<c:when test="${not empty leafshapeList}">
										<form name="tblForm" id="tblForm">
											 <c:forEach var="leafshape" items="${leafshapeList}" varStatus="loopC">
											 <tr>
											 	<td>
											 	 <input type="hidden" id="datId${loopC.count}" value="${leafshape.treemasId}"/>
											 	 <input type="hidden" id="datEng${loopC.count}" value="${leafshape.treemasDescEn}"/>
											 	 <input type="hidden" id="datReg${loopC.count}" value="${leafshape.treemasDescMh}"/>
											 	 <input type="hidden" id="datStatus${loopC.count}" value="${leafshape.status}"/>
											 	 <c:out value="${loopC.count}"/></td>
											 	<td><c:out value="${leafshape.treemasDescEn}"/></td>
											 	<td><c:out value="${leafshape.treemasDescMh}"/></td>
											 	<td>
											 	<c:choose>
											 		<c:when test="${leafshape.status == '1'}">
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
										 <!-- <tr>
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
                      <c:url var="saveLeafShapeUrl" value="/master/leafshape/action/add" />
                      <c:url var="updateLeafShapeUrl" value="/master/leafshape/action/update" />
						 <form:form method="post" action="${saveLeafShapeUrl }" id="leafshapeFrom" modelAttribute="leafshape">
						  <form:hidden path="tmTreeMasterMas.treemasId" id="treemasId"/>
						<%--   <form:hidden path="tmTreeMasterMas.treemasId" id="treemasId"/> --%>
						  <form:hidden path="searchKey" id="addsearchKeyId"/>
						 
						  <%-- <form:hidden path="searchbean.treespecies" id="hdtreespecies"/> --%>
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel"><spring:message code="label.form.addleafshape" /></h4>
                        </div>
                        <div class="modal-body">
                           
								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-2" for="ex3"><spring:message code="label.form.leafshapelist" /></label> 
										<div class="col-md-4">
										<form:input path="tmTreeMasterMas.treemasDescEn" class=" form-control" id="treemasDescEn"
											placeholder="" required="yes"
											oninput="setCustomValidity('')"
											oninvalid="this.setCustomValidity('${pls}')" />
				 
										</div>
										<div class="checkbox col-md-6">
										  <label class="">
										 <form:checkbox path="status" value="1" checked="true"/><spring:message code="label.tbl.active" /></label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-2" for="ex3"><spring:message code="label.form.leafshapelist" /> Marathi </label> 
										<div class="col-md-4">
										<form:input path="tmTreeMasterMas.treemasDescMh" class=" form-control" id="treemasDescMh"
											placeholder="" required="yes"
											oninput="setCustomValidity('')"
											oninvalid="this.setCustomValidity('${pls}')" />
										 
										</div>
										 
									</div>
								</div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.btn.close" /></button>
                          <button type="submit" class="btn btn-primary"><spring:message code="label.btn.save" /></button>
                        </div>
						</form:form>   
                      </div>
                    </div>
                  </div>
                   <!-- /modals -->
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>
	
	 <c:url var="searchLeafShapeUrl" value="/master/leafshape/action/delete" />
	<form:form method="post" action="${searchLeafShapeUrl }" id="leafshapeDeleteFrom" modelAttribute="leafshape">
		<form:hidden path="tmTreeMasterMas.treemasId" id="treemasIdDel"/>
		 <form:hidden path="searchKey" id="delsearchKeyId"/>
		 <%-- <form:hidden path="searchbean.treespecies" id="hdtreespecies"/> --%>
	</form:form>
									
									
	<jsp:include page="../../common/jsFooter.jsp" />
	<script>
	 $(function(){
		 
		$("#addBtn").click(function(){
		    //$("#leafshapeFrom").trigger("reset");
			 document.getElementById("leafshapeFrom").reset();
		});
	}); 
		function edit(id){
			var updateAction = "${updateLeafShapeUrl}";
			$("#leafshapeFrom").attr('action', updateAction);
			
			$("#treemasId").val($("#datId"+id).val());
			$("#treemasDescEn").val($("#datEng"+id).val());
			$("#treemasDescMh").val($("#datReg"+id).val());
			//$("#status1").val();
			//console.log($("#datStatus"+id).val());
			if($("#datStatus"+id).val() == 1){
				$("#status1").attr('checked', true);
			}else{
				$('#status1').removeAttr('checked')
			}
	 		$(".add-tree-modal-lg").modal('show');
		}
		function del(id){
			$("#treemasIdDel").val($("#datId"+id).val());
			var msg = "Are You Sure To Remove : "+$("#datEng"+id).val() + " / "+$("#datReg"+id).val();
			ezBSAlert({
			      type: "confirm",
			      messageText: msg,
			      alertType: "danger"
			    }).done(function (e) {
			    	if (e) {
			      $("#leafshapeDeleteFrom").submit();
			    	}else{
			    		return false;
			    	}
			    });
		}
	</script>
	 
      
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
</body>
</html>
</compress:html>
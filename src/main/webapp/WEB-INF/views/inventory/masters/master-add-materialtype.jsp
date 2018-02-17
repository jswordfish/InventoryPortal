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

<form:form id="addForm" action="materialType/add" method="POST" modelAttribute="searchmaterialtypform">
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
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12">
											  <spring:message code="label.inventory.master.materialtype.materialtypecode" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  <form:input path="materialTypeDTO.materialTypCode" class=" form-control" id=""/>
											  </div>
											  
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.materialtypename" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:input path="materialTypeDTO.materialTypeName" class=" form-control" id=""/>
											  </div>
											  
										 </div>
										 
										<div class="form-group">
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.materialdesc" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
												 <form:textarea path="materialTypeDTO.materialTypeDesc" class=" form-control" id=""/>
											  </div>
										 </div>
										 <div class="form-group">
											  <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2">
												 <label class="checkbox-inline">
												 <form:checkbox path="materialTypeDTO.parent" id="chooseparent" onchange="validateFormInput()"></form:checkbox>
												 <spring:message code="label.inventory.master.materialtype.chkbox.parenttype" />
												 </label>
											  </div>
											  <label for="name" class="col-md-2 col-sm-2 col-xs-12"><spring:message code="label.inventory.master.materialtype.parentmaterialname" />:</label>
											  <div class="col-md-4 col-sm-4 col-xs-12">
											  
												 <form:select path="materialTypeDTO.parentMaterialType" class="form-control" disabled="${(materialTypeDTO.parent!= null && materialTypeDTO.parent == true) ? true: false}">
												 <%-- 	<form:option value="">Select</form:option> --%>
    												<form:options items="${parentmaterialtyp}" itemValue="materialTypeId" itemLabel="materialTypeName"/>
												 </form:select>
											  </div>
										</div>
										<div class="form-group">
											  <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2">
												 <label class="checkbox-inline">
												 <form:checkbox path="materialTypeDTO.active" id=""/>
												 <spring:message code="label.inventory.master.materialtype.active" />
												 </label>
											  </div>
										</div>
									</div>
									
									<div class="row">
										<div class="form-group ">
											<div class="actionBar">
												<button type="submit" id="submitBtn" class="btn"><spring:message code="label.btn.save" /></button>
												<button class="btn" type="button" name="resetMaterialTypAdd" value="resetmaterialtyp"><spring:message code="label.btn.reset" /></button>
												<a href="<c:url value="searchmaterialtype" />">
												<button class="btn"  type="submit" onClick="javascript:goback()"><spring:message code="label.btn.close" /></button></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					

				</div>
			

	

			
			<jsp:include page="../../common/footer.jsp" />
		</div>
</div>

	
	<jsp:include page="../../common/jsFooter.jsp" />
	<script>
		function parentTypes() {
		    var  selectedValue= $("#chooseparent").val();
		    
		    $('#chooseparent').on('change',function() {

		    	            if(this.checked){
		    	            $.ajax({
		    	                type: "GET",
		    	                url: "getParentMaterialTypes",
		    	                data: {},
		    	                success: function(data) {
		    	                    alert('it worked');
		    	                    $('#container').html(data);
		    	                },
		    	                 error: function() {
		    	                    alert('it broke');
		    	                },
		    	                complete: function() {
		    	                    alert('it completed');
		    	                }
		    	            });

		    	            }
		    	      }); 
		   
		   // window.location = "getParentMaterialTypes";
		   }
		
		function validateFormInput() {
			var  selectedValue= $("#chooseparent").val();
		    if (selectedValue == false) {
		        alert("Parenttype checkbox must be checked");
		        return false;
		    }
		}
		
		function goback(){
			window.location = "searchmaterialtype";
		}
		</script>
	</form:form>	
</body>
</html>
</compress:html>
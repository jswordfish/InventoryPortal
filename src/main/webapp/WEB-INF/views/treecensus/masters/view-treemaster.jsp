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
										<spring:message code="label.treemaster" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									   <c:url var="saveTreeMaster" value="/treecensus/savetreemasterData" />
									<form:form   method="POST" action="${saveTreeMaster}" id="treemasterFrom" modelAttribute="treeCensusDetail">
										<div class="row">
									        <div class="form-group">
										        <label for="cal" class="col-md-2 col-sm-12">Tree Scientific Name: *</label>
					            		 		<div class="col-md-4 col-sm-12">
					            		 		      <form:input id="scientificListId" path="" cssClass="form-control"/>
												     <form:hidden id="scientificId" path="tmTreeNameMaster.treenameId" cssClass="form-control"/>		
												 </div>
												 
												  <label for="cal" class="col-md-2 col-sm-12">Tree Status: *</label>
						            		 		<div class="col-md-4 col-sm-12">
													    <form:input id="treestatusListId" path="" cssClass="form-control"/>
													    <form:hidden id="treestatusId" path="lookupDetIdTst" cssClass="form-control"/>
													 </div>
									        </div>
											         <div class="form-group">
							            		 		 <label for="cal" class="col-md-2 col-sm-12">Tree Vernacular Name: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="vernaListId" path="" cssClass="form-control"/>
														    <form:hidden id="vernaId" path="" cssClass="form-control"/>
														 </div> 
														  <label for="cal" class="col-md-2 col-sm-12">Tree Common Name: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="treeCommonListId" path="" cssClass="form-control"/>
														    <form:hidden id="treeCommonId" path="" cssClass="form-control"/>
														 </div>  
													 </div> 
														 
													<div class="form-group">
														  <label for="cal" class="col-md-2 col-sm-12">Tree Family Name: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														     <form:input id="treeFamilyListId" path="" cssClass="form-control"/>
														   <form:hidden id="treeFamilyId" path="" cssClass="form-control"/>
											
														 </div>
														 <label for="cal" class="col-md-2 col-sm-12">Tree Species: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="treespeciesListId" path="" cssClass="form-control"/>
														    <form:hidden id="treespeciesId" path="lookupDetIdTsm" cssClass="form-control"/>
														     <form:hidden id="ulbid" path="ulbId" cssClass="form-control"/>
														 </div>
													 </div> 
													
											        <div class="form-group">
							            		 	     <label for="cal" class="col-md-2 col-sm-12">Bark Shape: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="barkListId" path="" cssClass="form-control"/>
														     <form:hidden id="barkId" path="lookupDetIdBsm" cssClass="form-control"/>
														 </div>	
														 
														 <label for="cal" class="col-md-2 col-sm-12">Leaf Shape: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														     <form:input id="leafshapeListId" path="" cssClass="form-control"/>
														     <form:hidden id="leafId" path="lookupDetIdLsm" cssClass="form-control"/>
														 </div>	  
											        </div>
											        
											         <div class="form-group">
							            		 	     <label for="cal" class="col-md-2 col-sm-12">Leaf Colour: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														     <form:input id="leafcolourListId" path="" cssClass="form-control"/>
														     <form:hidden id="leafcolourId" path="lookupDetIdLcm" cssClass="form-control"/>
														 </div>	
														 
														 <label for="cal" class="col-md-2 col-sm-12">Texture: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="textureListId" path="" cssClass="form-control"/>
														    <form:hidden id="textureId" path="lookupDetIdTms" cssClass="form-control"/>
														 </div> 
											        </div>
														  
													<div class="form-group">
												        <label for="cal" class="col-md-2 col-sm-12">Flower Name: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														    <form:input id="flowernameListId" path="" cssClass="form-control"/>
														    <form:hidden id="flowernameId" path="lookupDetIdFnm" cssClass="form-control"/>
														 </div>
														 
														 <label for="cal" class="col-md-2 col-sm-12">Colour Master: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														     <form:input id="colorMasterListId" path="" cssClass="form-control"/>
														    <form:hidden id="colorMasterId" path="lookupDetIdCom" cssClass="form-control"/>
														 </div>
											        </div>
											        
												    <div class="form-group">
												        <label for="cal" class="col-md-2 col-sm-12">Fruit Name: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="fruitnameListId" path="" cssClass="form-control"/>
														    <form:hidden id="fruitnameId" path="lookupDetIdFrm" cssClass="form-control"/>
														 </div>
														 
														 <label for="cal" class="col-md-2 col-sm-12">Size: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														   <form:input id="sizeId" path="sizeValue" cssClass="form-control"/>
														 </div>
											        </div>
											        
							            		 	<div class="form-group">
							            		 		 
												        <label for="cal" class="col-md-2 col-sm-12">Shape Master: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														     <form:input id="shapeListId" path="" cssClass="form-control"/>
														    <form:hidden id="shapeId" path="lookupDetIdSma" cssClass="form-control"/>
														 </div>
														 
														 <label for="cal" class="col-md-2 col-sm-12">Odour: *</label>
							            		 		<div class="col-md-4 col-sm-12">
														   <%-- <form:input id="odourListId" path="" cssClass="form-control"/> --%>
														   <form:input id="odourListId" path="" cssClass="form-control"/>
														   <form:hidden id="odourId" path="lookupDetIdOdm" cssClass="form-control"/>
														</div>
											         </div> 
											        
										</div>
										
										<div class="row">
											<ul class="nav navbar-right panel_toolbox">
												  
							                     <li>
							                     
							                     <button type="submit" id="submitBtn"
													class="btn btn-success"><spring:message code="label.btn.add" /></button>
							                     </li>	  
						                    </ul>
											
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					
					

				</div>
			</div>
			<!-- /page content -->

			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../../common/jsFooter.jsp" />
	<script type="text/javascript">
	
	 $(function(){
		 
			 $("#submitBtn").click(function(){
			    //$("#treemasterFrom").trigger("reset");
			    document.getElementById("treemasterFrom").reset();
			}); 
		}); 
	
            /* $(function () {
                $('#datetimepicker1').datetimepicker();
            }); */
        </script>
        
<script>
	
	var treeNameData;
	
	 $(document).ready(function () {
	        $('#app-table').click(function () {
	        	$('.application-table').toggle("slow", function(){});
	        });
	        
	    	$("#landmarkListId").autocomplete({
	    		source:function(request, response){
	    			if(request.term.length < 3) {
	    				return false;
	    			}
	    			$.get('${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl', {prefixName:'LOC',searchString:request.term,ulbIdAuto:$('#ulbid').val()}, function(data){
	            		response($.map(data, function(key, value) {
	            		    console.log("key--"+key+"value--"+value);
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
	                $("#landmarkListId").val(ui.item.label);
	                $("#landMarkId").val(ui.item.value);
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
	        
	        $("#treestatusListId").autocomplete({
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
	                $("#treestatusListId").val(ui.item.label);
	                $("#treestatusId").val(ui.item.value);
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
	        
/* ------------------ For Matser Without Prefix--------------------------------------------------   */
	        
	        $("#scientificListId").autocomplete({
	            source:function(request, response){
	            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl', {treeNameType:'scientific', searchString:request.term}, function(data){
	            		treeNameData = [];
	            		treeNameData = data;
	            		if(treeNameData.length == 0){
	            			$("#scientificListId").val("");
	    	                $("#scientificId").val("");
	    	                
	    	                $("#vernaListId").val("");
	    	                $("#vernaId").val("");
	    	                
	    	                $("#treeCommonListId").val("");
	    	                $("#treeCommonId").val("");
	    	                
	    	                $("#treeFamilyListId").val("");
	    	                $("#treeFamilyId").val("");
	            		}
	            		response($.map(data, function(element, index) {
	            		    	return {
	                                label: element.treeSciNameEn,
	                                value: element.treenameId,
	                                idx:index
	                            };
                        }));
	            	})
	            },
	            select: function(event, ui) {
	                event.preventDefault();
	                $("#scientificListId").val(ui.item.label);
	                $("#scientificId").val(ui.item.value);
	                
	                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn);
	                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn);
	                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn);
	                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
	                
	                return false;
	            },
	            focus: function (event, ui) {
	                this.value = ui.item.label;	                 
	                event.preventDefault();
	            }
	        }); 
	        
	        $("#vernaListId").autocomplete({
	            source:function(request, response){
	            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl', {treeNameType:'vernacular', searchString:request.term}, function(data){
	            		treeNameData = [];
	            		treeNameData = data;
	            		if(treeNameData.length == 0){
	            			$("#scientificListId").val("");
	    	                $("#scientificId").val("");
	    	                
	    	                $("#vernaListId").val("");
	    	                $("#vernaId").val("");
	    	                
	    	                $("#treeCommonListId").val("");
	    	                $("#treeCommonId").val("");
	    	                
	    	                $("#treeFamilyListId").val("");
	    	                $("#treeFamilyId").val("");
	            		}
	            		response($.map(data, function(element, index) {
	            		    	return {
	                                label: element.treeVerNameEn,
	                                value: element.treenameId,
	                                idx:index
	                            };
                        }));
	            	})
	            },
	            select: function(event, ui) {
	                event.preventDefault();
	                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn);
	                $("#scientificId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#vernaListId").val(ui.item.label);
	                $("#vernaId").val(ui.item.value);
	                
	                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn);
	                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn);
	                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
	                
	                return false;
	            },
	            focus: function (event, ui) {
	                this.value = ui.item.label;	                 
	                event.preventDefault();
	            }
	        });
	        
	        $("#treeCommonListId").autocomplete({
	            source:function(request, response){
	            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl', {treeNameType:'treecommon', searchString:request.term}, function(data){
	            		treeNameData = [];
	            		treeNameData = data;
	            		if(treeNameData.length == 0){
	            			$("#scientificListId").val("");
	    	                $("#scientificId").val("");
	    	                
	    	                $("#vernaListId").val("");
	    	                $("#vernaId").val("");
	    	                
	    	                $("#treeCommonListId").val("");
	    	                $("#treeCommonId").val("");
	    	                
	    	                $("#treeFamilyListId").val("");
	    	                $("#treeFamilyId").val("");
	            		}
	            		response($.map(data, function(element, index) {
	            		    	return {
	                                label: element.treeComNameEn,
	                                value: element.treenameId,
	                                idx:index
	                            };
                        }));
	            	})
	            },
	            select: function(event, ui) {
	                event.preventDefault();
	                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn);
	                $("#scientificId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn);
	                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeCommonListId").val(ui.item.label);
	                $("#treeCommonId").val(ui.item.value);
	                
	                $("#treeFamilyListId").val(treeNameData[ui.item.idx].treeFamNameEn);
	                $("#treeFamilyId").val(treeNameData[ui.item.idx].treenameId);
	                
	                return false;
	            } ,
	            focus: function (event, ui) {
	                this.value = ui.item.label;	                 
	                event.preventDefault();
	            }
	        });
	        
	        $("#treeFamilyListId").autocomplete({
	            source:function(request, response){
	            	$.get('${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl', {treeNameType:'treefamily', searchString:request.term}, function(data){
	            		treeNameData = [];
	            		treeNameData = data;
	            		if(treeNameData.length == 0){
	            			$("#scientificListId").val("");
	    	                $("#scientificId").val("");
	    	                
	    	                $("#vernaListId").val("");
	    	                $("#vernaId").val("");
	    	                
	    	                $("#treeCommonListId").val("");
	    	                $("#treeCommonId").val("");
	    	                
	    	                $("#treeFamilyListId").val("");
	    	                $("#treeFamilyId").val("");
	            		}
	            		response($.map(data, function(element, index) {
	            		    	return {
	                                label: element.treeFamNameEn,
	                                value: element.treenameId,
	                                idx:index
	                            };
                        }));
	            	})
	            },
	            select: function(event, ui) {
	                event.preventDefault();
	                $("#scientificListId").val(treeNameData[ui.item.idx].treeSciNameEn);
	                $("#scientificId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#vernaListId").val(treeNameData[ui.item.idx].treeVerNameEn);
	                $("#vernaId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeCommonListId").val(treeNameData[ui.item.idx].treeComNameEn);
	                $("#treeCommonId").val(treeNameData[ui.item.idx].treenameId);
	                
	                $("#treeFamilyListId").val(ui.item.label);
	                $("#treeFamilyId").val(ui.item.value);
	                
	                return false;
	            } ,
	            focus: function (event, ui) {
	                this.value = ui.item.label;	                 
	                event.preventDefault();
	            }
	        
	        });
	       
	    });
	</script>
	<c:if test="${not empty message}" >
	<script>
	
		 new PNotify({
				title : '${message}',
				styling : 'bootstrap3',
				type : 'success'
			}); 
	
	</script>
 
	</c:if>
</body>
</html>
</compress:html>
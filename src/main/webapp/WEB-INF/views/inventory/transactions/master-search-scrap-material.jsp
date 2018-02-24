<%@page import="java.util.ArrayList"%>
<%@page import="com.innowave.mahaulb.repository.inventory.dao.trans.TtInvScrap"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>
<%@ page import="com.innowave.mahaulb.web.inventory.controller.forms.DisposalOfScrapDTO, java.text.*, java.util.*" %>
<compress:html >
<html>

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../../common/header.jsp" />
<%
DisposalOfScrapDTO form = (DisposalOfScrapDTO)request.getSession().getAttribute("disposalOfScrapDTO");
String format = "yyyy-MM-dd";
DateFormat dateFormat = new SimpleDateFormat(format);
String scrapDate = form.getDisposalFormDate();
// 	if(form.getCurrent()!= null && form.getCurrent().getScrapDate() != null){
// 		scrapDate = dateFormat.format(form.getCurrent().getScrapDate());
// 	}
List<TtInvScrap> scraps = (List<TtInvScrap>)request.getAttribute("scraps");	
if(scraps == null){
	scraps = new ArrayList<TtInvScrap>();
}
%>
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<jsp:include page="../../common/leftMenu.jsp" />
			<jsp:include page="../../common/headerTop.jsp" />


			<!-- page content -->
			

			<div class="right_col" role="main">
				<div class="">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
									
										<spring:message code="label.document.disposalscrapmat.search" />
										
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				                      </li>
				                        
				                    </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content" style="display: block;"> <br> 
    
   						 


    						<form:form id="disposalOfScrapFrom" action="seachdisposalofscrap" method="GET" commandName="disposalOfScrapDTO">
    		
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.disposalscrapmat.disposalno" />:<span class="required"></span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    								<div>
    								
    									<form:input path="disposalNo" cssClass="form-control"  />
    										
    								</div>
    								</div>
    								<div class="col-md-2  col-sm-12 col-xs-12">
    									<label>
    									<spring:message code="label.document.disposalscrapmat.storename" />:<span class="required"></span>
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
    									 <form:select id="stores" path="storeId" name="storeId" cssClass="form-control" > 
											      <form:option value="" label="--Please Select"/>
											      <form:options items="${stores}" itemValue="storeId" itemLabel="storeName"/>
											 </form:select>
    										
    								</div>
    							</div>
    							
    							
    							<div class="row form-group">
    								<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.disposalscrapmat.disposalfromdate" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12">
	    								<div>
	    								
		    							
												<input type="date" name="fromdisposalddate" id="fromdisposalddate" class="form-control" value="<%= scrapDate %>" />			
											
	    								
	    										
	    								</div>
    								</div>
<!--     								<div class="col-md-2  col-sm-12 col-xs-12"> -->
<!--     									<label> -->
<%--     									<spring:message code="label.document.disposalscrapmat.disposaltodate" />:<span class="required">*</span> --%>
<!--     									</label> -->
<!--     								</div> -->
<!--     								<div class="col-md-4 col-sm-12 col-xs-12"> -->
<!--     								<div class='input-group date' id='todisposaldate'> -->
<!-- 													<input type="text" class="form-control" value="" placeholder="dd/MM/yyyy" id="disposaltodate" name="disposaltodate" /> -->
<!-- 													 <span class="input-group-addon">  -->
<!-- 													 <span class="glyphicon glyphicon-calendar"> -->
<!-- 													 </span> -->
<!-- 													</span> -->
<!-- 												</div> -->
    									
<!--     								</div> -->
									<div class="col-md-2 col-sm-12 col-xs-12">
    									<label>
    										<spring:message code="label.document.scarpwrite.status" />:
    									</label>
    								</div>
    								<div class="col-md-4 col-sm-12 col-xs-12 ">
	    								<div>
	    									
	    									<form:checkbox path="status" name="status" />
	    								</div>
    								</div>
    							</div>
    							
    							
    							
    							
    							
									
    									<div class="actionbar">
    										<button type="submit" class="btn"><spring:message code="label.btn.search" /></button>
    										<button type="reset" class="btn"><spring:message code="label.btn.reset" /></button>
    										
										</div>
										<jsp:include page="../../common/footer.jsp" />
											<jsp:include page="../../common/jsFooter.jsp" />
											
												
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
									</form:form>
										
									</div>
									
							</div>
							
							<div class="x_panel ">
									<div class="x_title">
									<h2>
										<spring:message code="label.document.scarpwrite.List" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
				                     <li>
				                     	<a href="adddisposalofscrap"><button type="button" id="addBtn"
										class="btn btn-success"><spring:message code="label.btn.add" /></button></a>
				                     </li>	  
				                    </ul>
									</div>
									<div class="x_content">
										<div class="panel-body table-responsive">
													<table id=""
														 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
														<thead>
															<tr>
																<th><spring:message code="label.tbl.srno" /></th>
																<th><spring:message code="label.document.disposalscrapmat.disposalno" /></th>
																<th><spring:message code="label.document.disposalscrapmat.storename" /></th>
																<th><spring:message code="label.document.disposalscrapmat.disposalfromdate" /></th>
																
																<th><spring:message code="label.document.scarpwrite.status" /></th>
																<th><spring:message code="label.btn.editview" /></th>
															</tr>
															
															
														</thead>
														<tbody>
														<%
															int count = 1;
														%>
														 <c:forEach items="${scraps}" var="scrap" >   
						                      	<tr>
						                      		<td><%= count++ %></td>
						                      		<td><c:out value="${scrap.scrapNo}"></c:out>  </td>
						                      		<td><c:out value="${scrap.tmInvStore.storeName}"></c:out>  </td>
						                      		<td><c:out value="${scrap.scrapDate}"></c:out>  </td>
						                      		<td><c:out value="${scrap.scrapStatus}"></c:out>  </td>
						                      	
						                      		<td>
														<a href="javascript:editScrap(${scrap.scrapId} )"><i class="fa fa-edit"></i></a> /
														 <a href="javascript:deleteScrap(${scrap.scrapId} )"><i class="fa fa-trash" aria-hidden="true"></i></a>
													</td>
						                      	</tr>
						                      	</c:forEach>   
														</tbody>
													</table>
												</div>
									</div>
									</div>
							
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>


                  <!-- /modals ends here-->

               
                   <!-- /modals ends here-->
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../../common/jsFooter.jsp" />
<script>
$('#hoardreg').datetimepicker({
	 viewMode : 'days',
     format : 'DD/MM/YYYY'
});

$('#tojournal').datetimepicker({
	 viewMode : 'days',
    format : 'DD/MM/YYYY'
});

function editScrap(scrap){
	 window.location = "editdisposalofscrap?scrapId="+scrap+"&edit=true";
}

function deleteScrap(scrap){
	 window.location = "deletedisposalofscrap?scrapId="+scrap+"&edit=true";
}


	 
</script>
</body>
</html>
</compress:html>
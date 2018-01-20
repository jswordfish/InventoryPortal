<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ page session="false"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<%
	response.setContentType("text/html; charset=utf-8");

//String t = (String)request.getSession().getAttribute("test"); 
%>
 
<compress:html >

<html>

<head>

 <jsp:include page="common/homeheader.jsp" />  
 
 
</head>
<body>
    <jsp:include page="common/citizenHeaderTop.jsp" /> 
      
     
     <section class="section">
     	<div class="container-fluid">
     		<div class="tiles-section">
     			<div class="text-center">
     				<h2>
     					<spring:message code="label.document.presentation.manual" />
     				</h2>

     			</div>
     			<div class="container-fluid space-top">
     			<table class="table tab-with-pdf">
				  <tbody>
				      <tr>
				        <td><a data-toggle="modal" data-target="#pdf-holder"><spring:message code="label.document.presentation.modbref" /></a></td>
				        <td><a href="" ><spring:message code="label.document.presentation.propass" /></a></td>
				        <td><a href="" ><spring:message code="label.document.presentation.proptax" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.watermod" /></a></td>
				      </tr>
				      <tr>
				         <td><a href="" ><spring:message code="label.document.presentation.watertax" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.fireser" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.mariagereg" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.tradelic" /></a></td>
				      </tr>
				      <tr>
				         <td><a href="" ><spring:message code="label.document.presentation.worksman" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.solidwaste" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.treecen" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.socialwel" /></a></td>
				      </tr>
				      <tr>
				         <td><a href="" ><spring:message code="label.document.presentation.webpor" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.permanage" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.nocmod" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.munsec" /></a></td>
				      </tr>
				      
				      <tr>
				         <td><a href="" ><spring:message code="label.document.presentation.grevred" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.ulbdash" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.mobapp" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.legalcase" /></a></td>
				      </tr>
				      
				      <tr>
				         <td><a href="" ><spring:message code="label.document.presentation.landes" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.hrpay" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.invent" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.fileman" /></a></td>
				      </tr> 
				      
				      <tr>
				         <td><a href="" ><spring:message code="label.document.presentation.dmadash" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.daktapal" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.assetman" /></a></td>
				         <td><a href="" ><spring:message code="label.document.presentation.finmanag" /></a></td>
				      </tr> 
				    </tbody>
				 </table>
     					
     				</div>
     		</div>
     	</div>
     </section>
      
      
      <div class="modal fade" id="pdf-holder" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header"><spring:message code="label.document.presentation.modulewise" /></div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          
        </div>
        <div class="modal-structure">
        	<div>
        		<iframe src="<c:url value="../pdf/Module_Wise_Breifing.pdf" />" style="width:100%;height:100%">
     				
     				</iframe>
        	</div>
        </div>
      </div>
      
    </div>
  </div>  
 <div style="visibility: hidden;">
<jsp:include page="common/servicePages.jsp" />
</div>
<jsp:include page="common/citizenFooter.jsp" />
<jsp:include page="common/jsFooter.jsp" />
<jsp:include page="common/citizenSupport.jsp" />
      </body>
      </html>
      </compress:html>
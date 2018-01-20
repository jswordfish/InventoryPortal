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
     					Downloads
     				</h2>

     			</div>
     			<div class="container-fluid space-top">
     			<table class="table tab-with-pdf">
				    
				    <tbody>
				      <tr>
				        <td><a data-toggle="modal" data-target="#pdf-holder">EODB_GR_MAR</a></td>
				        <td>Doe</td>
				        <td>john@example.com</td>
				        <td>john@example.com</td>
				      </tr>
				      <tr>
				        <td>Mary</td>
				        <td>Moe</td>
				        <td>mary@example.com</td>
				        <td>mary@example.com</td>
				      </tr>
				      <tr>
				        <td>July</td>
				        <td>Dooley</td>
				        <td>july@example.com</td>
				        <td>mary@example.com</td>
				      </tr>
				    </tbody>
				 </table>
     					
     				</div>
     		</div>
     	</div>
     </section>
      
       <jsp:include page="common/citizenFooter.jsp" />
      <div class="modal fade" id="pdf-holder" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Downloads</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          
        </div>
        <div class="modal-structure">
        	<div>
        		<iframe src="<c:url value="../pdf/EODB_GR_MAR.pdf" />" style="width:100%;height:100%">
     				
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
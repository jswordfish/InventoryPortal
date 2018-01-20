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
     					Presentation
     				</h2>

     			</div>
     			<div class="container-fluid space-top">
     			<table class="table tab-with-pdf">
				    
				    <tbody>
				      <tr>
				        <td><a data-toggle="modal" data-target="#pdf-holder">Module Wise Breifing</a></td>
				        <td><a href="" >Property Assessment Features</a></td>
				        <td><a href="" >Property Tax</a></td>
				         <td><a href="" >Water Module Features</a></td>
				      </tr>
				      <tr>
				         <td><a href="" >Water Tax</a></td>
				         <td><a href="" >Fire Services</a></td>
				         <td><a href="" >Marriage Registration</a></td>
				         <td><a href="" >Trade License</a></td>
				      </tr>
				      <tr>
				         <td><a href="" >Works Management</a></td>
				         <td><a href="" >Solid Waste Management</a></td>
				         <td><a href="" >Tree Census</a></td>
				         <td><a href="" >Social Welfare</a></td>
				      </tr>
				      <tr>
				         <td><a href="" >Web-Based Portal</a></td>
				         <td><a href="" >Performance Management</a></td>
				         <td><a href="" >NOC Module</a></td>
				         <td><a href="" >Municipal Secretary</a></td>
				      </tr>
				      
				      <tr>
				         <td><a href="" >Grievance Redressal </a></td>
				         <td><a href="" >ULB Dashboard</a></td>
				         <td><a href="" >Mobile Application</a></td>
				         <td><a href="" >Legal Case Management</a></td>
				      </tr>
				      
				      <tr>
				         <td><a href="" >Land and Estate Management</a></td>
				         <td><a href="" >HR &amp; Payroll Management</a></td>
				         <td><a href="" >Inventory Module</a></td>
				         <td><a href="" >File Management System</a></td>
				      </tr> 
				      
				      <tr>
				         <td><a href="" >DMA Dashboaord</a></td>
				         <td><a href="" >DAK (Tapal) Management</a></td>
				         <td><a href="" >Asset Management</a></td>
				         <td><a href="" >Financial Management System</a></td>
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
          <div class="service-header">Module Wise Briefing</div>
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
<%@page import="com.innowave.mahaulb.common.service.beans.UserBean"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ page session="false"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<% 
UserBean userBeanObj=(UserBean)request.getSession().getAttribute("userBeanObj"); 
//System.out.println(" >>> "+userBeanObj.getUserName());
%>
<compress:html >
<html>

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
 <jsp:include page="common/header.jsp" />  
     <script src="<c:url value="/vendors/highmap/js/highcharts.js" />"></script> 
 
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
      	<jsp:include page="common/leftMenu.jsp" /> 
      	<jsp:include page="common/headerTop.jsp" /> 
      	
      	 <!-- page content -->
        <%--  <jsp:include page="home/employee-dashboard.jsp" />  --%>
        <!-- /page content -->	
         <jsp:include page="common/footer.jsp" /> 
      </div>
    </div>
      
    <%-- <font color="red">${errorMessage}</font>
    <form method="post">
        <spring:message code="login.name" /> : <input type="text" name="name" />
        <spring:message code="login.password" /> : <input type="password" name="password" /> 
        <input type="submit" />
    </form> --%>
<jsp:include page="common/jsFooter.jsp" />  

<script>

$(document).ready(function(){
   /*  $("#treename").click(function(){
     	$("#loadPage").load("masters/view-treename.jsp");
    }); */
   
	init_PNotify();
    
	$("#serviceRequestTbl").DataTable();
   });
   

</script>    
</body>
</html>
</compress:html>
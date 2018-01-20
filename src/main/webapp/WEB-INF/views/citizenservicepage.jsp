<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ page session="false"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>



<html>

<head>

 <jsp:include page="common/homeheader.jsp" />  
 
</head>
<body>
   <jsp:include page="common/citizenHeaderTop.jsp" />  
      <div class="container-fluid">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="contact-structure">
               
				<jsp:include page="common/servicePages.jsp" />
            </div>
        </div>
    </div>
</div>
 
<jsp:include page="common/citizenFooter.jsp" />
<jsp:include page="common/jsFooter.jsp" />
<jsp:include page="common/citizenSupport.jsp" />
	
	

      </body>
      </html>
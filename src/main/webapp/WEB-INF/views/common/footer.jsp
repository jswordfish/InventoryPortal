 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <!-- footer content -->
 	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
        <div class="footer-sec navbar-fixed-bottom">
<div class="container-fluid"> 
      	<small>Best Viewed on internet explorer 9+, firefox, Chrome</small>
      	<small class="copy-info"><spring:message code="label.footer" /></small>
      </div>
</div>
	
         
        <!-- /footer content -->
<%-- <div class="page-footer fixed" style="background-image:url(<c:url value="/images/headerbnd.jpg" />);">
	<div class="page-footer-inner text-center">
		<label class="orange-text text-accent-1" style="font-size: 10px; color: #ffd180;">
			<spring:message code="label.footer" />
			&nbsp;
			<spring:message code="label.footer1" /> : egov.support@thanecity.gov.in
			&nbsp;
			<spring:message code="label.footer2" /> <b></b>
		</label>
	</div>
</div>  --%>       
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
                <div class="contact-head text-center ">
                	<spring:message code="label.document.contact.title" />
                </div> 
                <div class="row" style="border-bottom:1px solid">
                	<div class="col-md-6">
                		<p>
                		<spring:message code="label.document.contact.ifyouwant" />
                		</p>
                		<h4><spring:message code="label.document.contact.centralsup" /></h4>
                		<div class="contact-border">
                		 <div class="form-group">
                		 	<label>
                		 	<spring:message code="label.document.contact.contno" />:
                		 </label>
                		 <span>
                		 989999999
                		 </span>
                		 </div>
                		 <div class="form-group">
                		 	<label>
                		 	<spring:message code="label.document.contact.emailid" />:
                		 </label>
                		 <span>
                			 mahaulb.support@mahaulb.gov.in
                		 </span>
                		 </div>
                		</div>
                	</div>
                	<div class="col-md-6">
                		<h4>
                		<spring:message code="label.document.contact.getin" />
                		</h4>
                	
                			<div class="col-md-12 form-group">
                			<input type="text" class="form-control" placeholder="Name*"> 
                			</div>
                		
                			<div class="col-md-12 form-group">
                				<input type="text" class="form-control" placeholder="Email Id*">
                			</div>
                			
                			<div class="col-md-12 form-group">
                				<input type="text" class="form-control" placeholder="Contact No.*">
                			</div>
                		
                		
                		
                			<div class="col-md-12 form-group">
                				<textarea style="width:100%;max-width:100%;overflow-x:hidden;overflow-y:auto;" placeholder="Leave a Feedback" rows="5"></textarea>
                			</div>
                		
                		<div class="text-center">
                			<button class="btn btn-primary" style="margin: 15px;"><spring:message code="label.btn.submit" /></button>	
                		</div>
                	</div>
                </div>
                <div class="socialbar">
                	<ul><li><a href="" >
                		<i class="fa fa-facebook" aria-hidden="true"></i>
                	</a></li>
                	<li><a href="" >
                		<i class="fa fa-twitter" aria-hidden="true"></i>
                	</a></li>
                	</ul>
                	
                	
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

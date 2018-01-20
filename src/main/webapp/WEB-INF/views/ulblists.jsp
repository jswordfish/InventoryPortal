<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ page session="false"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<%
	response.setContentType("text/html; charset=utf-8");
%>
 
<compress:html >

<html>

<head>

 <jsp:include page="common/homeheader.jsp" />  
 
 
</head>
<body>
   <jsp:include page="common/citizenHeaderTop.jsp" /> 
      
      <div class="text-center">
      	<h2>
      		Search ULB List
      	</h2>
      </div>
      <div class="container-fluid">
      	<div class="row form-group">
      		<div class="col-md-4">
      			<div>
      				<select class="form-control" id="districtId">
      					<option value="0" >Name of District</option>
      					<c:forEach items = "${LookupHierarchical}" var="LookupHierarchicalCountry" >
											   <option value= "${LookupHierarchicalCountry.lookupDetHierId}" > ${LookupHierarchicalCountry.lookupDetHierDescEn} (${LookupHierarchicalCountry.lookupDetHierDescRg})</option>
										</c:forEach>
      				</select>
      				
      			</div>
      		</div>
      		<div class="col-md-4">
      			<div>
      			<select class="form-control" id="autoUlbId">
      					<option>Available ULB List</option>
      				</select>

      			</div>
      		</div>
      		<div class="col-md-2">
      			<div>
      				<button type="button" id="goToUlbSite"class="btn btn-primary">
      					GO
      				</button>
      			</div>
      		</div>
      	</div>
      	<!-- <div class="text-center form-group">
      		<h2>ULB List</h2> 
      	</div>
      	<div class="panel-group" id="accordion">
    		<div class="row form-group">
    		<div class="col-md-3">
    			<div class="panel panel-primary sharp-panel">
		      <div class="panel-heading">
		       <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"> 
		       <h4 class="panel-title">
		          Ahmednagar
		        </h4>
		        <i class="fa fa-angle-down" aria-hidden="true"></i>
		        </a>
		      </div>
		      <div id="collapse1" class="panel-collapse collapse in">
		        	<div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a href="">ahmednagar municipal corporation</a></li>
			        		<li><a href="">Sangamner Municipal Council</a></li>
			        		<li><a href="">Shrirampur Municipal Council</a></li>
			        		<li><a href="">Kopargaon Municipal Council</a></li>
			        		<li><a href="">Pathardi Municipal Council</a></li>
			        		<li><a href="">Rahata Pimplas Municipal Council</a></li>
			        		<li><a href="">Rahuri Municipal Council</a></li>
			        		<li><a href="">Jamkhed</a></li>
			        		<li><a href="">Sevgaon Municipal Council</a></li>
			        		<li><a href="">Srigonda Municipal Council</a></li>
			        		<li><a href="">Shirdi Nagar Panchayat</a></li>
			        		<li><a href="">Parner Nagar Panchayat</a></li>
			        		<li><a href="">Katraj Nagar Panchayat</a></li>
			        		<li><a href="">Akole Nagar Panchayat</a></li>
			        	</ul>
			        </div>
		      </div>
    				</div>
    		</div>	
    </div>
  </div>  -->
      	
      </div>
      
      
      
      <jsp:include page="common/jsFooter.jsp" />
      <jsp:include page="common/citizenFooter.jsp" />
      
     <c:url var='getDistrictUlb' value='/knowyourdetails/getDistrictUlb' />
     
     <script type="text/javascript">
     var getDistrictUlb = "${getDistrictUlb}";
     </script>
  
    <script src="<c:url value="/home/js/ulblistview.js" />"></script>
    </body>
</html>
</compress:html>
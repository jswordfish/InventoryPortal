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
                	<spring:message code="label.document.eventgal.title" />
                </div> 
                <div class="slider slider-for">
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
				</div>
				<div class="slider slider-nav slid-img-hold">
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
					<div>
						<div>
							<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg">
						</div>
					</div>
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
	<script>
	 $('.slider-for').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  arrows: false,
		  fade: true,
		  asNavFor: '.slider-nav'
		});
		$('.slider-nav').slick({
		  slidesToShow: 3,
		  slidesToScroll: 1,
		  asNavFor: '.slider-for',
		  dots: true,
		  centerMode: true,
		  focusOnSelect: true,
		  prevArrow: '<i class="fa fa-chevron-left image-left-arrow" aria-hidden="true"></i>',
		    nextArrow: '<i class="fa fa-chevron-right image-right-arrow" aria-hidden="true"></i>'
		});
	</script>

      </body>
      </html>

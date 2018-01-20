<%@page import="com.innowave.mahaulb.common.service.beans.UserBean"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
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
      <div class="pos-section">
        <div class="banner slick-slider">
          <div>
            <img src="<c:url value="/images/jay-maharashtra4.jpg"/>" />
          </div>
          <div>
            <img src="<c:url value="/images/The-Sea-Link.jpg"/>" />
          </div>
        </div><!-- banner -->
        
        <div class="pos-login">
          <div class="container-fluid">
            <div class="row">
              <div class="" style="text-align:right">
              <div class="login-design">
             	<ul class="nav nav-pills">
    				<li class="active"><a data-toggle="pill" href="#login"><spring:message code="label.document.homepage.login" /></a></li>
    				<li><a data-toggle="pill" href="#search-service"><spring:message code="label.document.homepage.search" /></a></li>
    				<li><a data-toggle="pill" href="#trackapplication"><spring:message code="label.document.homepage.trackyourapp" /></a></li>
    				<li><a data-toggle="pill" href="#downloadverfiyapplication"><spring:message code="label.document.homepage.verifycertifacte" /></a></li>
  				</ul><!-- nav -->
                
                 <div class="tab-content">
                 	<div id="login" class="tab-pane fade in active">
                 		  <div id="know-password">
                 		  	<h4><spring:message code="label.document.homepage.alreadylogin" /></h4>
                 		  
		                  <div class="form-group applicant-type">
		                    <div class="row">
		                    	<div class="col-md-4">
				                      <label><spring:message code="label.document.homepage.apptype" /></label>
			                    </div>
			                    <div class="col-md-8">
			                      <label class="radio-inline">
			                        <input type="radio" name="optradio" id="cit" checked value="CIZ"><spring:message code="label.document.homepage.citizen" />
			                      </label>
			                      <label class="radio-inline">
			                        <input type="radio" name="optradio"  id="emp" value="USR"><spring:message code="label.document.homepage.employee" />
			                      </label>
			                    </div>
		                    </div>
		                    <div class="ulb-drop" style="padding:10px 0px;display:none;">
				                  <select class="form-control" id="ulbId" name="ulbId">
				                  	<option value=""><spring:message code="label.document.homepage.selulb" /></option>
				                  </select>
			                  </div>
		                  </div>
                  		
		                  <div class="row">
		                    <div class="col-md-12 col-sm-12 col-xs-12">
		                      <div class="form-group">
		                        <input id="mobileNumber" name="mobileNumber" type="text" class="form-control" placeholder="Mobile Number / Login Id">
		                      </div>
		                    </div>
		                  </div>
		                  
		                  <div class="row">
		                    <div class="col-md-12 col-sm-12 col-xs-12">
		                      <div class="form-group">
		                      	<input id="loginpass" name="loginpass" type="password" placeholder="Password" onkeydown="if (event.keyCode == 13)
                           document.getElementById('loginBtn').click()" class="form-control" placeholder="Password">
		                      </div>
		                    </div>
		                  </div>
                  
		                  <div class="row">
		                    <div class="col-md-6 text-center">
		                      <button class="btn register-btn" type="button" id="loginBtn"><spring:message code="label.document.homepage.login" /></button>
		                    </div>
		                    <div class="col-md-6 text-center" id="loginRegBtn">
		                      <button class="btn register-btn" type="button"><a href="" data-toggle="modal" data-target="#reg-modal"><spring:message code="label.document.homepage.registerhere" /></a></button>
		                    </div>
		                  </div>
                  
		                  <div class="row">
		                    <div class="col-md-5 col-md-offset-7 text-right">
		                      <div class="applicant-type">
		                        <a href="#" id="forgot-password"><spring:message code="label.document.homepage.forgotpass" /></a>
		                      </div>
		                    </div>
		                  </div>
                 		  </div>
                 		  <div class="clearfix" id="dont-know-pass" style="display:none;">
		                  	<div class="form-group">
		                  		<spring:message code="label.document.homepage.resetpass" />
		                  	</div>
		                  	<div class="row form-group">
		                  		<div class="col-md-12">
		                  			<input id="enterMobile" name="" type="text" placeholder="Enter Mobile No." class="form-control">
		                  		</div>
		                  	</div>
		                  	<div class="row form-group">
		                  		<div class="col-md-12">
		                  			<div class="group-btns">
		                  				<button class="btn btn-primary" type="button"><spring:message code="label.document.homepage.sendotp" /></button>
		                  			<button class="btn btn-primary" type="button" id="goto-login"><spring:message code="label.document.homepage.go" /></button>
		                  			</div>
		                  		</div>
		                  		
		                  	</div>
		                  </div>
                 	</div><!-- login -->
                 	
                 	<div id="search-service" class="tab-pane fade">
                 		<h4><spring:message code="label.document.homepage.searchser" /></h4>
	                 	<p>
	                 		<spring:message code="label.document.homepage.typesomeletter" />
	                 	</p>
	                 	<div class="row">
			                <div class="col-md-12 col-sm-12 col-xs-12">
			                   	<div class="form-group">
			                       <input type="text" id="searchService"  class="form-control" placeholder="Search Services">
			                    </div>
				                    <div class="col-md-12 form-group">
				                    	<ul class="search-service-ul"></ul>
				                    </div>
		                    </div>
	                 	</div>
                 	</div><!-- #searchservice -->
                 
	                 <!-- <div id="trackapplication" class="tab-pane fade">
	                 	<h4>Track Your Application</h4>
	                 	<p>
	                 		Here you can track the status of your application. Kindly enter the Application ID that you received while applying. After entering a valid Application ID you will be able to see the current status of your application
	                 	</p>
	                 	
	                 	<div class="form-group">
	                 		<select id="ulb-dropdownForTracking" name="ulb-dropdownForTracking" class="form-control">
	                 			 <option value="">Please Select...</option>
	                 		</select>
	                 	</div>
	                 	<div class="form-group">
	                 		<input type="text"  id="applicantIdNum" class="form-control" placeholder="Application ID"/>
	                 	</div>
	                 	
	                 	<a data-toggle="modal" data-target="#trackyourapplication"><input type="submit" id="trackGoBtn" class="btn btn-primary btn-block" value="GO" /></a>
	                 </div> -->
	                 
	                 <!-- trackapplication -->
	                 
	                 <div id="trackapplication" class="tab-pane fade">
	                 	<h4><spring:message code="label.document.homepage.trackyourapp" /></h4>
	                 	<p>
	                 		<spring:message code="label.document.homepage.hereyoucan" />
	                 	</p>
	                 	
										
								<div class="form-group">
								                 	<div class="col-md-11 col-sm-11 col-xs-11" style="padding-left:0px;">
								                 		<select id="ulb-dropdownForTracking" name="ulb-dropdownForTracking" class="form-control">
								                 			 <option value=""><spring:message code="label.document.homepage.pleaseselect" />...</option>
								                 		</select>
								                 	</div>
								                 	
											<div class="col-md-1 col-sm-1 col-xs-1">
							                                                 <a href="#" id="searchLicenDet" data-toggle="modal" data-target="#trackyourdetails"><i class="fa fa-question-circle" style="font-size:25px"></i></a>
							                                         </div>
							</div>
							<div class="form-group">
							<div class="col-md-11 col-sm-11 col-xs-11" style="padding-left:0px">
								                 		<input type="text"  id="applicantIdNum" class="form-control" placeholder="Application ID"/>
								                 	</div>
							</div>
								                 	
							<div class="text-center">
								                 	<a data-toggle="modal" data-target="#trackyourapplication"><input type="submit" id="trackGoBtn" class="btn btn-go" value="GO" /></a>
							</div>
	                 </div>
	                 
	                 <div id="downloadverfiyapplication" class="tab-pane fade">
	                 	<h4><spring:message code="label.document.homepage.verifycertifacte" /></h4>
	                 	<p>
	                 		<spring:message code="label.document.homepage.canverify" />
	                 	</p>
	                 	
	                 	<div class="row">
	                 		<div class="col-md-12 col-sm-12 col-xs-12">
	                 			<select name="ulb-dropdownForDownload"  id="ulb-dropdownForDownload"  class="form-control">
	                 				<option value=""><spring:message code="label.document.homepage.pleaseselect" />...</option>
	                 			</select>
	                 		</div>
	                 	</div>
	                 	<div class="row">
	                 		<div class="col-md-12 col-sm-12 col-xs-12">
	                 			<select  class="form-control">
	                 				<option><spring:message code="label.document.homepage.typeofdoc" /></option>
	                 			</select>
	                 		</div>
	                 	</div>
	                 	<div class="row">
	                 		<div class="col-md-12 col-sm-12 col-xs-12">
	                 			<input type="text"  class="form-control" placeholder="Document No."/>
	                 		</div>
	                 	</div>
	                 	<div class="row">
	                 		<div class="col-md-12 col-sm-12 col-xs-12">
	                 			<input type="text"  class="form-control" placeholder="Document Date"/>
	                 		</div>
	                 	</div>
	                 	<div class="row">
		                 	<div class="col-md-4 col-md-offset-4">
		                 		<a data-toggle="modal" data-target="#verify_certificate"><input type="submit" class="btn btn-primary btn-block" value="Verify" /></a>
		                 	</div>
	                 	</div>
	                 	
	                 	
	                 </div><!-- trackapplication -->
	                 
	              </div><!-- tab-content -->
              </div><!-- login-design -->
            </div><!-- col-md-4 -->
          </div><!-- row -->
        </div>
        
        
      </div>
      
      
      </div>
        <jsp:include page="common/servicePages.jsp" />
     
     
      <section class="section" id="event_gallery">
      <div class="section-head">
         		 <h2>
         		 	<spring:message code="label.document.homepage.event" />
         		 </h2>
         	</div>
         	<div class="container-fluid">
         		<div class="slid-img-hold slick-slider">
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg" data-toggle="modal" data-target=#event-modal></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
					<div><img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"></div>
				</div>
         	</div>
      </section>
      
     <jsp:include page="common/citizenFooter.jsp" />
      
      
         
  <div class="modal fade" id="event-modal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Events</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          
        </div>
        <div class="modal-structure">
        	<div>
        		<img src="http://vicepresidentofindia.nic.in/sites/default/files/vp_addr1_icmr14112017.jpg"  style="width:100%">
        	</div>
        </div>
      </div>
      
    </div>
  </div>       
  
  <div class="modal fade" id="verify_certificate" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Certificate</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure"> 
          	<div class="form-group"> Entered Document Number is generated from this system and the details are as follows </div> 
	          <div class="row form-group"> 
		          <div class="col-md-12 col-sm-12 col-xs-12"> 
			        
			          <div class="below-head-cont" id="verifyLicNum">
			          	
			          </div> 
			       
			      </div> 
			     </div> 
			  </div>
        </div>
       
      </div>
      
    </div>
  </div>      
  
  <div class="modal fade" id="trackyourapplication" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Track Your Application</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          
       
        <div class="modal-structure">
                <div class="container-fluid space-top">
                        <div class="row form-group">
                          	<div class="col-md-2 col-sm-12 col-xs-12">
                                  <label>  Application No.: </label>
                          	</div>
                          	<div class="col-md-4 col-sm-12 col-xs-12">
                                  <div>
                                  	 <input type="text" id="trackAppliNum" class="form-control" readonly>
                                  </div>
                          	</div>
                          	<div class="col-md-2 col-sm-12 col-xs-12">
                                  <div>
                                       <label> Application Name: </label>
                                  </div>
                          	</div>
                          	<div class="col-md-4 col-sm-12 co-xs-12">
                                 <div>
                                      <input type="text" id="trackAppliName" class="form-control" readonly>        
                                 </div>
                            </div>
                        </div>
                        <div class="row form-group">
                             <div class="col-md-2 col-sm-12 col-xs-12">
                                     <label> Mobile No.: </label>
                             </div>
                             <div class="col-md-4 col-sm-12 col-xs-12">
                                     <div>
                                         <input type="text" id="trackmMbileNum" class="form-control" readonly>
                                     </div>
                             </div>
                             <div class="col-md-2 col-sm-12 col-xs-12">
                                  <div>
                                       <label> Aadhar No.: </label>
                                  </div>
                             </div>
                             <div class="col-md-4 col-sm-12 co-xs-12">
                                    <div>
                                         <input type="text" id="trackUIDNum" class="form-control" readonly>        
                                    </div>
                             </div>
                        </div>
                        <div class="row form-group">
                                <div class="col-md-2 col-sm-12 col-xs-12">
                                        <label> Status: </label>
                                </div>
                                <div class="col-md-4 col-sm-12 col-xs-12">
                                        <div>  
                                        	<input type="text" id="trackStatus" class="form-control" readonly> 
                                        </div>
                                </div>
                                
                        </div>
                        <table class="table tab-with-pdf form-group" id="appliTrackTable">
                                   <thead>
                                     <tr>
                                        <th>  Employee Name</th>
                                        <th>  Assigned Date  </th>
                                        <th>  Dispatch Date </th>
                                        <th>  Remarks </th>
                                   </tr>
                                   </thead>
                                   <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                   </tbody>
                        </table>
                       <div class="button-section col-md-3 col-md-offset-4 col-sm-12 col-xs-12">
                              <div class="form-group">
                                  <a data-dismiss="modal">
                                  	<button class="btn btn-primary btn-block" type="button">Close</button>
                                  </a>
                              </div>
                       </div>
                </div>
        	</div>
         </div>
      </div>
      
    </div>
  </div>
  
  <div class="modal fade" id="trackyourdetails" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header"><spring:message code="label.document.trackapp.title" /></div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          
       
        <div class="modal-structure">
                <div class="container-fluid space-top">
                <form id="searchTrackForm">
                        <div class="row form-group">
                                <div class="col-md-2 col-sm-12 col-xs-12">
                                        <label>
                                                <spring:message code="label.document.trackapp.ulbname" />:
                                        </label>
                                        <span class="required">*</span>
                                </div>
                                <div class="col-md-4 col-sm-12 col-xs-12" >
                                        <div>
                                                <select class="form-control" id="trackSearchUlb" name="trackSearchUlb">
                                                        <option value="0"> Select ULB </option>
                                                </select>
                                        </div>
                                </div>
                                <div class="col-md-2 col-sm-12 col-xs-12">
                                        <div>
                                                <label>
                                                       <spring:message code="label.document.trackapp.sername" />
                                                </label>
                                                <span class="required">
                                                *
                                                </span>
                                        </div>
                                </div>
                                <div class="col-md-4 col-sm-12 co-xs-12">
                                                <div>
	                                                <select class="form-control" id="trackSearchService" name="trackSearchService">
	                                                        <option value="0"> Select Service</option>
	                                                </select>
                                                </div>
                                        </div>
                        </div>
                        <div class="row form-group">
                                <div class="col-md-2 col-sm-12 col-xs-12">
                                        <label>
                                               <spring:message code="label.document.trackapp.aadno" />
                                        </label>
                                </div>
                                <div class="col-md-4 col-sm-12 col-xs-12">
                                        <div>
                                                <input type="text" id="searchTrackUID" name="searchTrackUID" class="form-control">
                                        </div>
                                </div>
                                
                        </div>
                        <div class="row form-group">
                                <div class="col-md-2 col-sm-12 col-xs-12">
                                        <label>
                                              <spring:message code="label.document.trackapp.reqname" />
                                        </label>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                        <div>
                                                <input type="text" class="form-control" id="searchTrackFname" name="searchTrackFname" placeholder="First Name">
                                        </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                        <div>
                                                <input type="text" class="form-control" id="searchTrackMname" name="searchTrackMname" placeholder="Middle Name">
                                        </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                        <div>
                                                <input type="text" class="form-control" id="searchTrackLname" name="searchTrackLname"  placeholder="Last Name">
                                        </div>
                                </div>
                                
                        </div>
                        </form>
                        
                        <div class="row form-group">
                                <div class="col-md-2 col-md-offset-3"> 
                                        <button type="button" id="searchTrackAppliBtn" class="btn btn-primary btn-block"><spring:message code="label.btn.search" />
                                        </button> 
                                </div> <div class="col-md-2"> 
                                        <button type="button" class="btn btn-block"> <spring:message code="label.btn.reset" /> 
                                        </button> 
                                </div> 
                                <div class="col-md-2"> 
                                        <button type="button" class="btn btn-block"> <spring:message code="label.btn.close" /> 
                                        </button> 
                                </div> 
                        </div>
                        
                        <!-- <div class="text-center form-group">
                                <h3>
                                        Service Details
                                </h3>
                        </div> -->
                        <table style="display: none;" class="table tab-with-pdf" id="searcTrackAppTab">
                                   <thead>
                                           <tr>
                                           <th>
                                                   Sr.No
                                           </th>
                                           <th>
                                                 <spring:message code="label.document.trackapp.serviceno" />
                                           </th>
                                           <th>
                                                   <spring:message code="label.document.trackapp.serviceno" />
                                           </th>
                                           <th>
                                                  <spring:message code="label.document.trackapp.mobno" />
                                           </th>
                                   </tr>
                                   </thead>
                                   <tbody>
                                           <tr>
                                                   <td>
                                                           
                                                   </td>
                                                   <td>
                                                           
                                                   </td>
                                                   <td>
                                                           
                                                   </td>
                                                   <td>
                                                           
                                                   </td>
                                           </tr>
                                   </tbody>
                        </table>
                </div>
        </div>
         </div>
      </div>
      
    </div>
  </div>
  
  <div id="reg-modal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content flat-modal">
      <div class="service-header"><spring:message code="label.document.createac.title" /></div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
      <div class="modal-body">
       <c:url var="jsoncitizenRegUrl" value="/rest/citizen/registration/action/reg" />
        <c:url var="jsoncitizenOtpUrl" value="/citizen/otpConfirmation/action/otp" />
		<c:url var="validOTPUrl" value="/registration/citizen/profile" />

 		<form:form method="post" action="${validOTPUrl}" id="citizenFrom" modelAttribute="citizenMaster">
 		
         <%--  <form id="registrationForm" name= "registrationForm" class="col-md-12" method="post" action="#"> --%>
            <div class="container-fluid space-top">
            	<div class="row form-group">
              <label for="name" class="col-md-4 control-label"><spring:message code="label.document.createac.mobno" /></label>
              <div class="col-md-8">
               <%-- <form:input path="userMobile" class=" form-control" id="userMobile"/> --%>
               <input type="text" class="form-control" name="userMobile" id="userMobile"  placeholder="Enter your Mobile No."/>
              </div>
            </div>

            <div class="row form-group">
              <label for="name" class="col-md-4 control-label"><spring:message code="label.document.createac.yourname" /></label>
              <div class="col-md-8">
                  <input type="text" class="form-control" name="userName" id="userName"  placeholder="Enter your Name"/>
              </div>
            </div>

            <div class="row form-group">
              <label for="email" class="col-md-4 control-label"><spring:message code="label.document.createac.youremail" /></label>
              <div class="col-md-8">
                 <input type="text" class="form-control" name="userEmailId" id="userEmailId"  placeholder="Enter your Email"/>
              </div>
            </div>

            <div class="row form-group">
              <label for="username" class="col-md-4 control-label"><spring:message code="label.document.createac.username" /></label>
              <div class="col-md-8">
                  <input type="text" class="form-control" name="userLoginName" id="userLoginName"  placeholder="Enter your Username"/>
               
              </div>
            </div>

            <div class="row form-group">
              <label for="password" class="col-md-4 control-label"><spring:message code="label.document.createac.password" /></label>
              <div class="col-md-8">
               
                  <input type="password" class="form-control" name="userPassword" id="userPassword"  placeholder="Enter your Password"/>
               
              </div>
            </div>

            <div class="row form-group">
              <label for="confirm" class="col-md-4 control-label"><spring:message code="label.document.createac.passwordconf" /></label>
              <div class="col-md-8">
                  <input type="password" class="form-control" name="confirmpass" id="confirmpass"  placeholder="Confirm your Password"/>
              </div>
            </div>

            <div class="form-group row">
              <div class="col-md-4 col-md-offset-4 text-center"><input type="button" id="Reg-button" name="Reg-button" class="btn btn-primary btn-block" value="Register"></div>
            </div>
            <input type="hidden" name="otp" id="otp" />
          
          
           <div id="otpconfirmation" class="col-md-12" style="display:none">
             <div class="form-group row" >
               <label for="confirm" class="col-md-4 control-label"><spring:message code="label.document.createac.confotp" /></label>
                <div class="col-md-8">
                  <input type="text" class="form-control" name="otpconfirm" id="otpconfirm"  placeholder="Confirm your OTP"/>
                </div>
             </div> 
             <div class="form-group row text-center">
              <div class="col-md-4 col-md-offset-4"><input type="button" id="otp-button" name="otp-button" class="btn btn-primary  btn-block " value="Confirm"></div>
             </div>
           </div>
            </div>
           
           </form:form>
         </div>
          
           
      <div class="modal-footer" >
        
        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
        
      </div>
    </div>
  </div>
</div>
  
        
      <jsp:include page="common/jsFooter.jsp" />
 	<jsp:include page="common/citizenSupport.jsp" />
 
<script>
 
 
 $(document).ready(function() {
$(window).scroll(function() {
	var sticky = $('header'),
	navbar_bottom = $('.navbar-bottom');
				header_height =sticky.outerHeight();
		scroll = $(window).scrollTop();
	if (scroll > header_height ) navbar_bottom.addClass('navbar-fixed-top');
	else navbar_bottom.removeClass('navbar-fixed-top');
});

$('#service_section').click(function(e){
	e.preventDefault();
	$("html,body").animate({scrollTop:$('#service_available').offset().top},1000);
});	

$('#event_scroll').click(function(e){
	e.preventDefault();
	$("html,body").animate({scrollTop:$('#event_gallery').offset().top},1000);
});


$('.slid-img-hold').slick({
	  slidesToShow: 6,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 2000,
	  prevArrow: '<i class="fa fa-chevron-left image-left-arrow" aria-hidden="true"></i>',
	    nextArrow: '<i class="fa fa-chevron-right image-right-arrow" aria-hidden="true"></i>',
	    responsive: [
	    	{
		          breakpoint:  	800,
		          settings: {
		            slidesToShow: 3,
		            slidesToScroll: 3,
		          }
		        },
	        {
	          breakpoint:  	700,
	          settings: {
	            slidesToShow: 2,
	            slidesToScroll: 2,
	          }
	        },
	        {
		          breakpoint:  	600,
		          settings: {
		            slidesToShow: 1,
		            slidesToScroll: 1,
		          }
		        }
	        ]
	});

	$('#forgot-password').click(function(){
			$('#dont-know-pass').show();
			$('#know-password').hide();
	});
	
	$('#goto-login').click(function(){
		$('#dont-know-pass').hide();
		$('#know-password').show();
	});
	
	/* $('#Reg-button').click(function(){
		$('#otpconfirmation').show();
	}); */
});
 </script>
    </body>
</html>
</compress:html>
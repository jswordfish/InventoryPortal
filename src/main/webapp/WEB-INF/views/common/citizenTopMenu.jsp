<%@page import="com.innowave.mahaulb.common.service.beans.UserBean"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 

UserBean userBeanObj= null;
String strLoc="mh";
String userType = "";
if(request.getSession().getAttribute("userBeanObj") != null){
	 userBeanObj=(UserBean)request.getSession().getAttribute("userBeanObj"); 

		if(userBeanObj != null){
			userType = userBeanObj.getStrUserType();
		}
}

%>


<div class="navbar-bottom">
            <div class="container-fluid">
              <div class="row">
              <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span> 
			      </button>
			    </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
		<li>
				<%
           if(userType.equalsIgnoreCase("CIZ")){
        %>
			<a href="<c:url value="/citizen/home" />"> <spring:message code="label.document.cititopmenu.home" /></a>
		<%		
        	}else{
        %>
        	<a href="<c:url value="/index" />"><spring:message code="label.document.cititopmenu.home" /></a>
         
         <%			
         	}
         %>
        
			
		</li>	
                  <li>
                    <a href="<c:url value="/home/citizenservicepage" />" id="service_section"><spring:message code="label.document.cititopmenu.citiser" /></a>
                  </li>
                  <li>
                    <a href="#" data-toggle="dropdown"><spring:message code="label.document.cititopmenu.dashboard" /><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                    
                    	<%
                    		if(userType.equalsIgnoreCase("CIZ")){
                    	%>
                    		<li><a>Citizen Dashboard</a></li>
                    	<%		
                    		}
                    	%>
                    	 
                    	<li><a href="<c:url value="/dmadashboard" />" target="_blank"><spring:message code="label.document.cititopmenu.dashboarddma" /></a></li>
                    	<%
                    		if(userType.equalsIgnoreCase("USR")){
                    	%>
                    		<li><a href="<c:url value="/dmadashboard" />" target="_blank"><spring:message code="label.document.cititopmenu.dashboardemp" /></a></li>
                    	<%		
                    		}
                    	%>
                    	<li><a href="<c:url value="/ulb-dashboard" />" target="_blank"><spring:message code="label.document.cititopmenu.dashboardulb" /></a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="" data-toggle="dropdown">
                     <spring:message code="label.document.cititopmenu.knowdet" /><b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                    	<li><a href="<c:url value="/property/search/view" />" ><spring:message code="label.document.cititopmenu.knowprop" /></a></li>
                    	<li><a href="<c:url value="/water/search/viewknow" />" ><spring:message code="label.document.cititopmenu.knowwater" /></a></li>
                    	<li><a href="<c:url value="/duplicate/viewSearch" />" ><spring:message code="label.document.cititopmenu.knowtrade" /> </a></li>
                    	<li><a href="<c:url value="/home/knowyourwardone" />"><spring:message code="label.document.cititopmenu.knowwardzone" /></a></li>
                    	<li><a href="http://103.249.96.234:8080/MahaULBWebPortalMerged/web/certificate/initiateSearchCertificate.html?operation=getCertificate&callType=knowyourmrgreg
                    	"><spring:message code="label.document.cititopmenu.knowmarriage" /></a></li>
                    </ul>
                  </li>
                  <li>
                    <a href=""  data-toggle="dropdown">
                     <spring:message code="label.document.cititopmenu.ulblis" /><b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                    	<li><a href="http://portal.mahaulb-beta.org/roha/" target="blank"><spring:message code="label.document.cititopmenu.rohamun" /></a></li>
                    	<li><a href="http://portal.mahaulb-beta.org/alibag/" target="blank"><spring:message code="label.document.cititopmenu.alibag" /></a></li>
                    	<li><a href="<c:url value="/home/ulblist/viewmore" />"><spring:message code="label.document.cititopmenu.viewmore" /></a></li>
                    	
                    </ul>
                  </li>
                  <li>
                    <a href=""  data-toggle="dropdown">
                     <spring:message code="label.document.cititopmenu.downloads" /> <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                    	<li><a href="<c:url value="/pdf/EODB_GR_MAR.pdf" />" target="blank">EODB_GR_MAR</a></li>
                    	<li><a href="<c:url value="/home/downloads" />" target="blank"><spring:message code="label.document.cititopmenu.viewmore" /></a></li>
                    </ul>
                  </li>
                 
                  <li>
                  	<a href="" data-toggle="dropdown"><spring:message code="label.document.cititopmenu.onlinepay" /><b class="caret"></b></a>
                  	 <form name="noduecerti" id="noduecerti" style="margin:0px;">
       			<input type="hidden" name="serviceId-renewalLic" id="serviceId-renewalLic" value="21"/>
       			<input type="hidden" name="servicePage-renewalLic" id="servicePage-renewalLic" value="renewal-tradelic"/>
       		</form>
                  	<ul class="dropdown-menu">
                    	<li><a href="<c:url value="/property/propertyOnlinePay" />"><spring:message code="label.document.cititopmenu.proptax" /></a></li>
                    	<li><a href="#" id="paymybillduesApply"><spring:message code="label.document.cititopmenu.waterbill" /></a></li>
                    	   
                    	<li><a href="#" id="renewalLic"><spring:message code="label.document.cititopmenu.licren" /></a></li>
                    	<li><a href=""><spring:message code="label.document.cititopmenu.appcharge" /></a></li>
                    	<li><a href="<c:url value="/noc/NocLoiPayWebCommon" />"><spring:message code="label.document.cititopmenu.payagainst" /></a></li>
                    </ul>
                  </li>
                  <li>
                  	<a href="" data-toggle="dropdown"><spring:message code="label.document.cititopmenu.userguide" /> <b class="caret"></b></a>
                  	<ul class="dropdown-menu">
                    	<li><a href="<c:url value="/home/presentation" />"><spring:message code="label.document.cititopmenu.presentation" /></a></li>
                    	<li><a href="<c:url value="/home/manual" />"><spring:message code="label.document.cititopmenu.manauls" /></a></li>
                    	<li><a href=""><spring:message code="label.document.cititopmenu.faqs" /></a>
                    	</li>
                    </ul>
                  </li>
                  <li>
                  	<a href="<c:url value="/home/eventgallery" />" id="event_scroll"><spring:message code="label.document.cititopmenu.event" /></a>
                  </li>
                  <li>
                  	<a href="<c:url value="/home/contactus" />"><spring:message code="label.document.cititopmenu.contactus" /></a>
                  </li>
                </ul>
                <%
                	if(userBeanObj != null){
                %>
                 <ul class="nav navbar-nav navbar-right">
                	<li>
                		<a href="#" data-toggle="dropdown" class="user-logged"><span><img src="<c:url value="/images/user.png" />"></span> <span><%=userBeanObj.getUserName()%></span><b class="caret"></b> </a>
                    <ul class="dropdown-menu">
                    	<li><a href="<c:url value="/registration/citizen/profile/view" />"><spring:message code="label.document.cititopmenu.viewprof" /></a></li>
                    	<li><a href="<c:url value="/rest/setRelation/master/load" />">Set Relation</a></li>
                    	<li><a href=""><spring:message code="label.document.cititopmenu.help" /></a></li>
                    	<li><a href="<c:url value="/logout" />"><spring:message code="label.document.cititopmenu.logout" /></a></li>
                    </ul>
                	</li>
                </ul> 
                </div>
                <%		
                	}
                %>
                <!-- <ul class="nav navbar-nav navbar-right">
                	<li>
                		<a href="#" data-toggle="dropdown" class="user-logged"><span><img src="../mahaulb/images/user.png"></span> <span>Ashok Parmar</span></span><b class="caret"></b> </a>
                    <ul class="dropdown-menu">
                    	<li><a>View Profile</a></li>
                    	<li><a href="">Help</a></li>
                    	<li><a href="">Logout</a></li>
                    </ul>
                	</li>
                </ul> -->
              </div>
            </div>
          </div>
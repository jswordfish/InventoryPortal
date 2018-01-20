<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- top navigation -->
        <header>
      <nav class="navbar main-nav employee-login">
        <div class="nav-skin">
          <div class="container-fluid">
            <div class="navbar-left">
              <a href="" class="navbar-brand">
                <img src="<c:url value="/images/maharashtralogo.png" />" alt="maharashtralogo" style="width:40px;">
                <span style="color:#fff;">
               		   महाराष्ट्र शासन
                </span>
              </a>
            </div>
            <div class="navbar-right">
              <ul class="nav navbar-nav pull-right">
                <li>
                  <a id="decfont" class="hidden-sm hidden-xs"><spring:message code="label.document.headertop.aless" /></a>
                </li>
                <li>
                  <a id="default" class="hidden-sm hidden-xs"><spring:message code="label.document.headertop.anorm" /></a>
                </li>
                <li>
                  <a id="incfont" class="hidden-sm hidden-xs"><spring:message code="label.document.headertop.amore" /></a>
                </li>
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#"><spring:message code="label.document.headertop.chooselan" />
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="<c:url value="/home" />?locale=mh">मराठी</a></li>
                      <li><a href="<c:url value="/home" />?locale=en"><spring:message code="label.document.headertop.eng" /></a></li>
                    </ul>
                  </li>
                  <li>
                    <form class="navbar-form">
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" name="search">
                        <div class="input-group-btn">
                          <button class="btn btn-default" type="submit">
                          <i class="glyphicon glyphicon-search"></i>
                          </button>
                        </div>
                      </div>
                    </form>
                    
                  </li>
                </ul> 
                
              </div>
              
            </div>
          </div>
                
          
           <div class="container-fluid">
				<div class="ulbname-hold">
				    <span ><img src="http://cdma.ap.gov.in/sites/default/files/AP_Logo.png">
				</span>
				
          </div>
          <ul class="nav navbar-nav navbar-right">
                	<li>
                		<a href="#" data-toggle="dropdown" class="user-logged"><span><img src="<c:url value="/images/user.png" />"></span> <span></span><b class="caret"></b> </a>
                    <ul class="dropdown-menu">
                    	<li><a href="<c:url value="/registration/citizen/profile/view" />"><spring:message code="label.document.headertop.viewpro" /></a></li>
                    	<li><a href=""><spring:message code="label.document.headertop.help" /></a></li>
                    	<li><a href="<c:url value="/logout" />"><spring:message code="label.document.headertop.log" /></a></li>
                    </ul>
                	</li>
                </ul> 
       </div> 
           
        </nav>
      </header>
        <!-- /top navigation -->
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0
    response.setDateHeader("Expires", 0); //prevents caching at the proxy server
%>

 <header>
      <nav class="navbar main-nav">
        <div class="nav-skin">
          <div class="container-fluid">
            <div class="navbar-left">
              <a href="" class="navbar-brand">
                <img src="<c:url value="/images/maharashtralogo.png" />" alt="maharashtralogo" style="width:40px;">
                <span style="color:#fff;" class="mh-logo-txt">
               		   महाराष्ट्र शासन
                </span>
              </a>
            </div>
            <div class="navbar-right">
              <ul class="nav navbar-nav pull-left">
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
                 
                </ul>
                <form class="navbar-form pull-right">
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" name="search">
                        <div class="input-group-btn">
                          <button class="btn btn-default" type="submit">
                          <i class="glyphicon glyphicon-search"></i>
                          </button>
                        </div>
                      </div>
                    </form> 
                
              </div>
              
            </div>
          </div>
                
          <%
  
        	  %>
        	  <div class="container-fluid">
            <div class="row gov-head">
              <div class="col-md-1 col-sm-2 col-xs-2">
                <img src="<c:url value="/images/emblem.png"/>" alt="emblem" >
              </div>
              <div class="col-md-10 col-sm-10 col-xs-10">
                <div class="gov-info">
                  <h3>
                  Government Of Maharashtra
                  </h3>
                  <h5>
                  Integrated Citizen Services Portal
                  </h5>
                </div>
              </div>
              
            </div>
          </div>  
        	  <%
          
       %>
           <jsp:include page="../common/citizenTopMenu.jsp" /> 
        </nav>
      </header>
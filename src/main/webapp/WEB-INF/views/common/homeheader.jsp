<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title><spring:message code="label.title_module" /></title>
	<!-- favicon -->
	<link rel="icon" href="<c:url value="/images/maharashtralogo.png" />" type="image/gif" sizes="16x16">
    <!-- Bootstrap -->
    <link href="<c:url value="/vendors/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<c:url value="/vendors/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="/vendors/slick/css/slick.css" />" rel="stylesheet">
    <link href="<c:url value="/vendors/slick/css/slick-theme.css" />" rel="stylesheet">
    <!-- NProgress -->
    <!-- PNotify -->
    <link href="<c:url value="/vendors/pnotify/dist/pnotify.css"/>" rel="stylesheet">

    <!-- Custom Theme Style -->
   
     <link href="<c:url value="/css/custom.css" />" rel="stylesheet">  
    
    
    <%--  <link href="<c:url value="../maha-dma/css/custom.css" />" rel="stylesheet">   --%>
    <link href="<c:url value="/css/layout.css" />" rel="stylesheet">
     <style>
			.header_corporation {
				font-size: 20px;
			    color: white;
			    font-weight: bold;
			    cursor: pointer;
			    font-family: Arial;
			    padding-top: 16px;
			    padding-left: 25px;
			    width: 100%;
			}
			
			.header_application {
				font-size: 14px;
			    color: white;
			    font-weight: bold;
			    cursor: pointer;
			    font-family: Arial;
			    padding-left: 25px;
			    width: 100%;
			}
			
			/* LOADER VIEW*/
    
    .animationload {
    background-color: #fff;
    height: 100%;
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 10000;
}
.osahanloading {
    animation: 1.5s linear 0s normal none infinite running osahanloading;
    background: #009688 none repeat scroll 0 0;
    border-radius: 73px;
    height: 50px;
    left: 50%;
    margin-left: -25px;
    margin-top: -25px;
    position: absolute;
    top: 50%;
    width: 50px;
}
.osahanloading::after {
    animation: 1.5s linear 0s normal none infinite running osahanloading_after;
    border-color: #607D8B transparent;
    border-radius: 80px;
    border-style: solid;
    border-width: 10px;
    content: "";
    height: 80px;
    left: -25px;
    position: absolute;
    top: -25px;
    width: 80px;
}
@keyframes osahanloading {
0% {
    transform: rotate(0deg);
}
50% {
    background: #689660 none repeat scroll 0 0;
    transform: rotate(180deg);
}
100% {
    transform: rotate(360deg);
}
}
    </style>
 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  <jsp:include page="marriageCommonURLs.jsp" />  
  
<title><spring:message code="label.title_module" /></title>

	<!-- favicon -->
	<link rel="icon" href="<c:url value="/images/maharashtralogo.png" />" type="image/gif" sizes="16x16">
    <!-- Bootstrap -->
    <link href="<c:url value="/vendors/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<c:url value="/vendors/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
    <!-- NProgress -->
    <link href="<c:url value="/vendors/nprogress/nprogress.css" />" rel="stylesheet">
   
    <!-- iCheck -->
   <link href="<c:url value="/vendors/iCheck/skins/flat/green.css" />" rel="stylesheet">
   
   <!--Date time picker css  -->
   <link href="<c:url value="/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" />" rel="stylesheet">
    
    <!-- Datatables -->
    <link href="<c:url value="/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"/>" rel="stylesheet">
    
    <!-- jQuery Ui Autocomplete -->
    <link href="<c:url value="/vendors/jquery-ui-1.12.1/jquery-ui.min.css"/>" rel="stylesheet"/>
    
     <!-- PNotify -->
    <link href="<c:url value="/vendors/pnotify/dist/pnotify.css"/>" rel="stylesheet">
   <%--  <link href="<c:url value="/vendors/pnotify/dist/pnotify.buttons.css"/>" rel="stylesheet">
    <link href="<c:url value="/vendors/pnotify/dist/pnotify.nonblock.css"/>" rel="stylesheet"> --%>

    <!-- Custom Theme Style -->
    <link href="<c:url value="/css/custom.css" />" rel="stylesheet">  
    <link href="<c:url value="/css/layout.css" />" rel="stylesheet">
  <%--   <link href="<c:url value="/css/theme.css" />" rel="stylesheet">
    <link href="<c:url value="/css/style.css" />" rel="stylesheet">
     <link href="<c:url value="/css/default.min.css" />" rel="stylesheet">
    --%>  
     
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
 <script>
		var csrfToken = '${_csrf.token}';
		 </script>
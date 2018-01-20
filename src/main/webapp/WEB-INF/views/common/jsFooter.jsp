<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


 <!-- jQuery -->
    <script src="<c:url value="/vendors/jquery/dist/jquery.min.js" />"></script>
    <!-- Bootstrap -->
   <script src="<c:url value="/vendors/jquery/dist/jquery-ui.js" />"></script> 
     
     <script src="<c:url value="/vendors/bootstrap/dist/js/bootstrap.min.js" />"></script>
    <!-- FastClick -->
     <script src="<c:url value="/vendors/fastclick/lib/fastclick.js" />"></script>
    <!-- NProgress -->
    <script src="<c:url value="/vendors/nprogress/nprogress.js" />"></script>
    <!-- iCheck -->
    <script src="<c:url value="/vendors/iCheck/icheck.min.js" />"></script>
    
   <!-- Year Picker --><!-- added by Himanshu -->
   <script src="<c:url value="/js/datepicker/year-select.js" />"></script>
    
    <!--Moment.js  -->
     <script src="<c:url value="/js/moment/moment.min.js" />"></script>
    
    <!-- Date time picker  -->
    <script src="<c:url value="/vendors/bootstrap-datetimepicker/src/js/bootstrap-datetimepicker.js" />"></script>
 <!-- PNotify -->
    <script src="<c:url value="/vendors/pnotify/dist/pnotify.js" />"></script>
   <%--  <script src="<c:url value="/vendors/pnotify/dist/pnotify.buttons.js" />"></script> --%>
   <%--  <script src="<c:url value="/vendors/pnotify/dist/pnotify.nonblock.js" />"></script> --%>
    
 <!-- Datatables -->
    <script src="<c:url value="/vendors/datatables.net/js/jquery.dataTables.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-buttons/js/dataTables.buttons.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-buttons/js/buttons.flash.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-buttons/js/buttons.html5.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-buttons/js/buttons.print.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-responsive/js/dataTables.responsive.min.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js" />"></script>
    <script src="<c:url value="/vendors/datatables.net-scroller/js/dataTables.scroller.min.js" />"></script>
   <script src="<c:url value="/js/script-library.js" />"></script>
    <script src="<c:url value="/vendors/jquery-ui-1.12.1/jquery-ui.js" />"></script>
    <script src="<c:url value="/js/ezBSAlert.js" />"></script> 
    
     <!-- jQuery Smart Wizard -->
    <script src="<c:url value="/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js" />"></script>
      <script src="<c:url value="/vendors/jquery-validation/dist/jquery.validate.min.js" />"></script>
	 <script src="<c:url value="/vendors/jQuery.serializeObject/dist/jquery.serializeObject.min.js" />"></script>
    
    <!-- Custom Theme Scripts -->
   <script src="<c:url value="/js/custom.js" />"></script> 
   
    <style>
    
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
    background: #fed37f none repeat scroll 0 0;
    border-radius: 50px;
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
    border-color: #85d6de transparent;
    border-radius: 80px;
    border-style: solid;
    border-width: 10px;
    content: "";
    height: 80px;
    left: -15px;
    position: absolute;
    top: -15px;
    width: 80px;
}
@keyframes osahanloading {
0% {
    transform: rotate(0deg);
}
50% {
    background: #85d6de none repeat scroll 0 0;
    transform: rotate(180deg);
}
100% {
    transform: rotate(360deg);
}
}
    </style>
    
   <script src="<c:url value="/js/loader.js" />"></script>
   
  <script src="<c:url value="/vendors/slick/js/slick.min.js" />"></script>	
  <script>
  $(document).ready(function(){
	  $(window).scroll(function() {
    		var sticky = $('header'),
    		navbar_bottom = $('.navbar-bottom');
      				header_height =sticky.outerHeight();
    			scroll = $(window).scrollTop();
    		if (scroll > header_height ) navbar_bottom.addClass('navbar-fixed-top');
    		else navbar_bottom.removeClass('navbar-fixed-top');
    	});
  });
  </script>
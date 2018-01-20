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
    
    <script src="<c:url value="/vendors/jQuery.serializeObject/dist/jquery.serializeObject.min.js" />"></script>
     <script src="<c:url value="/vendors/jquery-validation/dist/jquery.validate.min.js" />"></script>
    <script src="<c:url value="/js/ezBSAlert.js" />"></script> 
    <script	src="<c:url value="/vendors/jquery-validation/dist/additional-methods.min.js" />"></script>
    
    <!-- jQuery Smart Wizard -->
    
    <script src="<c:url value="/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js" />"></script>
 <!-- Smart wizard initialization -->
    
    <script>
	$(document).ready(function(){
		init_SmartWizard();

	function init_SmartWizard() {
		
		if( typeof ($.fn.smartWizard) === 'undefined'){ return; }
		console.log('init_SmartWizard');
		
		$('#wizard').smartWizard();

		$('#wizard_verticle').smartWizard({
		  transitionEffect: 'slide'
		});

		$('.buttonNext').addClass('btn btn-success');
		$('.buttonPrevious').addClass('btn btn-primary');
		$('.buttonFinish').addClass('btn btn-default');
		
	};
	
	});
	</script>
   
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.innowave.mahaulb.common.service.beans.MenuBean"%>
<%@page import="com.innowave.mahaulb.common.service.beans.ModuleBean"%>
<%@page import="java.util.List"%>

 <div class="left_col menu_fixed mCustomScrollbar _mCS_1 mCS-autoHide">
          <div class="scroll-view ">
            <div class="navbar nav_title" style="border: 0;">
           	 <!--  <img src="images/Project/maharashtralogo.png" class="pull-left" style="width:55px"> -->
              <a href="index.html" class="site_title"> <span>Maha ULB</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
            
            <!--   <div class="profile_info">
                <span>Welcome,</span>
                <h2>Ashok Parmar</h2>
              </div> -->
            </div>
            <!-- /menu profile quick info -->

            <br />
        

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3><spring:message code="label.menu" /></h3>
                <ul class="nav side-menu">
                  <li><a href="<c:url value="/employee/home" />"><i class="fa fa-home"></i> <spring:message code="label.home" /> </a>
                  </li>
                   
                  
                 <li><a><i class="fa fa-edit"></i> <spring:message code="label.treecensus" /> <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                   	  <li><a>Masters<span class="fa fa-chevron-down"></span></a>//hard coded masters in left menu file
                   	  	<ul class="nav child_menu">
                   	  	  <li><a href="<c:url value="/treecensus/viewtreename" />" ><spring:message code="label.treename" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewtreespacies" />" ><spring:message code="label.treespecies" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewbarkshape" />" ><spring:message code="label.barkshape" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewleafshape" />" ><spring:message code="label.leafshape" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewleafcolor" />" ><spring:message code="label.leafcolor" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewtexture" />" ><spring:message code="label.texturemst" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewflowername" />" ><spring:message code="label.flowername" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewflowercolor" />" ><spring:message code="label.flowercolor" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewfruitname" />" ><spring:message code="label.fruitname" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewfruitshape" />" ><spring:message code="label.fruitshape" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewodour" />" ><spring:message code="label.odour" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewauthority" />" ><spring:message code="label.authority" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewpenalty" />" ><spring:message code="label.penalty" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewtreestatus" />" ><spring:message code="label.treestatus" /></a></li>
	                      <li><a href="<c:url value="/treecensus/viewtreemaster" />" ><spring:message code="label.treemaster" /></a></li>
                   	  	</ul>
                   	  </li>
                      <li><a><spring:message code="label.treecensusapplication" /><span class="fa fa-chevron-down"></span></a>
                   	  	<ul class="nav child_menu">
                   	  	  <li><a href="<c:url value="/treecensus/applicationsurveyreq" />" ><spring:message code="label.surveyrequest" /></a></li>
	                      <li><a href="<c:url value="/treecensus/applicationsurveyinspector" />" ><spring:message code="label.form.survey.inspector.surveyapplication" /></a></li>
	                      <li><a href="<c:url value="/treecensus/applicationsurveydataentry" />" ><spring:message code="label.surveydetailsdataentry" /></a></li>
	                      <%-- <li><a href="<c:url value="/treecensus/applicationsurvey" />" ><spring:message code="label.survey" /></a></li>
	                      <li><a href="<c:url value="/treecensus/applicationsurveyapproval" />" ><spring:message code="label.surveyapproval" /></a></li>
	                       <li><a href="<c:url value="/market/search" />" ><spring:message code="label.newtradelicense" /></a></li> --%>
	                      
                   	  	</ul>
                   	  </li>
                   	  <li><a><spring:message code="label.report" /><span class="fa fa-chevron-down"></span></a>
                   	  	<ul class="nav child_menu">
                   	  	  <li><a href="<c:url value="/treecensus/reporttreecensusreg" />" ><spring:message code="label.treecensusreg" /></a></li>
	                      <li><a href="<c:url value="/treecensus/reportyearwise" />" ><spring:message code="label.treeyearwisecomp" /></a></li>
	                      <li><a href="<c:url value="/treecensus/reportnumoftrees" />" ><spring:message code="label.numberoftrees" /></a></li>
	                      <li><a href="<c:url value="/treecensus/reportdiversityoftrees" />" ><spring:message code="label.diversityoftrees" /></a></li>
	                      <%-- <li><a href="<c:url value="/treecensus/reportschemesummary" />" ><spring:message code="label.schemesummary" /></a></li>
	                      <li><a href="<c:url value="/treecensus/reportschemebeneficiary" />" ><spring:message code="label.schemebeneficiary" /></a></li> --%>
	                      
                   	  	</ul>
                   	  </li>
                    </ul>
                  </li>
                  
                    <li><a><i class="fa fa-edit"></i> <spring:message code="label.document.presentation.invent" /> <span class="fa fa-chevron-down"></span></a>
                  
						<ul class="nav child_menu">
<%--                    	  <li><a><spring:message code="label.inventory.master.store.title" /><span class="fa fa-chevron-down"></span></a> --%>
<!--                    	  	<ul class="nav child_menu"> -->
<%--                    	  	  <li><a href="<c:url value="/inventory/addstore" />" ><spring:message code="label.inventory.master.store.add" /></a></li> --%>
<%-- 	                      <li><a href="<c:url value="/inventory/editstore" />" ><spring:message code="label.inventory.master.store.edit" /></a></li> --%>
<%-- 	                      <li><a href="<c:url value="/inventory/searchstore" />" ><spring:message code="label.inventory.master.store.search" /></a></li> --%>
<%-- 	                      <li><a href="<c:url value="/inventory/liststore" />" ><spring:message code="label.inventory.master.store.list" /></a></li> --%>
<!--                    	  	</ul> -->
<!--                    	  </li> -->
<%--                       <li><a><spring:message code="label.inventory.master.materialtype.title" /><span class="fa fa-chevron-down"></span></a> --%>
<!--                    	  		<ul class="nav child_menu"> -->
<%--                    	  	  <li><a href="<c:url value="/inventory/addmaterialtype" />" ><spring:message code="label.inventory.master.materialtype.add" /></a></li> --%>
<%-- 	                      <li><a href="<c:url value="/inventory/editmaterialtype" />" ><spring:message code="label.inventory.master.materialtype.edit" /></a></li> --%>
<%-- 	                      <li><a href="<c:url value="/inventory/searchmaterialtype" />" ><spring:message code="label.inventory.master.materialtype.search" /></a></li> --%>
<%-- 	                      <li><a href="<c:url value="/inventory/listmaterialtype" />" ><spring:message code="label.inventory.master.materialtype.list" /></a></li> --%>
<!--                    	  	</ul> -->
<!--                    	  </li> -->
                   	  <li><a><spring:message code="label.inventory.masters" /><span class="fa fa-chevron-down"></span></a>
                   	  	<ul class="nav child_menu">
 							<li><a href="<c:url value="/inventory/searchstore" />" ><spring:message code="label.inventory.master.store.title" /></a></li>
						
	                      <li><a href="<c:url value="/inventory/viewmaterialmapping" />" ><spring:message code="label.inventory.master.materialmapping.list" /></a></li>
	                      
	                        <li><a href="<c:url value="/inventory/viewpricemaster" />" ><spring:message code="label.inventory.master.pricemaster.list" /></a></li>
	                          <li><a href="<c:url value="/inventory/viewmaterialsupplier" />" ><spring:message code="label.inventory.master.supplier.title" /></a></li>
						  <li><a href="<c:url value="/inventory/viewmaterial" />" ><spring:message code="label.inventory.master.material.title" /></a></li>
						   <li><a href="<c:url value="/inventory/searchmaterialtype" />" ><spring:message code="label.inventory.master.materialtype.title" /></a></li>
						    <li><a href="<c:url value="/inventory/viewstockagingmaster" />" ><spring:message code="label.inventory.master.stockagingmaster.list" /></a></li>
                   	  	</ul>
                   	  </li>
                   	  
                   	  <li><a><spring:message code="label.inventory.dataentry.title" /><span class="fa fa-chevron-down"></span></a>
                   	  	<ul class="nav child_menu">
                   	  	  <li><a href="<c:url value="/inventory/dataentry/viewmaterialopeningbalance" />" ><spring:message code="label.inventory.dataentry.materialmaterialopeningbalance.search" /></a></li>
	                     
	                     
                   	  	</ul>
                   	  </li>
                   	  
                   	    <li><a><spring:message code="label.inventory.transactions.title" /><span class="fa fa-chevron-down"></span></a>
                   	  	<ul class="nav child_menu">
                   	  	  <li><a href="<c:url value="/inventory/transactions/searchdisposalofscrap" />" ><spring:message code="label.inventory.transactions.searchdisposalofscrap.search" /></a></li>
	                      <li><a href="<c:url value="/inventory/transactions/searchpurchaseorder" />" ><spring:message code="label.inventory.transactions.searchpurchaseorder.search" /></a></li>
	                     <li><a href="<c:url value="/inventory/transactions/searchscrapwriteoffprocess" />" ><spring:message code="label.inventory.transactions.searchscrapwriteoffprocess.search" /></a></li>
	                     
	                     
                   	  	</ul>
                   	  </li>
                    </ul>
                    </li>
                   	 </ul> 
                </li> 
	       
                  
                 
                    
                </ul>
              </div>
             </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
           <!--  <div class="sidebar-footer hidden-small">
           
           
           
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div> -->
            <!-- /menu footer buttons -->
          </div>
        </div>
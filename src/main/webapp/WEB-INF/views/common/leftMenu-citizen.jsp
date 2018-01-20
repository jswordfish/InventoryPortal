<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


 <div class="col-md-3 left_col menu_fixed mCustomScrollbar _mCS_1 mCS-autoHide" style="overflow-y: scroll;">
          <div class="left_col scroll-view ">
            <div class="navbar nav_title" style="border: 0;">
           	 <!--  <img src="images/Project/maharashtralogo.png" class="pull-left" style="width:55px"> -->
              <a href="<c:url value="/citizen/home" />" class="site_title"> <span>Maha ULB</span></a>
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
                     <li><a href="<c:url value="/citizen/home" />"><i class="fa fa-home"></i> <spring:message code="label.home" /> </a>
                  	</li>
                  	
                  	
                  	<li>
                  	<a>Service <span class="fa fa-chevron-down"></span></a>
                  	<ul class="nav child_menu">
	                  	 <li><a>Property Tax Related Service <span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="<c:url value="/common/application/showServicePage/37/nodue-certificate/property" />" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		
	               		<li><a>Water Department Related Service <span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="<c:url value="/common/application/showServicePage/37/nodue-certificate/water" />" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
                   		<!-- <li><a>Trade License Related Services <span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		<li><a>Fire Related Services<span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		 <li><a>Marriage Registration Related Services<span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		<li><a>Web Portal Related Services<span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		<li><a>NOC Related Services<span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		<li><a>Tree Census Related Services<span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		 <li><a>Social Welfare Related Services<span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		<li><a>Land And Estate Related Services<span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li>
	               		 <li><a>Tax and Service charge details<span class="fa fa-chevron-down"></span></a>
		                    <ul class="nav child_menu">
		                    	<li><a href="" >No Due Certificate</a></li>
		                    </ul>
	               		</li> -->
                  	</ul>
               	  </li>
                 <li><a href="<c:url value="/rest/setRelation/master/load" />"><spring:message code="label.home.setrelation.title" /></a></li>
                  <li><a href="<c:url value="/property/search/view" />" ><i class="fa fa-thumbs-o-up"></i>Know your Property/Water connection no.</a></li>
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
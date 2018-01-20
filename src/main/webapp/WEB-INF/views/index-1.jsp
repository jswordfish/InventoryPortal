<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>  
 
<%
	response.setContentType("text/html; charset=utf-8");
%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<compress:html >
<!DOCTYPE html>
<html lang="en" style="height:100%;">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Government of Maharashtra</title>

    <link rel="icon" href="images/favicon.ico">
  <jsp:include page="common/maha-dma/header.jsp" />
  </head>
  <body style="height:100%;">

    <!-- ulb dropdown options template -->
    <script id="ulb-option-template" type="text/x-handlebars-template">
			 <option value="">Select ULB</option>
			 {{#each this}}
					<option value="{{tenantId}}">{{ulbName}}</option>
			 {{/each}}
		</script>

    <!-- services menu template -->
    <script id="services-menu-template" type="text/x-handlebars-template">
      <div class="service-details">

      {{!--#each .}}
          <div class="col-md-12 toggle-header unselectable" data-target="#content{{@index}}">
            <h4>{{@key}} <i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
          </div>
          <ul id="content{{@index}}" class="collapse">
            {{#each this}}
              <li class="news-item">
                <div class="col-md-6">
                  <a class="action-item" data-service-name="{{serviceName}}" data-module-name="{{moduleName}}" href="javascript:void(0);">{{serviceName}}</a>
                </div>
              </li>
            {{/each}}
          </ul>
      {{/each--}}
  </script>

    <!-- Dialog body template -->
    <script id="documents-body-template" type="text/x-handlebars-template">
      {{#if requiredDocuments}}
      {{else}}
      <div class="alert alert-danger" role="alert">
        Documents are not required from citizen to avail this service {{/if}}
      </div>
      <div class="req-doc-citizen">
        {{#each requiredDocuments}}
        <div class="doc-head">
          {{requiredDocumentName}}
        </div>
        <div class="docs-section">
          <div class="col-xs-12 col-md-12 col-sm-12 col-lg-12 certificate-name-break">
            {{inc @index}}) {{checkhref name}}
          </div>
          {{/each}}
        </div>
      </div>
        <!-- <div class="panel panel-default">
          <div class="panel-heading doc-head">{{requiredDocumentName}}</div>
          <div class="panel-body">
            <div class="container-fluid">
              <div class="row">
                {{#each documents}}
                  <div class="col-xs-12 col-md-12 col-sm-12 col-lg-12 certificate-name-break">
                    {{inc @index}}) {{name}}
                  </div>
                {{/each}}
              </div>
            </div>
          </div>
        </div> -->
      <!-- SLA Table -->
      {{/each}}
		</script>

    <script type="text/plain">
      {{#if slaTable}}
        <table class="table table-bordered">
          <thead>
          {{#each slaTable.columns}}
             <th>{{name}}</th>
          {{/each}}
          </thead>

          <tbody>
            {{#each slaTable.data}}
              <tr>
                  {{#each ../uniqueKeys}}
                      <td>{{lookup .. this}}</td>
                  {{/each}}
              </tr>
           {{/each}}
          </tbody>
        </table>
      {{/if}}
    </script>

<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
   <div class="nav-section">
    <nav class="navbar navbar-inverse">
  <div class="container">

    <ul class="nav navbar-nav navbar-right">

      <li class="dropdown">
        <a href="#"> मराठी <!-- <b class="caret"></b> --></a>
        <!-- <div class="dropdown-content">
        <a href="#">English</a>
        <a href="#">मराठी</a>

      </div> -->
      </li>
    </ul>
  </div>
</nav>
  </div>
  <div class="header-section">
     <div class="container">
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
         <img src="maha-dma/images/maharashtralogo.png" class="img-responsive" style="width:90px">
       </div>

       <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8" style="text-align: center">
         <div class="h35" style="color:#ff9800">Government of Maharashtra</div>
         <div class="h20">महाराष्ट्र शासन</div>
         <div class="h20" style="color:green">Integrated Citizen Services Portal</div>
       </div>
       <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
         <img src="maha-dma/images/emblem.png" class="img-responsive pull-right" style="width:60px">
       </div>

     </div>
  </div>

  <div class="body-section">

    <div class="container-fluid" style="height: 100%">
      <div class="col-md-7 service-section" style="height:100%;">

        <div class="row">
          <div class="col-md-5 pull-left">
            <h4 class="services-title no-background"><strong>SERVICES AVAILABLE ONLINE</strong></h4>
          </div>
          
          <div class="col-md-4 pull-right">
             <button type="button" class="btn btn-default" onclick="javascript:window.open('<c:url value="/ulb-dashboard" />');" class="btn btn-default dashboardbtn">
                <i class="material-icons" style="vertical-align: middle;">poll</i> &nbsp;<span style="vertical-align: middle;">ULB Dashboards</span>
             </button>
          </div>
          <div class=" pull-right">
             <button type="button" class="btn btn-default" onclick="javascript:window.open('<c:url value="/dmadashboard" />');" class="btn btn-default dashboardbtn">
                <i class="material-icons" style="vertical-align: middle;">poll</i> &nbsp;<span style="vertical-align: middle;">Dashboards</span>
             </button>
          </div>
        </div>

        <div class="service-table" style="height:400px;border: 1px solid orange;box-shadow: rgba(0, 0, 0, 0.12) 0px 1px 6px, rgba(0, 0, 0, 0.12) 0px 1px 4px;">
        <!-- <marquee behavior="scroll" direction="up"> -->

    		    <div class="service-details">
              <span class="glyphicon glyphicon-hand-up"></span> <strong>Click below services for details</strong>
              <hr>
              <div class="col-md-12 toggle-header unselectable" data-target="#prop-tax-portal">
                  <h4>Property Tax Related Service
              <i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
            </div>

              <ul id="prop-tax-portal" class="collapse" data-header="Property Tax Related Service">
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#new-ass">New Assessment</a>
                  </div>
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#re-ass">Re Assessment</a>
                  </div>
                </li>
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#no-due-certificate">No Due Certificate</a>
                  </div>
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#extract-prop">Extract of Property</a>
                  </div>
                </li>
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#exemtion-vac">Exemption for Vaccancy of Property</a>
                  </div>
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#self-ass">Self Assessment</a>
                  </div>
                </li>
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#obj-reg">Objection Registration</a>
                  </div>
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#prop-trans">Property Transfer by heredity/ Other Modes</a>
                  </div>
                </li>
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#sub-proper">Subdivision/Bifurcation of Properties</a>
                  </div>
                  <div class="col-md-6">
                   <a href="" data-toggle="modal" data-target="#new-taxcal" onClick="javascript:reloadForm();">Property Tax Calculator</a>
                  </div>
                </li>
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#pay-my-dues">Payment Of Water Bill </a>
                  </div>
                  
                </li>
                
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#pay-my-dues">Payment Against LOI</a>
                  </div>
                  
                </li>
              </ul>

              <div class="col-md-12 toggle-header unselectable" data-target="#water-portal">
                <h4>Water Department Related Service
            <i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
              </div>

              <ul id="water-portal" class="collapse" data-header="Water Department Related Service">
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#new-water">New Water Connection</a>
                  </div>
                  <div class="col-md-6">
                     <a href="" data-toggle="modal" id="change-ownerLink">Change of Ownership</a>
                  </div>
                </li>

                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#change-con">Change of Connection Size</a>
                  </div>
                  <div class="col-md-6">
                     <a href="" data-toggle="modal" data-target="#per-dis">Temporary/Permanent Disconnection</a>
                  </div>
                </li>

                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#re-con">Reconnection</a>
                  </div>
                  <div class="col-md-6">
                     <a href="" data-toggle="modal" data-target="#change-user">Change of Usage</a>
                  </div>
                </li>

                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#plum-license">Plumber License</a>
                  </div>
                  <div class="col-md-6">
                     <a href="" data-toggle="modal" data-target="#renew-plum-license">Renewal of Plumber License</a>
                  </div>
                </li>

                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#no-due">No Due Certificate</a>
                  </div>
                   <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#water-pay-my-dues">Pay My Dues</a>
                  </div>
                </li>
              </ul>

              <div class="col-md-12 toggle-header unselectable" data-target="#content-tl">
                <h4>Trade License Related Services <i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
              </div>
              <ul class="collapse" id="content-tl" data-header="Trade License Related Service">
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#license-issue">Issuance of License</a>
                  </div>
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#renew-license">Renewal of License</a>
                  </div>
                </li>
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#duplicate-license">Duplicate License</a>
                  </div>
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#trans-lic">Transfer License</a>
                  </div>
                </li>
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#lic-cancel">Cancellation of License</a>
                  </div>
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#change-bus-name">Change In Business Name</a>
                  </div>

                </li>

                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#change-bus">Change In Business</a>
                  </div>
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#change-partner-name">Change In Owner/Partner Name</a>
                  </div>

                </li>
                <li class="news-item">
                  <div class="col-md-6">
                    <a href="" data-toggle="modal" data-target="#incr-part">Increase/Decrease Partner</a>
                  </div>
                </li>
              </ul>

              <div class="col-md-12 toggle-header unselectable" data-target="#content-fire">
                <h4>Fire Related Services<i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
              </div>
              <ul id="content-fire"  class="collapse" data-header="Fire Related Service">
               <li class="news-item">
                 <div class="col-md-6">
                   <a href="" data-toggle="modal" data-target="#provision-fire">Provisional Fire NOC</a>
                 </div>
                 <div class="col-md-6">
                   <a href="" data-toggle="modal" data-target="#final-fire">Final Fire NOC</a>
                 </div>
               </li>
               <li class="news-item">
                 <div class="col-md-6">
                   <a href="" data-toggle="modal" data-target="#fire-renewal">Renewal of Fire NOC</a>
                 </div>
                 <div class="col-md-6">
                   <a href="" data-toggle="modal" data-target="#fire-cert">Fire Certificate</a>
                 </div>
               </li>
               <li class="news-item">
                 <div class="col-md-6">
                   <a href="" data-toggle="modal" data-target="#tech-remark">Issuance of Technical Remarks</a>
                 </div>
               </li>
             </ul>

             <div class="col-md-12 toggle-header unselectable" data-target="#content-marriage">
               <h4>Marriage  Registration Related Services<i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
             </div>
             <ul id="content-marriage" class="collapse" data-header="Marriage Registration Related Service">
                  <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#marriage-reg">Marriage Registration And Certificate</a>
                      </div>
                      <div class="col-md-6">
                         <a href="" data-toggle="modal" data-target="#marriage-reg-correction">Marriage Registration Correction</a>
                      </div>
                    </li>

                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#marriage-cert">Marriage Certificate</a>
                      </div>
                      <div class="col-md-6">
                         <a href="" data-toggle="modal" data-target="#marriage-cert-reissue">Re-issue of Marriage Certificate</a>
                      </div>
                    </li>
                  </ul>


                  <div class="col-md-12 toggle-header unselectable" data-target="#content-portal">
                    <h4>Web Portal Related Services<i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
                  </div>
                  <ul id="content-portal" class="collapse" data-header="Web Portal Related Service">
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#prop-num">Know Your Property No.</a>
                      </div>
                      <div class="col-md-6">
                         <a href="" data-toggle="modal" data-target="#app-status">Application Status</a>
                      </div>
                    </li>
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#lodge-grav">Lodging Grievance</a>
                      </div>
                      <div class="col-md-6">
                         <a href="" data-toggle="modal" data-target="#grave-status">Grievance Status</a>
                      </div>
                    </li>
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#waterbill-due">Property/Water Bill dues checking and Payment</a>
                      </div>
                      <div class="col-md-6">
                         <a href="" data-toggle="modal" data-target="#receipt-print">Receipt Printing</a>
                      </div>
                    </li>
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#duplicate-bill">Duplicate Bill</a>
                      </div>
                      <div class="col-md-6">
                         <a href="" data-toggle="modal" data-target="#cert-print">Certificate Printing</a>
                      </div>
                    </li>
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#citi-serv">All Citizen Services Provided by all modules</a>
                      </div>
                    </li>
                  </ul>


                  <div class="col-md-12 toggle-header unselectable" data-target="#content-noc">
                    <h4>NOC Related Services<i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
                  </div>
                  <ul id="content-noc" class="collapse" data-header="NOC Related Service">
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#noc-hording">NOC For Horading/Banner</a>
                      </div>
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#noc-mandap">NOC For Mandap/Stall</a>
                      </div>
                    </li>
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#noc-ele">NOC For Electric Meter Installation</a>
                      </div>
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#noc-road">NOC For Road Digging For Cable Installation</a>
                      </div>
                    </li>
                     <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#business-pool">Business Pool/Snooker Indoor Business NOC</a>
                      </div>
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#noc-fast-food">NOC For Fast Food On wheels/road/At Public Place</a>
                      </div>
                    </li>
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#business-medical">Business Medical Business/ Store NOC</a>
                      </div>
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#business-meat">Business Meat Shop NOC</a>
                      </div>
                    </li>
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#business-noc">Business NOC For Hospital </a>
                      </div>
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#business-noc-tours">Business NOC For Tours And Travels</a>
                      </div>
                    </li>
                  </ul>

                  <div class="col-md-12 toggle-header unselectable" data-target="#content-tree">
                    <h4>Tree Census Related Services<i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
                  </div>
                  <ul id="content-tree" class="collapse" data-header="Tree Census Related Service">
                    <li class="news-item">
                      <div class="col-md-6">
                      	<!-- Change Application For Service Request to Application For Survey Request Brijesh Soni-->
                        <!-- <a href="" data-toggle="modal" data-target="#application-services">Application For Service Request</a> -->
                        <a href="" data-toggle="modal" data-target="#application-services">Application for Survey Request</a>
                        <!-- End Change on 02-12-2017 -->
                      </div>
                    </li>
                  </ul>

                  <div class="col-md-12 toggle-header unselectable" data-target="#content-social">
                    <h4>Social Welfare Related Services<i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
                  </div>
                  <ul id="content-social" class="collapse" data-header="Social Welfare Related Service">
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#app-for-scheme">Application For Scheme</a>
                      </div>
                    </li>
                  </ul>

                  <div class="col-md-12 toggle-header unselectable" data-target="#content-land">
                    <h4>Land And Estate Related Services<i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
                  </div>
                  <ul id="content-land" class="collapse" data-header="Land And Estate Related Service">
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#adv-agree">Advertising/Hoarding Agreement</a>
                      </div>
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#adv-renew">Advertising/Hoarding Renewal Of Agreement</a>
                      </div>
                    </li>
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#adv-hoarding">Advertising/Hoarding Cancellation Of Agreement</a>
                      </div>
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#adv-lic">Advertising/Hoarding License Application</a>
                      </div>
                    </li>
                  </ul>

                  <div class="col-md-12 toggle-header unselectable" data-target="#tax-related-service">
                    <h4>Tax and Service charge details<i class="material-icons toggle-icon">keyboard_arrow_down</i></h4>
                  </div>
                  <ul id="tax-related-service" class="collapse" data-header="Tax and Service charge Details">
                    <li class="news-item">
                      <div class="col-md-6">
                        <a href="" data-toggle="modal" data-target="#tax-service-charge">Tax details</a>
                      </div>
                    </li>
                  </ul>

                </div>
            </div>

        <!-- </marquee> -->
        <!-- </div> -->
      </div>

        <div class="col-md-5" style="padding: 10px 0;">
          <div class="col-sm-12 visible-sm visible-xs" style="margin-top:10px">
            <div class="active-component">
                <ul class="minimum">
                  <li class="action1 active" data-redirect=".citizen-login">
                    <span class="glyphicon glyphicon-log-in"></span><span></span>
                  </li>
                  <li class="action2" data-redirect=".search-service">
                    <span class="glyphicon glyphicon-search"></span>
                  </li>
                  <li class="action3" data-redirect=".track">
                    <span class="glyphicon glyphicon-list-alt"></span>
                  </li>
                  <li class="action4" data-redirect=".download">
                    <span class="glyphicon glyphicon-download"></span>
                  </li>
                </ul>
            </div>
          </div>
          <div class="col-md-9 col-sm-12" style="background:#fff">
            <div class="citizen-login">
               <c:url var="jsoncitizenloginUrl" value="/citizen/registration/action/login" />
               <c:url var="jsoncitizenloginUrl1" value="/registration/citizenName/logindata/login" />
               <form:form id="loginForm" name= "loginForm" class="col-md-12" method="post" action="" modelAttribute="loginDetail">
             	
             	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<div align="center" style="color: red; font-size: 20px; font-weight: 600 "> ${msg}</div>
             
              <div class="login-box login-1" style="margin-top:18px;margin-bottom:15px;">
                  <h4>Already Registered? Login Here</h4>
                  <label style="padding-right:10px;"> Applicant Type</label>
                  
                  	<label class="radio-inline"><input type="radio" name="optradio" id="cit" style="width: auto;" checked value="cit">Citizen</label>
				  	<label class="radio-inline"><input type="radio" name="optradio" id="emp" style="width: auto;" value="emp">Employee</label>
                   <div class="ulb-drop" style="padding:10px 0px;display:none;">
	                  <select class="form-control" id="ulbId" name="ulbId">
	                  	<option value="">Select ULB</option>
	                  </select>
                  </div>
                  <input id="mobileNumber" name="mobileNumber" type="text" placeholder="Mobile Number / Login ID">
                  <input id="loginpass" name="loginpass" type="password" placeholder="Password" onkeydown="if (event.keyCode == 13)
                           document.getElementById('loginBtn').click()">
                
                  <div class="row" style="margin-top: 20px;">
                  <div class="col-md-6">
                    <input type='button' id="loginBtn" value="Login" style="width:100%" class="btn btn-primary">
                     
                  </div>
                  <div class="col-md-6 text-right">
                    <a class="btn btn-primary" id="create-account" style="width:100%">Register Here</a>
                  </div>
                  <div class="col-md-12 text-right" style="padding: 8px 20px;font-size: 16px;">
                    <a href="javascript:void(0)" id="forgotPass">Forgot password?</a>
                  </div>
                </div>
              </div>
              <div class="forget-passward-div" style="display:none">
            		<div class="login-box">
            			<label>Reset Password</label>
            			<div class="" style="margin-bottom:15px;">
            				<input id="enterMobile" name="" type="text" placeholder="Enter Mobile No.">
            			</div>
            			<button type="button" class="btn " id="sendOTP">Send OTP</button>
            			<!-- <button type="reset" class="btn " id="">Reset</button> -->
            		</div>
            </div>
            <div class="otp-div" style="display:none">
            		<div class="login-box">
            			<label>Enter OTP to validate</label>
            			<div class="" style="margin-bottom:15px;">
            				<input id="EnteredOTP" name="EnteredOTP" type="text" placeholder="Enter OTP">
            			</div>
            			<!-- <a href="#" style="margin-bottom:15px;">Resend OTP</a> --><br />
            			<button type="button" class="btn " id="verifyOTP">Verify OTP</button>
            			<!-- <button type="reset" class="btn " id="">Reset</button> -->
            		</div>
            </div>
            <div class="resetpass-div" style="display:none">
            		<div class="login-box">
            			<label>Set Password</label>
            			<div class="" style="margin-bottom:15px;">
            				<input id="enterNewPass" name="enterNewPass" type="text" placeholder="Enter new password">
            				<input id="confirmNewPass" name="confirmNewPass" type="password" placeholder="Confirm Password" >
            			</div>
            			<button type="button" class="btn " id="setNewPass">Set New Password</button>
            			<!-- <button type="reset" class="btn " id="">Reset</button> -->
            		</div>
           		</div>
              </form:form>
              
            </div>
            <div class="search-service">
              <p style="padding-top:10px;font-size:18px;">Search service</p><hr>
              <p style="padding:10px 0 0 0;">Type some letter or initial of service name. Services similar to this letter or initial will be displayed here, you can proceed by clicking the desired service.</p>
              <div style="position:relative">
                <input id="searchService" type="text" placeholder="Search Service">
                <ul class="search-service-ul">
              </div>
              </ul>
            </div>
            <div class="track">
              <p style="padding-top:10px;font-size:18px;">Track your Application</p><hr>
              <p style="padding:10px 0 0 0;">Here you can track the status of your application. Kindly enter the Application ID that you received while applying. After entering a valid Application ID you will be able to see the current status of your application</p>
              <select id="ulb-dropdownForTracking" name="ulb-dropdownForTracking" style="width:100%" data-placement="bottom" data-content="Please select the ulb" class="form-control ulb-dropdownForSignup">
                <option value="">Please Select...</option>
              </select><br>
              
             
              <input id="trackApplication" type="text" placeholder="Application ID">
              <button id="track-go" style="margin-bottom:15px;width:100%">GO</button>
             <%--  <a href="<c:url value="/property/search/view"/>" ><span class="glyphicon glyphicon-download"></span> Know your Property/Water connection no.</a> --%>
            </div>
            <div class="download">
              <p style="padding-top:10px;font-size:18px;">Download and Verify your Certificate</p><hr>
              <p style="padding:10px 0 0 0;">You can download a copy from the ULB repository of certificates by entering the Application ID that you received while applying for the certificate. After entering a valid Application ID you will be able to download the certificate in order to compare with the one available with you.</p>
              <select name="ulb-dropdownForDownload"  id="ulb-dropdownForDownload" style="width:100%" data-placement="bottom" data-content="Please select the ulb" class="form-control ulb-dropdownForSignup">
                <option value="">Please Select...</option>
              </select><br>
              <input id="downloadApplication" type="text" placeholder="Application ID">
              <button id="download-go" style="margin-bottom:15px;width: 100%">GO</button>
              <a href="<c:url value="/property/search/view" />" ><span class="glyphicon glyphicon-download"></span> Know your Property/Water connection no.</a>
            </div>
          </div>
          <div class="col-md-3 hidden-sm hidden-xs" style="background:#fff;padding:0">
            <div class="active-component">
                <ul>
                  <li class="action1 active" data-redirect=".citizen-login">
                    <span class="glyphicon glyphicon-log-in"></span><span> Login</span>
                  </li>
                  <li class="action2" data-redirect=".search-service">
                    <span class="glyphicon glyphicon-search"></span> Search Service
                  </li>
                  <li class="action3" data-redirect=".track">
                    <span class="glyphicon glyphicon-list-alt"></span> Track your Application
                  </li>
                  <li class="action4" data-redirect=".download">
                    <span class="glyphicon glyphicon-download"></span> Download and Verify your Certificate
                  </li>
                  <li class="action5">
                 <%--  <a href="<c:url value="/common/application/add/HPW" />" ><span class="glyphicon glyphicon-download"></span> Know your Property/Water connection no.</a> --%>
                   <a href="<c:url value="/property/search/view" />" ><span class="glyphicon glyphicon-download"></span> Know your Property/Water connection no.</a>
                  </li>
                 
                </ul>
            </div>
          </div>
        </div>

      </div>
      <!-- <div class="col-md-4 right-sction">
        <div class="more-option">
        <button type="button" class="btn btn-default servicesbtn">Apply for Service</button>
        <button type="button" onclick="javascript:window.open('http://mahadma.egovernments.org/dashboard/#ulbreports');" class="btn btn-default dashboardbtn">Dashboard</button>
        </div>
      </div> -->
    </div>

  </div>

<!-- water start-->
 <div id="water-pay-my-dues" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Pay My Dues</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
              N.A.
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      <li>
            N.A.
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Immediate
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/service_pdf/Pay_My_Dues_for_Water_Tax.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
       
           <form name="paymydues" id="paymydues">
       			<input type="hidden" name="serviceId-paymydues" id="serviceId-paymydues" value="64"/>
       			<input type="hidden" name="servicePage-paymydues" id="servicePage-paymydues" value="water-online-pay"/>
       		</form>
         <button type="button" class="btn btn-warning apply-btn" id="paymyduesApply" >Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>
  <div id="new-water" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">New Water Connection</h4>
        </div>
        <div class="modal-body">
            <div class="req-doc-citizen">
              <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                NOC from main owner in case of rented property
              </div>

               <div class="doc-head">
                DOCUMENTS VERIFIED BY ULB
              </div>
              <div class="docs-section">
                <ol>
                  <li> Property Extract</li>
                  <li>Receipt of last property tax paid </li>
                  <li>Occupancy Certificate (The above document will be verify from their records or Available in system then system will fetch the records from related application)</li>
                </ol>

              </div>
              <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/service_pdf/New_Water_Connection.pdf" target="_blank">Click Here..</a></div>
              </div>

              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank"> English</a></div>
              </div>
            </div>
        </div>

       <div class="modal-footer" style="text-align: center;">
       
       <form name="newwater" id="newwater">
       			<input type="hidden" name="serviceId-newwater" id="serviceId-newwater" value="29"/>
       			<input type="hidden" name="servicePage-newwater" id="servicePage-newwater" value="new-water-connection"/>
       		</form>
       
            <button type="button" id="newWaterConnection" class="btn btn-warning apply-btn" >Apply</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
      </div>

      </div>

    </div>
  </div>

  <div id="change-owner" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Change of Ownership</h4>
      </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
              <ol>
                <li> Property Transfer certificate</li>
                <li> Last payment of water bill receipt. </li>
                <li> Property extract (The above document details will be verify from their records or Available in system then system will fetch the records from related application</li>
              </ol>

            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
      
      <form name="change-owner-form" id="change-owner-form">
       			<input type="hidden" name="serviceId-change-owner" id="serviceId-change-owner" />
       			<input type="hidden" name="servicePage-change-owner" id="servicePage-change-owner" value="changeofownership"/>
       		</form>
        <button type="button" class="btn btn-warning apply-btn" id="change-ownerApply">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
      </div>
    </div>

  </div>
  </div>

  <div id="change-con" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Change of Connection Size</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
              <ol>
                <li>  Construction/ Completion Certificate.</li>
                <li>  Last payment of water bill receipt and Property Tax paid receipt (The above document details will be verify from their records or Available in system then system will fetch the records from related application)</li>

              </ol>

            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
                <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
      
       		<form name="changeConSize" id="changeConSize">
       			<input type="hidden" name="serviceId-changeConSize" id="serviceId-changeConSize" value="31"/>
       			<input type="hidden" name="servicePage-changeConSize" id="servicePage-changeConSize" value="service-change-usageconn"/>
       		</form>
      
        <button type="button" id="changeConnectionSize" class="btn btn-warning apply-btn">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
      </div>
    </div>

  </div>
  </div>


  <div id="per-dis" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Temporary/Permanent Disconnection</h4>
      </div>
     <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A. 
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
                <li>Last Payment Receipt of Water and Property.</li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
      
         <form name="tnpdisconnection" id="tnpdisconnection">
       			<input type="hidden" name="serviceId-tnpdisconnection" id="serviceId-tnpdisconnection" value="32"/>
       			<input type="hidden" name="servicePage-tnpdisconnection" id="servicePage-tnpdisconnection" value="tempdisconnection" />
       		</form>
      
        <button type="button" class="btn btn-warning apply-btn" id="tnpDisconnectionApply">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
      </div>
    </div>

  </div>
  </div>


  <div id="re-con" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Reconnection</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A. 
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
                <li>Last Payment Receipt of Water and Property Temporary Disconnection order details.</li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
              
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
      
      <form name="noduecerti" id="noduecerti">
			<input type="hidden" name="serviceId-reconnection" id="serviceId-reconnection" value="33"/>
			<input type="hidden" name="servicePage-reconnection" id="servicePage-reconnection" value="service-reconnection"/>
       </form>
      
        <button type="button" class="btn btn-warning apply-btn" id="reconnectionApply" >Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
      </div>
    </div>

  </div>
  </div>

  <div id="change-user" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Change Of Usage</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A. 
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
        <ol>
        <li>
         Construction / Completion Certificate.
        </li>
                <li>Last payment of water bill receipt.</li>
        </ol>
            </div>
          </div>
          <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
      
      		<form name="changeUsage" id="changeUsage">
       			<input type="hidden" name="serviceId-changeConSize" id="serviceId-changeUsage" value="34"/>
       			<input type="hidden" name="servicePage-changeConSize" id="servicePage-changeUsage" value="service-change-usageconn"/>
       		</form>
       		
        <button type="button" id="changeofUsage" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

  <div id="plum-license" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Plumber License</h4>
        </div>
        <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
               <ol>
         <li>Name and Address Proof</li>
         <li>Plumber Certificate</li>
         <li>Aadhar card</li>
         <li>PAN Card</li>
         </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
        <div class="modal-footer" style="text-align: center;">
          <button type="button" class="btn btn-warning apply-btn">Apply</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
        </div>
      </div>
    </div>
  </div>

  <div id="renew-plum-license" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Renewal Of Plumber License</h4>
        </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
              N.A
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      <li>
      Plumber details will be fetched from system.
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
        <div class="modal-footer" style="text-align: center;">
          <button type="button" class="btn btn-warning apply-btn">Apply</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
        </div>
      </div>
    </div>
  </div>

  <div id="no-due" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">No Due Certificate</h4>
        </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
              N.A
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      <li>
      Last payment of water bill receipt.
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                3 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/service_pdf/Water_Tax_No_Due_Certificate.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download<a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
        <div class="modal-footer" style="text-align: center;">
        
          <form name="noduecertiWT" id="noduecertiWT">
       			<input type="hidden" name="serviceId-noduecertiWT" id="serviceId-noduecertiWT" value="37"/>
       			<input type="hidden" name="servicePage-noduecertiWT" id="servicePage-noduecertiWT" value="nodue-certificate"/>
       		</form> 
        
        
          <button type="button" class="btn btn-warning apply-btn" id="noduecerWaterApply">Apply</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
        </div>
      </div>
    </div>
  </div>
   <!-- water End-->

  <!-- Marriage start-->
 <div id="marriage-reg" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Marriage Registration And Certificate</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
               <ol>
        <li>Affidavit ( in case of Doubt full cases).</li>
          <li>Bride and Groom proof of age i.e. Photo Copy of School Leaving Certificate or Birth Certificate.</li>
        <li>Memorandum of Marriage (Form D).</li>
        <li>Rs 100/- Court fee stamps.</li>
        <li>Proof of Residence of Bride and Groom (Photo Copy of Ration Card/M.S.E.B Bill / Telephone Bill, Passport).</li>
        <li>Photographs of Bride and Groom.</li>
        <li>Copy of Wedding Card.</li>
        <li>DivorceCetificate (Wherever applicable).</li>
          <li>Death Certificate of deacesd Spouse (wherever Applicable).</li>
         </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                3 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>

   </div>
 </div>

<div id="marriage-reg-correction" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Marriage Registration Correction</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
          Affidavit (name correction).
        </li>
                <li>ID Proof.</li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
       N.A. 
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Will differ ULB to ULB
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>

  </div>
</div>

 <div id="marriage-cert" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Marriage Certificate</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
          Affidavit (name correction).
        </li>
                <li>ID Proof.</li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
       N.A. 
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Will differ ULB to ULB
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>

   </div>
 </div>

 <div id="marriage-cert-reissue" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Re-issue Of Marriage Certificate</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
         citizen documents are not required.
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Immediate
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>

  </div>
</div>
  <!-- Marriage End-->

 <!--Property Tax Start-->

 <div id="new-ass" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">New Assessment</h4>
       </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A. 
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
              <ol>
              <li>
              Occupancy certificate.
              </li>
                <li> Death Certificate of deacesd Spouse (wherever Applicable).</li>
              </ol>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn" id="newassApply">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

 <div id="re-ass" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Re Assessment</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A. 
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      Property Assessment Data
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
            </div>
            <div class="docs-section">
              15 Days
            </div>
            <div class="doc-head">
              CHARGES
            </div>
            <div class="docs-section">
              ULB wise charges applicable
            </div>
            <div class="doc-head">
              <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
            </div>
            <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

 <div id="no-due-certificate" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">No Due Certificate</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A. 
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      Will check dues in system with Property Number
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
               3 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/service_pdf/Property_tax_No_Due_Certificate.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
       		<form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-noduecerti" id="serviceId-noduecerti" value="40"/>
       			<input type="hidden" name="servicePage-noduecerti" id="servicePage-noduecerti" value="nodue-certificate"/>
       		</form>
         <button type="button" class="btn btn-warning apply-btn" id="noduecerPropApply">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

 <div id="extract-prop" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Extract of Property</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
                N.A. 
              </div>
             <div class="doc-head">
             DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      Will check dues in system with Property Number
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/service_pdf/Property_Extract.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
       <form name="extractprop" id="extractprop">
       			<input type="hidden" name="serviceId-extractprop" id="serviceId-extractprop" value="41"/>
       			<input type="hidden" name="servicePage-extractprop" id="servicePage-extractprop" value="property-extract"/>
       		</form>
         <button type="button" class="btn btn-warning apply-btn" id="extractPropApply">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

 <div id="exemtion-vac" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Exemption for Vaccancy of Property</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
                Letter from Society for vacancy of property if reason is property vacant for consecutive 90 or more days.
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
            <ol>
            <li>
                      Fire Certificate by Fire Department
            </li>
            <li>
                       Demolition Notice by Authorities.
            </li>
            </ol>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>


 <div id="self-ass" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Self Assessment</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
                Letter from Society for vacancy of property if reason is property vacant for consecutive 90 or more days.
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
            <li>
                   Will verify Occupancy Certificate from BPMS System
            </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>


<div id="obj-reg" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Objection Registration</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
                Letter from Society for vacancy of property if reason is property vacant for consecutive 90 or more days.
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
        </div>
        <div class="docs-head">
       Objection Against Special Notice/Bill 
            </div>
       <div class="docs-section">
      <li>
      Last Bill.
      </li>
            </div>
        <div class="docs-head">
       Objection Against Transfer
            </div>
       <div class="docs-section">
      <li>
      Ownership Documents.
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
            </div>
          </div>
       <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
      </div>
     
    </div>
  </div>
</div>


 <div id="prop-trans" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Property Transfer by heredity/ Other Modes</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
         <div class="docs-section">
            <li>
             Death Certificate,Copy of Will or Court Order. 
            </li>
          </div>
        <div class="doc-head">
      DOCUMENTS REQUIRED FOR OTHER MODES
          </div>
       <div class="docs-section">
      <li>
      Sale Deed, NOC For Society, Society Share Certificate.
      </li>
        </div>
         <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
        </div>
        <div class="docs-head">
         Documents Required For Heredity
            </div>
        <div class="docs-section">
      <li>
      Death Certificate
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
        </div>
 		   <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
       </div>
     </div>
   </div>


 </div>


 <div id="sub-proper" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Subdivision/Bifurcation Of Properties</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
              Title deed
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      <li>
            Will check dues in system
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

 <div id="pay-my-dues" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Pay My Dues</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
              N.A.
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      <li>
            N.A.
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Immediate
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/service_pdf/Pay_My_Dues_for_Property_Tax.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>
 <!--Property Tax End-->

 <!-- fire NOC Start -->
 <div id="provision-fire" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Provisional Fire NOC</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
               Three sets of architectural plan.  
        </li>
        <li>
        Two sets of drawings as per rule no.15
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      <li>
            Will check dues in system
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Will differ ULB to ULB
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

 <div id="final-fire" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Final Fire NOC</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        D.G. Set certificate.  
        </li>
        <li>
         100 Rs. Stamp Paper Agreement.
        </li>
        <li>
        Agency Certificate.
        </li>
        <ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      <li>
            Will check dues in system
      </li>
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Will differ ULB to ULB
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/service_pdf/Fire_NOC.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>





 <div id="fire-renewal" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Renewal Of Fire NOC</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
         <ol>
        <li>
        100 Rs. Stamp Paper Agreement.
        </li>
        <li>
        Agency Certificate.
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Will differ ULB to ULB
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

 <div id="tech-remark" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Issuance Of Technical Remarks</h4>
       </div>
       <div class="modal-body">
           <div class="req-doc-citizen">
             <div class="doc-head">
                 REQUIRED DOCUMENTS FROM CITIZEN
               </div>
               <div class="docs-section">
        N.A
               </div>
              <div class="doc-head">
               DOCUMENTS VERIFIED BY ULB
             </div>
             <div class="docs-section">
      N.A
             </div>
             <div class="doc-head">
                 TIME REQUIRED TO DELIVER SERVICE
               </div>
               <div class="docs-section">
                 Will differ ULB to ULB
               </div>
               <div class="doc-head">
                 CHARGES
               </div>
               <div class="docs-section">
                 ULB wise charges applicable
               </div>
               <div class="doc-head">
                 <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
               </div>
               <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
           </div>
       </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>
 <!-- fire NOC End -->



  <!--NOC-->

  <div id="noc-hording" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">NOC For Horading/Banner</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
         Police NOC.
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
               <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-nochoardingbanner" id="serviceId-nochoardingbanner" value="49"/>
       			<input type="hidden" name="servicePage-nochoardingbanner" id="servicePage-nochoardingbanner" value="noc"/>
       		</form>
         <button type="button" id="nochoardingbanner" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="noc-mandap" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">NOC For Mandap/Stall</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <li>
         Police NOC.
        </li>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
               7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
       <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocmandapinsatll" id="serviceId-nocmandapinsatll" value="50"/>
       			<input type="hidden" name="servicePage-nocmandapinsatll" id="servicePage-nocmandapinsatll" value="noc"/>
       			
       		</form>
         <button type="button" id="nocmandapinsatll" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="noc-ele" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">NOC for Electric Meter Installation</h4>
       </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocelectricmeter" id="serviceId-nocelectricmeter" value="51"/>
       			<input type="hidden" name="servicePage-nocelectricmeter" id="servicePage-nocelectricmeter" value="noc"/>
       			
       		</form>
         <button type="button" id="nocelectricmeter" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="noc-road" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">NOC For Road Digging For Cable Installation</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
         NOC from HPCL.
        </li>
        <li>
        NOC from TATA/electrical Board.
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
               7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
       <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocroadcable" id="serviceId-nocroadcable" value="52"/>
       			<input type="hidden" name="servicePage-nocroadcable" id="servicePage-nocroadcable" value="noc"/>
       			
       		</form>
         <button type="button" id="nocroadcable" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="business-pool" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Business Pool/Snooker Indoor Business NOC</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
               <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocbusinesspool" id="serviceId-nocbusinesspool" value="53"/>
       			<input type="hidden" name="servicePage-nocbusinesspool" id="servicePage-nocbusinesspool" value="noc"/>
       			
       		</form>
         <button type="button" id="nocbusinesspool" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="noc-fast-food" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">NOC For Fast Food On wheels/road/At Public Place</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
               7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocfastfood" id="serviceId-nocfastfood" value="54"/>
       			<input type="hidden" name="servicePage-nocfastfood" id="servicePage-nocfastfood" value="noc"/>
       			
       		</form>
         <button type="button" id="nocfastfood" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="business-medical" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Business Medical Business/ Store NOC</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Click Here to Download</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocmedical" id="serviceId-nocmedical" value="55"/>
       			<input type="hidden" name="servicePage-nocmedical" id="servicePage-nocmedical" value="noc"/>
       			
       		</form>
         <button type="button" id="nocmedical" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="business-meat" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Business Meat Shop NOC</h4>
       </div>
        <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocmeatshop" id="serviceId-nocmeatshop" value="56"/>
       			<input type="hidden" name="servicePage-nocmeatshop" id="servicePage-nocmeatshop" value="noc"/>
       			
       		</form>
         <button type="button" id="nocmeatshop"  class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="business-noc" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Business NOC for Hospital</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        Fitness Certificate.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nochospital" id="serviceId-nochospital" value="57"/>
       			<input type="hidden" name="servicePage-nochospital" id="servicePage-nochospital" value="noc"/>
       			
       		</form>
         <button type="button" id="nochospital" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

  <div id="business-noc-tours" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Business NOC For Tours And Travels</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        Ownership documents(C.S. Map/Extract).
        </li>
        <li>
        Index II.
        </li>
        <li>
         Tax Receipt.
        </li>
        <li>
         Stamp paper Rs. 100.
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                7 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-noctourtravel" id="serviceId-noctourtravel" value="58"/>
       			<input type="hidden" name="servicePage-noctourtravel" id="servicePage-noctourtravel" value="noc"/>
       			
       		</form>
         <button type="button" id="noctourtravel" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>
  <!--NOC-->


  <!-- Tree senses Start--> <!-- Brijesh Soni -->
  <div id="application-services" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <!-- <h4 class="modal-title">Application for Service Request</h4>-->
         <h4 class="modal-title">Application for Survey Request</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <!-- Added by Brijesh Soni -->
         <form name="treeSurvey" id="treeSurvey">
	         <input type="hidden" name="serviceId-treeSurvey" id="serviceId-treeSurvey" value="47"/>
	         <input type="hidden" name="servicePage-treeSurvey" id="servicePage-treeSurvey" value="tree-survey-application"/>
         </form>
         <!-- End Added -->
         <button type="button" class="btn btn-warning apply-btn" id="treeSurveyApply">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>
  <!-- Tree senses End-->

  <!--Social Welfare Start-->
  <div id="app-for-scheme" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Application For Scheme</h4>
       </div>
       <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        Category.
        </li>
        <li>
        Caste Certificate.
        </li>
        <li>
        Ration Card.
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>
  <!--Social Welfare End-->

   <!--Land & State Start-->
 <div id="adv-agree" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Advertising/Hoarding Agreement</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
               <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
                </div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

<div id="adv-renew" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Advertising/Hoarding Renewal Of Agreement</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
              <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
               <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

<div id="adv-hoarding" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Advertising/Hoarding Cancellation Of Agreement</h4>
      </div>
        <div class="modal-body">
          
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        citizen documents are not required.
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
               <div class="doc-head">
                  <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
               <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
      
        </div>
        <div class="modal-footer" style="text-align: center;">
          <button type="button" class="btn btn-warning">Apply</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-success">Print</button>
        </div>
    </div>
  </div>

</div>
<div id="adv-lic" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Advertising/Hoarding License Application</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        Adhar card details.
        </li>
        <li>
        Shop act License.
        </li>
        <li>
         Agreement Copy of Shop Owner.
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
              <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>
  <!--Land & State End-->

  <!--Trade License Start-->
   <div id="license-issue" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Issuance Of License</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        ID Proof.
        </li>
        <li>
        Lease Deed/ Legal Occupancy.
        </li>
        <li>
        NOC for License.
        </li>
        <li>
        Partnership Deed( if partners involved).
        </li>
        <li>
        NOC from MPCB(In case of storage of chemical substances).
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
              <div class="link-text">For more information on process/procedure <a href="pdf/service_pdf/Apply_for_New_Trade_License.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
              <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
       <form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-issuanceLic" id="serviceId-issuanceLic" value="20"/>
       			<input type="hidden" name="servicePage-issuanceLic" id="servicePage-issuanceLic" value="newtrade-license"/>
       		</form>
        <button type="button" class="btn btn-warning" id="issuanceLic">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

<div id="renew-license" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Renewal Of License.</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        ID Proof.
        </li>
        <li>
        Lease Deed/ Legal Occupancy.
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                 15 days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
              <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
            </div>
            <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-renewalLic" id="serviceId-renewalLic" value="21"/>
       			<input type="hidden" name="servicePage-renewalLic" id="servicePage-renewalLic" value="renewal-tradelic"/>
       		</form>
        <button type="button" class="btn btn-warning" id="renewalLic">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

 <div id="trans-lic" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Transfer License</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        ID Proof of Transferee.
        </li>
        <li>
        NOC from partners (if partners involved).
        </li>
        <li>
        Lease Deed/ Legal Occupancy.
        </li>
        <li>
        NOC from other family member (If Existing owner is dead or Hereditary Transfer).
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

 <div id="duplicate-license" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Duplicate License</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        N.A
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
               15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
    
      <div class="modal-footer" style="text-align: center;">
        <form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-duplicateLic" id="serviceId-duplicateLic" value="22"/>
       			<input type="hidden" name="servicePage-duplicateLic" id="servicePage-duplicateLic" value="service-duplicate-license"/>
       		</form>
        <button type="button" class="btn btn-warning" id="duplicateLic">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

 <div id="change-bus-name" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Change In Business Name</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        ID Proof.
        </li>
        <li>
        NOC from partners (if partners involved).
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
               15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

   <div id="change-bus" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Change In Business</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        ID Proof.
        </li>
        <li>
        Lease Deed/ Legal Occupancy.
        </li>
        <li>
        NOC for License.
        </li>
        <li>
        Partnership Deed( if partners involved).
        </li>
        <li>
        NOC from MPCB(In case of storage of chemical substances)
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

 <div id="change-partner-name" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Change In Owner/Partner Name</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        ID Proof of Owner/Partners.
        </li>
        <li>
        Lease Deed/ Legal Occupancy.
        </li>
        <li>
        Partnership Deed( if partners involved).
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
               <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

 <div id="incr-part" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Increase/Decrease Partner</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        ID Proof of New partners.
        </li>
        <li>
        Lease Deed/ Legal Occupancy.
        </li>
        <li>
        NOC from partners.
        </li>
        <li>
        Partner letter in case partner name is removed.
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                15 Days
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

  <div id="lic-cancel" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Cancellation Of License</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        <ol>
        <li>
        ID Proof of Owner/Partners.
        </li>
        <li>
        NOC from partners( if partners involved).
        </li>
        <li>
        Original License.
        </li>
        </ol>
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Will differ ULB to ULB
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
               <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>


<!-- ------------------------------   Registration Modal -------------------------------- -->
 <div id="reg-modal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Create an account</h4>
      </div>
      <div class="modal-body">
       <c:url var="jsoncitizenRegUrl" value="/rest/citizen/registration/action/reg" />
<%--         <c:url var="jsoncitizenOtpUrl" value="/citizen/otpConfirmation/action/otp" /> --%>
		<c:url var="validOTPUrl" value="/registration/citizen/profile" />

 		<form:form method="post" action="${validOTPUrl}" id="citizenFrom" modelAttribute="citizenMaster">
 		
         <%--  <form id="registrationForm" name= "registrationForm" class="col-md-12" method="post" action="#"> --%>
            <div class="form-group">
              <label for="name" class="col-md-4 control-label">Mobile No.</label>
              <div class="col-md-8">
               <%-- <form:input path="userMobile" class=" form-control" id="userMobile"/> --%>
               <input type="text" class="form-control" name="userMobile" id="userMobile"  placeholder="Enter your Mobile No."/>
              </div>
            </div>

            <div class="form-group">
              <label for="name" class="col-md-4 control-label">Your Name</label>
              <div class="col-md-8">
                  <input type="text" class="form-control" name="userName" id="userName"  placeholder="Enter your Name"/>
              </div>
            </div>

            <div class="form-group">
              <label for="email" class="col-md-4 control-label">Your Email</label>
              <div class="col-md-8">
                 <input type="text" class="form-control" name="userEmailId" id="userEmailId"  placeholder="Enter your Email"/>
              </div>
            </div>

            <div class="form-group">
              <label for="username" class="col-md-4 control-label">Username</label>
              <div class="col-md-8">
                  <input type="text" class="form-control" name="userLoginName" id="userLoginName"  placeholder="Enter your Username"/>
               
              </div>
            </div>

            <div class="form-group">
              <label for="password" class="col-md-4 control-label">Password</label>
              <div class="col-md-8">
               
                  <input type="password" class="form-control" name="userPassword" id="userPassword"  placeholder="Enter your Password"/>
               
              </div>
            </div>

            <div class="form-group">
              <label for="confirm" class="col-md-4 control-label">Confirm Password</label>
              <div class="col-md-8">
                  <input type="password" class="form-control" name="confirmpass" id="confirmpass"  placeholder="Confirm your Password"/>
              </div>
            </div>

            <div class="form-group col-md-4" style="text-align: center;">
              <input type="button" id="Reg-button" name="Reg-button" class="btn btn-primary btn-lg btn-block login-button" value="Register">
            </div>
            <input type="hidden" name="otp" id="otp" />
          
          
           <div id="otpconfirmation" class="col-md-12" style="padding: 10px;display: block;border: 1px solid rgba(128, 128, 128, 0.43);">
             <div class="form-group" >
               <label for="confirm" class="col-md-4 control-label">Confirm OTP</label>
                <div class="col-md-8">
                  <input type="text" class="form-control" name="otpconfirm" id="otpconfirm"  placeholder="Confirm your OTP"/>
                </div>
             </div> 
             <div class="form-group col-md-4" style="text-align: center;">
              <input type="button" id="otp-button" name="otp-button" class="btn btn-primary btn-lg btn-block login-button" value="Confirm">
             </div>
           </div>
           </form:form>
         </div>
          
           
      <div class="modal-footer" >
        
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

 <div id="fire-cert" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Fire Certificate</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        N.A
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Will differ ULB to ULB
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="doc-head">
                <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
</div>

<div id="no-due-certificate" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">No Due Certificate</h4>
      </div>
      <div class="modal-body">
          <div class="req-doc-citizen">
            <div class="doc-head">
                REQUIRED DOCUMENTS FROM CITIZEN
              </div>
              <div class="docs-section">
        N.A
              </div>
             <div class="doc-head">
              DOCUMENTS VERIFIED BY ULB
            </div>
            <div class="docs-section">
      N.A
            </div>
            <div class="doc-head">
                TIME REQUIRED TO DELIVER SERVICE
              </div>
              <div class="docs-section">
                Immediate
              </div>
              <div class="doc-head">
                CHARGES
              </div>
              <div class="docs-section">
                ULB wise charges applicable
              </div>
              <div class="link-text">For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a></div>
              </div>
              <div class="doc-head">
                <div class="link-text">Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a></div>
              </div>
          </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button type="button" class="btn btn-warning">Apply</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Print</button>
      </div>
    </div>
  </div>
  

  <div id="tax-service-charge" class="modal fade" role="dialog">
   <div class="modal-dialog">
     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Tax and Service charge details</h4>
       </div>
       <div class="modal-body">
       <!--  <div class="form-group">
          <label for="sel1">Select ULB:</label>
          <select class="form-control">
            <option value="">Select ULB</option>
            <option value="pdf/ulb/Alibag_Municipal_Council.pdf">Alibag Municipal Council</option>
            <option value="">Ambarnath Municipal Council</option>
            <option value="">Khopoli Municipal Council</option>
            <option value="">Pen Municipal Council</option>
            <option value="">Roha Municipal Council</option>
          </select>
        </div> -->

        <div class="dropdown">
           <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select ULB
          <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Select ULB</a></li>
            <li><a href="pdf/ulb/Alibag_Municipal_Council.pdf" target="_blank">Alibag Municipal Council</a></li>
            <li><a href="pdf/ulb/Ambarnath_Municipal_Coucil.pdf" target="_blank">Ambarnath Municipal Council</a></li>
            <li><a href="pdf/ulb/Khopoli_Municipal_Council .pdf"  target="_blank">Khopoli Municipal Council</a></li>
            <li><a href="pdf/ulb/Pen_Municipal_Council.pdf" target="_blank">Pen Municipal Council</a></li>
            <li><a href="pdf/ulb/Roha_Municipal_Council.pdf" target="_blank">Roha Municipal Council</a></li>
          </ul>
        </div>

      </div>
       <div class="modal-footer" style="text-align: center;">
         <button type="button" class="btn btn-warning apply-btn">Apply</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="button" class="btn btn-success" onclick="javscript:print();">Print</button>
       </div>
     </div>
   </div>
 </div>

</div>


<div class="footer-section">
<div class="container"><p>Best Viewed on internet explorer 9+, firefox, Chrome</p></div>

</div>

<div class="modal fade" id="servicesDetailModal" tabindex="-1" role="dialog" aria-labelledby="servicesDetailModal" aria-hidden="true">
  <div class="modal-dialog lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="servicesDetailModalLabel">Modal title</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body small-text" id="documents-body">

      </div>
      <div class="modal-footer">
        <button type="button" id="apply-btn" class="btn btn-primary">Apply</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" onclick="javscript:print();" class="btn btn-secondary">Print</button>
      </div>
    </div>
  </div>
</div>

<!-- Tracking Start Here  -->

<div class="modal fade" id="track-modal" tabindex="-1" role="dialog" aria-labelledby="trackAppModal">
 <div class="modal-dialog" role="document">
   <!-- Modal content-->
   <div class="modal-content">
     <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</button>
       <h4 class="modal-title">Tracking Application Data</h4>
     </div>
     <div class="modal-body">
   
         <div class="form-wrapper hide-label">
                    <div class="space-top">
                          <div class="row">
                            <div class="col-sm-12">
                            	 <div class="panel-body">
								 <div class="row">
								 
                            	  <div class="form-group col-md-12 col-sm-12 col-xs-12"> 
						                <!--  <label for="name" class="col-md-2 col-sm-12 col-xs-12">Sr Number</label> -->
						                    <div class="col-md-4 col-sm-12 col-xs-12"> 
						                       <span id="srNumber"></span>
						                    </div> 
											
						                   <!-- <label for="name" class="col-md-2 col-sm-12 col-xs-12">Organisation Name</label> --> 
						                  <div class="col-md-4 col-sm-12 col-xs-12"> 
						                       <span id="organisationName"></span>
						                  </div> 
						                </div>
						              </div>
						              
						                 <div class="row">
						                <div class="form-group col-md-12 col-sm-12 col-xs-12"> 
						                  <!--  <label for="name" class="col-md-2 col-sm-12 col-xs-12">Organisation Address</label> --> 
						                    <div class="col-md-4 col-sm-12 col-xs-12"> 
						                       <span id="organisationAddress"></span>
						                    </div> 
						             
						
						                <!--  <label for="name" class="col-md-2 col-sm-12 col-xs-12">Application Name</label> --> 
						                  <div class="col-md-4 col-sm-12 col-xs-12"> 
						                     <span id="applicantName"></span>
						                     </div>
						                     </div>
						                     </div>
       
          
          </div>
        </div>
        </div>
		
		<div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                            Tracking 
                                    </div>
                                     <div class="panel-body">
                                         <div class="table-responsive table-bordered tab-pane">
                                                <table class="table " id="trackingTableData" style="font-size:12px;">
                                                    <thead>					 						 	
                                                        <tr>
                                                            <th>Sr no.</th>
                                                            <th>Organisation Name</th>
                                                            <th>Organisation Address</th>
                                                            <th>Application Name</th>
                                                         
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    </tr>
                                                    </tbody>
                                                    <tfoot>
                                                    <tr>
                                                    
                                                    </tfoot>
                                                    
                                                </table>
                                            </div> 
		
		 <!-- <div class="col-sm-12">
                            	 <div class="panel-body">
                                       <div class="row">
						                <div class="form-group col-md-12 col-sm-12 col-xs-12"> 
						                   <label for="name" class="col-md-2 col-sm-12 col-xs-12">Enter</label> 
						                    <div class="col-md-6 col-sm-12 col-xs-12"> 
                   								 <input type="text" class=" form-control" id="payAmount" name="payAmount" > 
                 							</div>
                 							<div class="col-md-4 col-sm-12 col-xs-12"> 
                 							<button type="button" class="btn btn-default">Pay</button>
                 							</div>
						                </div>
						                </div>
						                </div>
						                
						              </div>
                                         -->    
                                     </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>               
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div> 
<!-- Tracking End Here  -->
<!-- Downloading Certificate Start Here  -->

<div class="modal fade" id="downloading-modal" tabindex="-1" role="dialog" aria-labelledby="trackingAppModal">
 <div class="modal-dialog" role="document">
   <!-- Modal content-->
   <div class="modal-content">
     <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</button>
       <h4 class="modal-title">Downloading Application Data</h4>
     </div>
     <div class="modal-body">
   
         <div class="form-wrapper hide-label">
                    <div class="space-top">
                          <div class="row">
                            <div class="col-sm-12">
                            	 <div class="panel-body">
								 <div class="row">
								 
                            	  <div class="form-group col-md-12 col-sm-12 col-xs-12"> 
						                <!--  <label for="name" class="col-md-2 col-sm-12 col-xs-12">Sr Number</label> -->
						                    <div class="col-md-4 col-sm-12 col-xs-12"> 
						                       <span id="srNumber"></span>
						                    </div> 
											
						                   <!-- <label for="name" class="col-md-2 col-sm-12 col-xs-12">Organisation Name</label> --> 
						                  <div class="col-md-4 col-sm-12 col-xs-12"> 
						                       <span id="organisationName"></span>
						                  </div> 
						                </div>
						              </div>
						              
						                 <div class="row">
						                <div class="form-group col-md-12 col-sm-12 col-xs-12"> 
						                  <!--  <label for="name" class="col-md-2 col-sm-12 col-xs-12">Organisation Address</label> --> 
						                    <div class="col-md-4 col-sm-12 col-xs-12"> 
						                       <span id="organisationAddress"></span>
						                    </div> 
						             
						
						                <!--  <label for="name" class="col-md-2 col-sm-12 col-xs-12">Application Name</label> --> 
						                  <div class="col-md-4 col-sm-12 col-xs-12"> 
						                     <span id="applicantName"></span>
						                     </div>
						                     </div>
						                     </div>
       
          
          </div>
        </div>
        </div>
		
		<div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                            Downloading 
                                    </div>
                                     <div class="panel-body">
                                         <div class="table-responsive table-bordered tab-pane">
                                                <table class="table " id="downloadingTableData" style="font-size:12px;">
                                                    <thead>					 						 	
                                                        <tr>
                                                            <th>Sr no.</th>
                                                            <th>Organisation Name</th>
                                                            <th>Organisation Address</th>
                                                            <th>Application Name</th>
                                                         
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    </tr>
                                                    </tbody>
                                                    <tfoot>
                                                    <tr>
                                                    
                                                    </tfoot>
                                                    
                                                </table>
                                            </div> 
		
		 <!-- <div class="col-sm-12">
                            	 <div class="panel-body">
                                       <div class="row">
						                <div class="form-group col-md-12 col-sm-12 col-xs-12"> 
						                   <label for="name" class="col-md-2 col-sm-12 col-xs-12">Enter</label> 
						                    <div class="col-md-6 col-sm-12 col-xs-12"> 
                   								 <input type="text" class=" form-control" id="payAmount" name="payAmount" > 
                 							</div>
                 							<div class="col-md-4 col-sm-12 col-xs-12"> 
                 							<button type="button" class="btn btn-default">Pay</button>
                 							</div>
						                </div>
						                </div>
						                </div>
						                
						              </div>
                                         -->    
                                     </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>               
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div> 
<!--Downloading Certificate End  -->



<%-- <jsp:include page="property/taxcalpage.jsp" /> --%>
 
<c:url var="jsonOTPUrl" value="/rest/common/otp/getOTP" />

	<%-- <jsp:include page="maha-dma/model-track-app.jsp" /> --%>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    <script src="<c:url value="/js/waitingfor.js" />"></script>
  
	<jsp:include page="common/maha-dma/jsFooter.jsp" />

	<c:url var="sucessloginUrl" value="/" />
	<c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
	<c:set var='sessionId' value='${pageContext.session.id}' />
	<c:url var='jsonTrackDetailUrl' value='/tracking/rest/search/knowtracking' />
	<c:url var='jsonLoginValidUrl' value='/rest/common/login/isValidUser' />
	<c:url var='validateOTP' value='/rest/common/otp/validateOTP/' />
	<c:url var='isUserExist' value='/rest/common/login/isUserExist' />
	<c:url var='isMobileExist' value='/rest/common/login/isMobileExist' />
	<c:url var='homePage' value='/home' />
	<c:url var='jsonDownloadCertificateUrl' value='/tracking/rest/search/knowdownloading' />
	<c:url var='taxCalData' value='/data/taxJson.json' />
	<%-- <c:url var='servicePage' value='/common/application/add' /> --%>
	<c:url var='servicePage' value='/common/application/showServicePage' />
	<c:url var='tradeServicePage' value='/duplicate/application/showServicePage' />
	<c:url var='jsonServiceListUrl' value='/rest/common/service/servicelist' />
	<c:url var='paymentBillServicePage' value='/common/application/showWaterBillServicePage' />
	
	<script src="<c:url value="/maha-dma/js/custom-login.js" />"></script>
 	<script src="<c:url value="/maha-dma/js/custom.js" />"></script> 
 	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
 	
 	<script>
 		var jsonULBListUrl = "${jsonULBListUrl}";
 		var jsoncitizenRegUrl = "${jsoncitizenRegUrl}";
 		var jsonTrackDetailUrl = "${jsonTrackDetailUrl}";
 		var jsonOTPUrl = "${jsonOTPUrl}";
 		var validOTPUrl = "${validOTPUrl}";
 		var jsonLoginValidUrl = "${jsonLoginValidUrl}";
  		var validateOTP = "${validateOTP}";
  		var isUserExist = "${isUserExist}";
  		var isMobileExist = "${isMobileExist}";
  		var homePage = "${homePage}";
  		var jsonDownloadCertificateUrl = "${jsonDownloadCertificateUrl}";
  		var csrftoken = "<c:out value="${ctoken}"/>";
  		var propertyEntryForm = "${propertyEntryForm}";
  		var taxCalData = "${taxCalData}";
  		var servicePage = "${servicePage}";
  		var tradeServicePage = "${tradeServicePage}";
  		var paymentBillServicePage = "${paymentBillServicePage}";
 	</script>
 	
 	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script> 
 	<script src="<c:url value="/js/common.min.js" />"></script> 
 	<script src="<c:url value="/home/js/home.min.js" />"></script> 
 	<script src="<c:url value="/home/js/taxcal.min.js" />"></script> 
 	<script src="<c:url value="/home/js/service.min.js" />"></script> 
  	<script>
  		$("#cit").click(function(){
  			$(".ulb-drop").hide();
  		});
  		$("#emp").click(function(){
  			$(".ulb-drop").show();
  		});
  	</script>
  	
  	
  	<c:url var='getUserFromNum' value='/common/checkNumber' />
  	<c:url var='getOTPnum' value='/common/getOTPnum' />
  	<c:url var='matchOTP' value='/common/matchOTP' />
  	<c:url var='updateNewPass' value='/common/updateNewPass' />
  	<c:url var='home' value='/' />
  	
<script>
 $(document).ready(function(){
  	    	  getULBListID("${jsonULBListUrl}","ulbId");
  	    	  getServiceList();
  	    	  $('#ulbId').on('change', function() {
  	    		  $("#ulbId").val(this.value);
  	    	  });
  	    	  
  	    	
  	    	
  	    	//Click On Forgot Password to get Mobile Number Screen
  	    	  $('#forgotPass').click(function()
  	    			  {
  	    		  
  	    		  $('.forget-passward-div').show();
  	    		  $('.login-1').hide();
  	    	  });
  	    	  
  	    	  
  	    	  var userId = "";
  	    	  
  	    	//Click On send OTP, to get OTP
  	    	  $('#sendOTP').click(function(){
  	    		  
  	    		  
  	    		
  	    		var mobileNumber = $('#enterMobile').val();
  	    		var userName = "";
  	    		var userMobile = "";
  	    		var userEmailId = "";
  	    		 $.ajax({
	    				type : "POST",
	    				url : "${getUserFromNum}",
	    				data : "number=" + mobileNumber,
	    					 
	    				success : function(response) {
	    					
	    					//alert("Data For Entred Number---"+response);
	    			   	           
	    					$.ajax({
	    	    				type : "POST",
	    	    				url : "${getOTPnum}",
	    	    				contentType : "application/json",
	   		                 	dataType : 'json',
	   		                 	data: response,
	    	    					 
	    	    				success : function(response) {
	    	    					
	    	    					//alert("response OTP----"+response);
	    	    					$('.otp-div').show();
	      	    					$('.forget-passward-div').hide();
	    	    					
	    	    				},
	    	    				
	    	    				error : function() {
	    	    					alert('OTP not genrated !!!!!!!');
	    	    					
	    	    				}
	    	    			});
	    					
	    				},
	    				
	    				error : function() {
	    					alert('You Are Not Register With us.....Please Register !!!!!!!');
	    					$('.forget-passward-div').hide();
	    	  	    		  $('.login-1').show();
	    				}
	    			});
  	    		
  	    		
  	    		
  	    	  });
  	    	  
  	    	  
  	    	  
  	    	  
  	    	  //verfiy OTP send to Your mobile
  	    	  $('#verifyOTP').click(function(){
  	    		  
  	    		var EnteredOTP = $('#EnteredOTP').val();
  	    		
  	    		
  	    		$.ajax({
    				type : "POST",
    				url : "${matchOTP}",
    				data : "EnteredOTP=" + EnteredOTP,
    					 
    				success : function(response) {
  	    				
  	    				if(response == 1)
  	    					{
	  	    					$(".resetpass-div").show();
	  	    					$('.otp-div').hide();
  	    					}
  	    				else
  	    					{
  	    						alert('OTP not Matched !!!!!!!   Please Enter Correct Value');
  	    					}
  	    				
    				},
    				
    				error : function() {
    					alert('OTP not Matched !!!!!!!');
    					
    				}
    			});
  	    		  
  	    	  });
  	    	  
  	    	  
  	    	  
  	    	  
  	    	  
  	    	  $('#setNewPass').click(function(){
  	    		  
  	    		  var enterNewPass =$('#enterNewPass').val();
  	    		  var confirmNewPass = $('#confirmNewPass').val();
  	    		  
  	    		  if(enterNewPass == confirmNewPass)
  	    			  {
  	    			  	alert("Password Update---  Please Login With Your New Password !!!");
  	    			  window.location = "${home}";
		  	    			/* $.ajax({
		  	    				type : "POST",
		  	    				url : "${updateNewPass}",
		  	    				data : "enterNewPass=" + enterNewPass
		  	    						+"&userId=" + userId,
		  	    					 
		  	    				success : function(response) {
		  	  	    				
		  	    				},
		  	    				
		  	    				error : function() {
		  	    					alert('System Issue --- Password Not Updated !!!!!!!');
		  	    					
		  	    				}
		  	    			}); */
  	    			  }
  	    		  else
  	    			  {
	  	    			  	alert("Entered Password is not Matched with Confirm Password !!!!!!!");
	  	    			  	$('#enterNewPass').focus();
	  	    			  	return false;
  	    			  }
  	    		  
  	    	  });
  	    	  
  	    	  
  	    	  
  	    	  
  	    	});

 
 
 
 
 
 /*-----------------Service list------------------------------*/
 function getServiceList()
 {
	 var dataVar = {"type" : "All"};
 	 $.ajax({
        type: "POST",
        url: "${jsonServiceListUrl}",
        contentType : "application/json",
        dataType : 'json',
        data : JSON.stringify(dataVar),
        async: false,
        headers: 
        {
            //"Authorization": "Basic " + btoa(invoiceapiuser+":"+invoiceapipassword),
            "Authorization": "Basic " + btoa("ashok:pass") 
            //"USER":btoa(getUserId(storeInvUser)),
           // "BUSID":btoa(getBussId(storeselectInvBusinessId))
        },
        success: function (data){
          var row = 1;
          dataSet = [];
          if(parseInt(data.totalRows) > 0)
          {
       	  
       	   $.each(data.resultData, function (i, result) 
       		{
       		  // $("#"+dropId).append($("<option></option>").val(result.serviceId).html(result.servicNameRg));
       		dataSet.push(result);
            });
       	  
          }else{
                new PNotify({
                    title: 'Data Not Found.',
                    styling: 'bootstrap3',
                    type: 'error'
                });
          }
        },
        statusCode: {
 		    403: function() {
 		    	 new PNotify({
                    title: 'Session Expire. Please Re-Login...',
                    styling: 'bootstrap3',
                    type: 'error'
                });
 		    	 setTimeout(function(){
 		                window.location.href="/"; 
 		            }, 2000);
 		    }
 		},
        error : function(e) {
                  console.log("ERROR: ", e.responseText);
                  console.log("ERROR: ", e);
                //	display(e);
            new PNotify({
                    title: 'Request Not Process... ',
                    styling: 'bootstrap3',
                    type: 'error'
                });
            }
        });
 	
 }
//------------------end service-------------------
</script>

  </body>
</html>
</compress:html>
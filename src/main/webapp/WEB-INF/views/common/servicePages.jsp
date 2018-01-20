<%@page import="com.innowave.mahaulb.common.service.beans.UserBean"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="section" id="service_available">
         	<div class="section-head">

         		 <h2>Citizen Services</h2>

         		 
         	</div>
      
      <div class="panel-group" id="accordion">
    <div class="container-fluid">
    	<div class="row form-group">
	    	<div class="col-md-3">
	    		<div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Property Tax</a>
			        </h4>
			        <i class="fa fa-angle-down" aria-hidden="true"></i>
			      </div>
			      <div id="collapse1" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<!-- <li><a href="" data-toggle="modal" data-target="#prop-new-ass">New Assessment</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#prop-re-ass">Re Assessment</a></li> -->
			        		<li><a href="" data-toggle="modal" data-target="#prop-no-due-certificate">No Due Certificate</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#prop-extract">Extract of Property</a></li>
			        		<li><a href="">Exemption for Vaccancy of Property</a></li>
			        		<li><a href="">Self Assessment</a></li>
			        		<li><a href="">Objection Registration</a></li>
			        		<li><a href="">Property Transfer by heredity/ Other Modes</a></li>
			        		<!-- <li><a href="">Subdivision/Bifurcation of Properties</a></li> -->
			        		<li><a href="" data-toggle="modal" data-target="#new-taxcal" onClick="javascript:reloadForm();">Property Tax Calculator</a></li>
			        		<!-- <li><a href="">Payment Of Water Bill </a></li> -->
			        		<!-- <li><a href="">Payment Against LOI</a></li> -->
			        	</ul>
			        </div>
			      </div>
			    </div>
	    	</div>
	    	
		    <div class="col-md-3">
		    	<div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Water Department</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse2" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a href="" data-toggle="modal" data-target="#new-water">New Water Connection</a></li>
			        		<li><a href="" data-toggle="modal" id="change-ownerLink">Change of Ownership</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#change-con">Change of Connection Size</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#per-dis">Temporary/Permanent Disconnection</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#re-con">Reconnection</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#change-user">Change of Usage</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#plum-license">Plumber License</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#renew-plum-license">Renewal of Plumber License</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#no-due">No Due Certificate</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#water-pay-my-dues">Pay My Dues</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div>
    
		    <div class="col-md-3">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Trade License</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse3" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a href="" data-toggle="modal" data-target="#license-issue">Issuance of License</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#renew-license">Renewal of License</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#duplicate-license">Duplicate License</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#trans-lic-heredity">Transfer of License By Heredity</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#trans-lic-other">Transfer of License By Other Mode</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#lic-cancel">Cancellation of License</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#change-bus-name">Change In Business Name</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#change-bus">Change In Business</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#change-partner-name">Change In Owner/Partner Name</a></li>
			        		<li><a href="" data-toggle="modal" data-target="#incr-part">Increase/Decrease Partner</a></li>

			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div>
	    
		     <div class="col-md-3">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Fire Related</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse4" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a>Provisional Fire NOC</a></li>
							<li><a>Final Fire NOC</a></li>
							<li><a>Renewal of Fire NOC</a></li>
							<li><a>Fire Certificate</a></li>
							<li><a>Issuance of Technical Remarks</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div> 
		    
	    </div>
	    <div class="row form-group">
	     <div class="col-md-3 ">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Marriage Registration</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse5" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a>Marriage Registration And Certificate</a></li>
							<li><a>Marriage Registration Correction</a></li>
							<li><a>Marriage Certificate</a></li>
							<li><a>Re-issue of Marriage Certificate</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div>
		    
		     <div class="col-md-3">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">Online Payment</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse6" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        <form name="noduecertiMT" id="noduecertiMT" style="margin:0px;">
		       			<input type="hidden" name="serviceId-renewalLic" id="serviceId-renewalLic" value="21"/>
		       			<input type="hidden" name="servicePage-renewalLic" id="servicePage-renewalLic" value="renewal-tradelic"/>
		       		</form>
			        	<ul class="list-unstyled">
			        		<li><a href="<c:url value="/property/propertyOnlinePay" />">Property Tax Collection</a></li>
	                    	<li><a href="#" id="paymyduesApply">Water Bill Payment</a></li>
	                    	<li><a href="#" id="renewalLic">License Renewal</a></li>
	                    	<li><a href="">Application Charges</a></li>
	                    	<li><a href="">Payment Against LOI</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div>
		    <div class="col-md-3">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">NOC</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse7" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a href="" data-toggle="modal" data-target="#noc-hording">NOC For Horading/Banner</a></li>
							<li><a href="" data-toggle="modal" data-target="#noc-mandap">NOC For Mandap/Stall</a></li>
							<li><a href="" data-toggle="modal" data-target="#noc-ele">NOC For Electric Meter Installation</a></li>
							<li><a href="" data-toggle="modal" data-target="#noc-road">NOC For Road Digging For Cable Installation</a></li>
							<li><a href="" data-toggle="modal" data-target="#business-pool">Pool/Snooker Indoor Business NOC</a></li>
							<li><a href="" data-toggle="modal" data-target="#noc-fast-food">NOC For Fast Food On wheels/road/At Public Place</a></li>
							<li><a href="" data-toggle="modal" data-target="#business-medical">Medical Business/ Store NOC</a></li>
							<li><a href="" data-toggle="modal" data-target="#business-meat">Meat Shop NOC</a></li>
							<li><a href="" data-toggle="modal" data-target="#business-noc">NOC For Hospital</a></li>
							<li><a href="" data-toggle="modal" data-target="#business-noc-tours">NOC For Tours And Travels</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div> 
		    <div class="col-md-3">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">Tree Census</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse9" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a href="" data-toggle="modal" data-target="#treecenus-appli">Application For Tree Survey</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div> 
	    </div>
	    <div class="row form-group">
	    <div class="col-md-3">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">Social Welfare</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse10" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a>Application For Scheme</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div> 
	    	<div class="col-md-3">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse11">Land And Estate</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse11" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a>Advertising/Hoarding Agreement</a></li>
							<li><a>Advertising/Hoarding Renewal Of Agreement</a></li>
							<li><a>Advertising/Hoarding Cancellation Of Agreement</a></li>
							<li><a>Advertising/Hoarding License Application</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div> 
		    <div class="col-md-3">
			    <div class="panel panel-primary sharp-panel">
			      <div class="panel-heading">
			        <h4 class="panel-title">
			          <a data-toggle="collapse" data-parent="#accordion" href="#collapse12">Tax and Service charge details</a>
			        </h4>
			        <i class="fa fa-angle-up" aria-hidden="true"></i>
			      </div>
			      <div id="collapse12" class="panel-collapse collapse">
			        <div class="panel-body newpad-body">
			        	<ul class="list-unstyled">
			        		<li><a>Tax details</a></li>
			        	</ul>
			        </div>
			      </div>
			    </div>
		    </div> 
	    </div>
    </div>
  </div>
  
  
 
			
      </section>
      
     <!-- PROPERTY -->
     
      <div class="modal fade" id="prop-new-ass" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">New Assessment</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		N.A
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1.Occupancy certificate.</li>
          		<li>2.Death Certificate of deacesd Spouse (wherever Applicable).</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="" >Click Here...</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
          			<button class="btn apply-btn" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
     <div class="modal fade" id="prop-re-ass" role="dialog">
    	<div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Re Assessment(Property)</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		N.A
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li> Property Assessment Data</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		 15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank" >Click Here...</a>
          		<br/>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
          			<button class="btn apply-btn" type="button" >APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
     
     
     
      <div class="modal fade" id="prop-no-due-certificate" role="dialog">
    	<div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">No Due Certificate (Property)</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		N.A
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>Will check dues in system with Property Number</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		3 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/service_pdf/Property_tax_No_Due_Certificate.pdf" target="_blank" >Click Here...</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
          			<button class="btn apply-btn" type="button" id="noduecerPropApply">APPLY</button>
          			<form name="noduecerti" id="noduecerti">
		       			<input type="hidden" name="serviceId-noduecerti" id="serviceId-noduecerti" value="40"/>
		       			<input type="hidden" name="servicePage-noduecerti" id="servicePage-noduecerti" value="nodue-certificate"/>
		       		</form>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  
      <div class="modal fade" id="prop-extract" role="dialog">
    	<div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Extract of Property</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		N.A
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>Will check dues in system with Property Number</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/service_pdf/Property_Extract.pdf" target="_blank" >Click Here...</a>
          		<br/>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
			<form name="extractprop" id="extractprop">
       			<input type="hidden" name="serviceId-extractprop" id="serviceId-extractprop" value="41"/>
       			<input type="hidden" name="servicePage-extractprop" id="servicePage-extractprop" value="property-extract"/>
       		</form>
          			<button class="btn apply-btn" id="extractPropApply" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
   
  
  
     
     <!--  END PROPERTY -->
     
     <!--  TREECENUS -->
      <div class="modal fade" id="treecenus-appli" role="dialog">
    	<div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Application for Survey Request</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		citizen documents are not required.
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		 
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		 
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank" >Click Here...</a>
          		<br/>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi </a>/<a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
          		<form name="treeSurvey" id="treeSurvey">
		         <input type="hidden" name="serviceId-treeSurvey" id="serviceId-treeSurvey" value="47"/>
		         <input type="hidden" name="servicePage-treeSurvey" id="servicePage-treeSurvey" value="tree-survey-application"/>
         		</form>
          			<button class="btn apply-btn" type="button" id="treeSurveyApply">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
      </div>
    </div>
  </div>
     <!--  END TREECENUS -->
     
     <!-- Water Services Modal start by Ritesh -->
       
       <!-- water start-->
 
  <div id="new-water" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">New Water Connection</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          	<ul class="list-unstyled">
          		<li>1.NOC from main owner in case of rented property.</li>
          		</ul>
          		
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1.Property Extract.</li>
          		<li>2.Receipt of last property tax paid.</li>
				<li>3.Occupancy Certificate (The above document will be verify from their records or Available in system then system will fetch the records from related application).</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/service_pdf/New_Water_Connection.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
			 <form name="newwater" id="newwater">
       			<input type="hidden" name="serviceId-newwater" id="serviceId-newwater" value="29"/>
       			<input type="hidden" name="servicePage-newwater" id="servicePage-newwater" value="new-water-connection"/>
       		</form>
          			<button class="btn apply-btn" id="newWaterConnection" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>

  <div id="change-owner" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Change of Ownership</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
	                <li> 1.Property Transfer certificate</li>
	                <li> 2.Last payment of water bill receipt. </li>
	                <li> 3.Property extract (The above document details will be verify from their records or Available in system then system will fetch the records from related application)</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
			 <form name="change-owner-form" id="change-owner-form">
       			<input type="hidden" name="serviceId-change-owner" id="serviceId-change-owner" />
       			<input type="hidden" name="servicePage-change-owner" id="servicePage-change-owner" value="changeofownership"/>
       		</form>
          			<button class="btn apply-btn" id="change-ownerApply" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>

  <div id="change-con" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Change of Connection Size</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
	                <li> 1.Construction/ Completion Certificate.</li>
                	<li> 2.Last payment of water bill receipt and Property Tax paid receipt (The above document details will be verify from their records or Available in system then system will fetch the records from related application)</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
                15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
		
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		<form name="changeConSize" id="changeConSize">
       			<input type="hidden" name="serviceId-changeConSize" id="serviceId-changeConSize" value="31"/>
       			<input type="hidden" name="servicePage-changeConSize" id="servicePage-changeConSize" value="service-change-usageconn"/>
       		</form>

          			<button class="btn apply-btn" id="changeConnectionSize" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>


  <div id="per-dis" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Temporary/Permanent Disconnection</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
	                <li>1.Last Payment Receipt of Water and Property.</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
                7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
		
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		<form name="tnpdisconnection" id="tnpdisconnection">
       			<input type="hidden" name="serviceId-tnpdisconnection" id="serviceId-tnpdisconnection" value="32"/>
       			<input type="hidden" name="servicePage-tnpdisconnection" id="servicePage-tnpdisconnection" value="tempdisconnection" />
       		</form>

          			<button class="btn apply-btn" id="tnpDisconnectionApply" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>


  <div id="re-con" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Reconnection</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
	                <li>1.Last Payment Receipt of Water and Property Temporary Disconnection order details.</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
                15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
		
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
			<form name="noduecerti" id="noduecerti">
			<input type="hidden" name="serviceId-reconnection" id="serviceId-reconnection" value="33"/>
			<input type="hidden" name="servicePage-reconnection" id="servicePage-reconnection" value="service-reconnection"/>
       		</form>

          			<button class="btn apply-btn" id="reconnectionApply" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>

  <div id="change-user" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Change Of Usage</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>.
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
			<li>1.Construction / Completion Certificate.</li>
	                <li>2.Last payment of water bill receipt.</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
                15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
		
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		<form name="changeUsage" id="changeUsage">
       			<input type="hidden" name="serviceId-changeConSize" id="serviceId-changeUsage" value="34"/>
       			<input type="hidden" name="servicePage-changeConSize" id="servicePage-changeUsage" value="service-change-usageconn"/>
       		</form>

          			<button class="btn apply-btn" id="changeofUsage" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>

  <div id="plum-license" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Plumber License</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
			<ul class="list-unstyled">
          		<li>1. Name and Address Proof</li>
		        <li>2. Plumber Certificate</li>
		        <li>3. Aadhar card</li>
		        <li>4. PAN Card</li>
			</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		 <ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
                15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
		
          	</div>
          	
          	
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
					<form name="plumberlic" id="plumberlic">
       			<input type="hidden" name="serviceId-plumberlic" id="serviceId-plumberlic" value="35"/>
       			<input type="hidden" name="servicePage-plumberlic" id="servicePage-plumberlic" value="plumberlicense"/>
       		    </form>
          			<button class="btn apply-btn" id="plumberLicApply" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>

  <div id="renew-plum-license" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Renewal Of Plumber License</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
		 	<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		 <ul class="list-unstyled">
          		<li>1. Plumber details will be fetched from system.</li>
			</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
                15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
		
          	</div>
          	
          	
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
					<form name="renuPlumLicForm" id="renuPlumLicForm">
       			<input type="hidden" name="serviceId-renuPlumLic" id="serviceId-renuPlumLic" value="36"/>
       			<input type="hidden" name="servicePage-renuPlumLic" id="servicePage-renuPlumLic" value="plumberlicenserenew"/>
       		</form>
          			<button class="btn apply-btn" id="renuPlumLic" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
<div id="no-due" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">No Due Certificate</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
		 	<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		 <ul class="list-unstyled">
          		<li>1. Last payment of water bill receipt.</li>
			</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
                15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/service_pdf/Water_Tax_No_Due_Certificate.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		        <form name="noduecertiWT" id="noduecertiWT">
	       			<input type="hidden" name="serviceId-noduecertiWT" id="serviceId-noduecertiWT" value="37"/>
	       			<input type="hidden" name="servicePage-noduecertiWT" id="servicePage-noduecertiWT" value="nodue-certificate"/>
       		    </form> 
        		<button class="btn apply-btn" id="noduecerWaterApply" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="water-pay-my-dues" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Pay My Dues</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		Immediate
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/service_pdf/Pay_My_Dues_for_Water_Tax.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		<form name="paymydues" id="paymydues">
       			<input type="hidden" name="serviceId-paymydues" id="serviceId-paymydues" value="64"/>
       			<input type="hidden" name="servicePage-paymydues" id="servicePage-paymydues" value="water-online-pay"/>
       		</form>
          			<button class="btn apply-btn" id="paymyduesApply" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
   <!-- water End-->
    <!--  NOC -->
    <div id="noc-hording" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">NOC For Horading/Banner</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>Police NOC.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		<form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-nochoardingbanner" id="serviceId-nochoardingbanner" value="49"/>
       			<input type="hidden" name="servicePage-nochoardingbanner" id="servicePage-nochoardingbanner" value="noc"/>
       		</form>
          			<button class="btn apply-btn" id="nochoardingbanner" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="noc-mandap" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">NOC For Mandap/Stall</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>Police NOC.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		 <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocmandapinsatll" id="serviceId-nocmandapinsatll" value="50"/>
       			<input type="hidden" name="servicePage-nocmandapinsatll" id="servicePage-nocmandapinsatll" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="nocmandapinsatll" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="noc-ele" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">NOC for Electric Meter Installation</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>citizen documents are not required.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		  <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocelectricmeter" id="serviceId-nocelectricmeter" value="51"/>
       			<input type="hidden" name="servicePage-nocelectricmeter" id="servicePage-nocelectricmeter" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="nocelectricmeter" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="noc-road" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">NOC For Road Digging For Cable Installation</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>NOC from HPCL.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
				<form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocroadcable" id="serviceId-nocroadcable" value="52"/>
       			<input type="hidden" name="servicePage-nocroadcable" id="servicePage-nocroadcable" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="nocroadcable" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="business-pool" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Business Pool/Snooker Indoor Business NOC</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>citizen documents are not required.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
	  <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocbusinesspool" id="serviceId-nocbusinesspool" value="53"/>
       			<input type="hidden" name="servicePage-nocbusinesspool" id="servicePage-nocbusinesspool" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="nocbusinesspool" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="noc-fast-food" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">NOC For Fast Food On wheels/road/At Public Place</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>citizen documents are not required.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
	   <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocfastfood" id="serviceId-nocfastfood" value="54"/>
       			<input type="hidden" name="servicePage-nocfastfood" id="servicePage-nocfastfood" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="nocfastfood" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="business-medical" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Business Medical Business/ Store NOC</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>citizen documents are not required.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
	     <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocmedical" id="serviceId-nocmedical" value="55"/>
       			<input type="hidden" name="servicePage-nocmedical" id="servicePage-nocmedical" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="nocmedical" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="business-meat" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Business Meat Shop NOC</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>citizen documents are not required.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
	     <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nocmeatshop" id="serviceId-nocmeatshop" value="56"/>
       			<input type="hidden" name="servicePage-nocmeatshop" id="servicePage-nocmeatshop" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="nocmeatshop" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  <div id="business-noc" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Business NOC for Hospital</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>citizen documents are not required.</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
	    <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-nochospital" id="serviceId-nochospital" value="57"/>
       			<input type="hidden" name="servicePage-nochospital" id="servicePage-nochospital" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="nochospital" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  <div id="business-noc-tours" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Business NOC For Tours And Travels</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>Ownership documents(C.S. Map/Extract).</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		7 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
	   <form name="noduecerti" id="noduecerti">
       			
       			<input type="hidden" name="serviceId-noctourtravel" id="serviceId-noctourtravel" value="58"/>
       			<input type="hidden" name="servicePage-noctourtravel" id="servicePage-noctourtravel" value="noc"/>
       			
       		</form>
          			<button class="btn apply-btn" id="noctourtravel" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
  
  
  
    <!--  END NOC -->
    
    <!-- Trade Services Modal Start  -->
       
       <div id="license-issue" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Issuance Of License</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof.</li>
          		<li>2. Lease Deed/ Legal Occupancy.</li>
				<li>3. NOC for License.</li>
				<li>4. Partnership Deed( if partners involved).</li>
				<li>5. NOC from MPCB(In case of storage of chemical substances).</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		15 days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/service_pdf/Apply_for_New_Trade_License.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		<form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-issuanceLic" id="serviceId-issuanceLic" value="20"/>
       			<input type="hidden" name="servicePage-issuanceLic" id="servicePage-issuanceLic" value="newtrade-license"/>
       		</form>
          			<button class="btn apply-btn" id="issuanceLic" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
    <div id="renew-license" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Renewal Of License.</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof.</li>
          		<li>2. Lease Deed/ Legal Occupancy.</li>
				     		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		15 days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/service_pdf/Apply_for_New_Trade_License.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		<form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-renewalLic" id="serviceId-renewalLic" value="21"/>
       			<input type="hidden" name="servicePage-renewalLic" id="servicePage-renewalLic" value="renewal-tradelic"/>
       		</form>
      	<button class="btn apply-btn" id="renewalLicBtn" type="button">APPLY</button>
       		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
   <div id="duplicate-license" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Duplicate License</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		15 days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		 <form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-duplicateLic" id="serviceId-duplicateLic" value="22"/>
       			<input type="hidden" name="servicePage-duplicateLic" id="servicePage-duplicateLic" value="service-duplicate-license"/>
       		</form>
          			<button class="btn apply-btn" id="duplicateLic" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
   
   <div id="trans-lic-heredity" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Transfer License By Heredity</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof of Transferee.</li>
				<li>2. NOC from partners (if partners involved).</li>
				<li>3. Lease Deed/ Legal Occupancy.</li>
				<li>4. NOC from other family member (If Existing owner is dead or Hereditary Transfer).</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		15 days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		            <form name="noduecerti" id="noduecerti">
       			      <input type="hidden" name="serviceId-transfer_heredity" id="serviceId-transfer_heredity" value="23"/>
       			      <input type="hidden" name="servicePage-transfer_heredity" id="servicePage-transfer_heredity" value="transfer-of-license"/>
       		        </form>
          			<button class="btn apply-btn" id="transfer-heredity-id" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
   
   <div id="trans-lic-other" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Transfer License By Other</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof of Transferee.</li>
				<li>2. NOC from partners (if partners involved).</li>
				<li>3. Lease Deed/ Legal Occupancy.</li>
				<li>4. NOC from other family member.</li>
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		15 days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		             <form name="noduecerti" id="noduecerti">
       			      <input type="hidden" name="serviceId-transfer_other" id="serviceId-transfer_other" value="65"/>
       			      <input type="hidden" name="servicePage-transfer_other" id="servicePage-transfer_other" value="transfer-of-license"/>
       		        </form>
          			<button class="btn apply-btn" id="transfer-by-other-id" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
   
   <div id="lic-cancel" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Cancellation Of License</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof of Owner/Partners.</li>
				<li>2. NOC from partners (if partners involved).</li>
				<li>3. Original License.</li>
			</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          		Will differ ULB to ULB
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		
          			<button class="btn apply-btn" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
    
   <div id="change-bus-name" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Change In Business Name</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof.</li>
				<li>2. NOC from partners (if partners involved).</li>
			</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          	15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
		
          		<div class="col-md-2 col-md-offset-5">
		<form name="noduecerti" id="noduecerti">
       			<input type="hidden" name="serviceId-buisnessLic" id="serviceId-buisnessLic" value="25"/>
       			<input type="hidden" name="servicePage-buisnessLic" id="servicePage-buisnessLic" value="change-name-of-business"/>
       		</form>
          		<button class="btn apply-btn" type="button" id="buisnessLic">APPLY</button>	
				</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
   
   
   <div id="change-bus" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Change In Business</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof.</li>
				<li>2. Lease Deed/ Legal Occupancy.</li>
				<li>3. NOC for License.</li>
				<li>4. Partnership Deed( if partners involved).</li>
				<li>5. NOC from MPCB(In case of storage of chemical substances)</li>
			</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          	15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		
          			<button class="btn apply-btn" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
   
   
   <div id="change-partner-name" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Change In Owner/Partner Name</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof of Owner/Partners.</li>
				<li>2. Lease Deed/ Legal Occupancy.</li>
				<li>3. Partnership Deed( if partners involved).</li>
			</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          	15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		
          			<button class="btn apply-btn" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
   
   
   <div id="incr-part" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content flat-modal">
        <div class="modal-body">
          <div class="service-header">Increase/Decrease Partner</div>
          <i class="fa fa-times-circle" aria-hidden="true" data-dismiss="modal"></i>
          <div class="modal-structure">
          	<div class="form-group">
          		<div class="head-cont">
          		REQUIRED DOCUMENTS FROM CITIZEN
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>1. ID Proof of New partners.</li>
				<li>2. Lease Deed/ Legal Occupancy.</li>
				<li>3. NOC from partners.</li>
				<li>3. Partner letter in case partner name is removed.</li>
			</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		DOCUMENTS VERIFIED BY ULB
          	</div>
          	<div class="below-head-cont">
          		<ul class="list-unstyled">
          		<li>N.A</li>
          		
          		</ul>
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		TIME REQUIRED TO DELIVER SERVICE
          	</div>
          	<div class="below-head-cont">
          	15 Days
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		CHARGES
          	</div>
          	<div class="below-head-cont">
          		ULB wise charges applicable
          	</div>
          	</div>
          	<div class="form-group">
          		<div class="head-cont">
          		For more information on process/procedure <a href="pdf/Procedure.pdf" target="_blank">Click Here..</a> 
          		<br>
          		Ease of Doing Business GR Click Here to Download <a href="pdf/EODB_GR_MAR.pdf" target="_blank">Marathi</a> / <a href="pdf/EODB_GR_MAR.pdf" target="_blank">English</a>
          	</div>
          	
          	</div>
          	<div class="row form-group">
          		<div class="col-md-2 col-md-offset-5">
		             	<form name="noduecerti" id="noduecerti">
				       			<input type="hidden" name="serviceId-inc-dec-partners" id="serviceId-inc-dec-partners" value="28"/>
				       			<input type="hidden" name="servicePage-inc-dec-partners" id="servicePage-inc-dec-partners" value="change-number-of-partners"/>
       		          </form>
          			<button class="btn apply-btn" id="increase-decrease-partner" type="button">APPLY</button>
          		</div>
          	</div>
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
       
       <!-- Trade Services Modal End by Ritesh -->
  
 
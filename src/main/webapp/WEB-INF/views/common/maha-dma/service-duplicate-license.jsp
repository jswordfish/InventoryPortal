<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor" prefix="compress" %>

<compress:html >
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Government of Maharashtra</title>
    <link rel="icon" href="images/favicon.ico">
    <jsp:include page="../homeheader.jsp" />
  </head>
  <body>
    <jsp:include page="../citizenHeaderTop.jsp" /> 

    <div class="prop-section">
      <div class="container">
        <div class="form-title">
          <h1><spring:message code="label.document.serviceduplicate.title" /></h1> 
          <span class="home-icon"><i class="fa fa-home"></i></span>
        </div><!-- form-title -->
        
        <div>
          
          
          <div class="ulb-section">
            <form:form action="" method="POST" modelAttribute="applicationBean" id="frmData">
              <div class="toggle-header" data-target="#application-details">
	              <h2 class="StepTitle">
	                <spring:message code="label.document.serviceduplicate.applicantdet"/>
	                
	                <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
	              </h2>
              </div>
			  <div id="application-details">
	              <div class="row" >
	                <div class="form-group">
	                  <label for="ulbIdDesc" class="col-md-2 col-sm-12 col-xs-12" >
	                    <spring:message code="label.document.serviceduplicate.ulbname" />
	                  </label>
	                  <div class="col-md-6 col-sm-12 col-xs-12">
	                      <form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
	                      <form:hidden path="" id="servDeschide" value="${servDeschide }"/>
	                        
	                      <form:select class=" form-control" path="ulbIdDesc" id="ulbIdDesc">
	                        <form:option value=""><spring:message code="label.document.serviceduplicate.selulb" /></form:option>
	                      </form:select>
	                  </div>
	                </div>
	              </div>

	              <div class="row">
	                  <div class="form-group">
	                    <label for="setServiceId" class="col-md-2 col-sm-12 col-xs-12">
	                      <spring:message code="label.document.serviceduplicate.sername" />
	                    </label>
	                    <div class="col-md-6 col-sm-12 col-xs-12">
	                      <form:select class=" form-control" path="setServiceId" id="setServiceId" readonly="true" >
	                        <form:option value="" readonly="true" ><spring:message code="label.document.serviceduplicate.selsername"/></form:option>
	                      </form:select>
	                  </div>
	                </div>
	              </div>
	              
	              <jsp:include page="applicant-details.jsp" />
              </div><!-- #application-details -->
          </form:form>

            <form:form modelAttribute="ttlsLicense" method="POST">
            	<div class="toggle-header" data-target="#lic-details">
					<h2 class="StepTitle">
						<spring:message code="label.document.serviceduplicate.licensedet"/> 
						<i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
					</h2>
				</div>
				
				<div id="lic-details">
				
	              <jsp:include page="../../servicewise/tradelic-duplicate.jsp" />
	              
	              <div class="row">
	              	<div class="form-group" id="licenseDetail">
		                <label class="control-label col-md-2 col-sm-2 col-xs-12">
		                    <spring:message code="label.document.serviceduplicate.licenseowner" />:
		                </label>
		                <div class="col-md-3 col-sm-12 col-xs-12">
		                  <input type="hidden" id="licenseNo" value="${licNo }">
		                  <form:input type="text" id="firstName" path="ttTlsLicHold.firstNameEn" class="form-control" disabled="true"/>
		                </div>
		                <div class="col-md-3 col-sm-3 col-xs-12">
		                    <form:input type="text" id="middleName" path="ttTlsLicHold.middleNameEn" class="form-control" disabled="true"/>
		                </div>
		                <div class="col-md-4 col-sm-4 col-xs-12">
		                      <form:input type="text" id="lastName" path="ttTlsLicHold.lastNameEn" class="form-control" disabled="true"/>
		                </div>
		            </div>
	              </div>
	                    
		            <%--  
		              <div class="form-group">
		                <label class="control-label col-md-2 col-sm-2 col-xs-12">
		                    <spring:message code="label.document.serviceduplicate.license_fromdate"/>:
		                </label>
		                <div class="col-md-4 col-sm-4 col-xs-12">
		                  <form:input type="text" id="" path="tTlsLicenseHolder.lastNameEn" class="form-control" required="required" disabled/>
		                </div>
		                  
		                <label class="control-label col-md-2 col-sm-2 col-xs-12">
		                    <spring:message code="label.document.serviceduplicate.license_todate"/>:
		                </label>
		                <div class="col-md-4 col-sm-4 col-xs-12">
		                  <form:input type="text" id="" path="tTlsLicenseHolder.lastNameEn" class="form-control" required="required" disabled/>
		                </div>
		              </div> 
		            --%>
                        
		            <!--  
		              <div class="form-group">
		                <label class="control-label col-md-2 col-sm-2 col-xs-12">Establishment Type:
		                  </label>
		                <div class="col-md-4 col-sm-4 col-xs-12">
		                  <input type="text" id="establishType" class="form-control" required="required" disabled>
		                </div>
		                
		                <label class="control-label col-md-2 col-sm-2 col-xs-12">Establishment Name:
		                  </label>
		                <div class="col-md-4 col-sm-4 col-xs-12">
		                  <input type="text" id="" class="form-control" required="required" disabled>
		                </div>
		                
		              </div> 
		            -->
                        
		            <div class="row">
		            	<div class="form-group">
			              <label class="control-label col-md-2 col-sm-12 col-xs-12">
			                <spring:message code="label.document.serviceduplicate.businessname"/>:
			              </label>
			              <div class="col-md-4 col-sm-12 col-xs-12">
			                <form:input type="text" id="businessName" path="businessName" class="form-control" required="required" disabled="true"/>
			              </div>
			                
			              <label class="control-label col-md-2 col-sm-12 col-xs-12">
			                <spring:message code="label.document.serviceduplicate.ownertype"/>:
			              </label>
			              <div class="col-md-4 col-sm-12 col-xs-12">
			                  <form:input type="text" id="ownershipType" class="form-control" path="ownershipType" required="required" disabled="true"/>
			              </div>
			            </div>
		            </div>
                            
		            <div class="row">
		              <div class="form-group">
		              	<label class="control-label col-md-2 col-sm-12 col-xs-12">
			                <spring:message code="label.document.serviceduplicate.licensetype"/>:
			              </label>
			              <div class="col-md-4 col-sm-12 col-xs-12">
			                <form:input type="text" id="licType" class="form-control" path="licenType" required="required" disabled="true"/>
			              </div>
			                
			              <label class="control-label col-md-2 col-sm-12 col-xs-12">
			                <spring:message code="label.document.serviceduplicate.licensesubtype"/>:
			              </label>
			              <div class="col-md-4 col-sm-4 col-xs-12">
			                  <form:input type="text" id="licSubType" class="form-control" path="licSubType" required="required" disabled="true"/>
			               </div>
		              </div>
		            </div>
                                
	            <div class="row">
	            	<div class="form-group">
		              <label for="dues" class="col-md-2 col-sm-12 col-xs-12">
		                <spring:message code="label.document.serviceduplicate.dues" />:
		              </label>
		              <div class="col-md-4 col-sm-12 col-xs-12">
		                <input type="text" class=" form-control" name="dues" id="dues" value="0">
		              </div>
		              
		              <label for="noOfCopies" class="col-md-2 col-sm-12 col-xs-12">
		                <spring:message code="label.document.serviceduplicate.nocopy" />:
		              </label>
		              <div class="col-md-4 col-sm-12 col-xs-12">
		                <input type="text" class=" form-control" name="noOfCopies" id="noOfCopies" value="">
		              </div>
		            </div>
	            </div>
	          </div>
            
            <div class="toggle-header" data-target="#charges-details">
              <h2 class="StepTitle">
                <spring:message code="label.document.serviceduplicate.charges"/>
                
                <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
              </h2>
             </div>
			<div id="charges-details">
				<input type="hidden" id="ulbid" />
	            <div class="row">
	            	<div class="form-group">
		              <label class="control-label col-md-2 col-sm-12 col-xs-12">
		                <spring:message code="label.document.serviceduplicate.charges"/>:
		              </label>
		              <div class="col-md-4 col-sm-12 col-xs-12">
		                <input type="text" id="charges" class="form-control" required="required">
		              </div>
		              
		              <div class="col-md-4 col-sm-12 col-xs-12">
		                <button type="button" id="payCharges" class="btn"><spring:message code="label.document.serviceduplicate.pay" /></button>
		              </div>
		            </div>
	            </div>
			</div>
          </form:form>
        </div>
      </div>
    </div>              
  </div>              

  <jsp:include page="jsFooter.jsp" />
  <jsp:include page="../citizenFooter.jsp" /> 

  <c:url var='sendNoDuePayProperty' value='/common/application/save'/>
  <c:url var='jsonLicenseUrl' value='/duplicate/knowLicense' />
  <c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
  <c:url var='jsonWaterUrl' value='/water/rest/search/knowwater' />
  <c:url var='jsonBillDetailUrl' value='/water/rest/search/waterPayDue' />
  <c:url var='sendForPay' value='/water/send/waterPayMoney' />
  <c:set var='sessionId' value='${pageContext.session.id}' />
  <c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
  <c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  
  <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
  <c:url var="jsonSearchUrl" value="/duplicate/search"/>
  <c:url var="jsonChargesUrl" value="/duplicate/charge"/>
  <c:url var="paymentUrl" value="/duplicate/PayCharge"/>
  <c:url var="searchLicenDet" value="/duplicate/viewSearch" />
  
  <script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
  <%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
  <script>
  !function(e){var t=function(t,n){this.$element=e(t),this.type=this.$element.data("uploadtype")||(this.$element.find(".thumbnail").length>0?"image":"file"),this.$input=this.$element.find(":file");if(this.$input.length===0)return;this.name=this.$input.attr("name")||n.name,this.$hidden=this.$element.find('input[type=hidden][name="'+this.name+'"]'),this.$hidden.length===0&&(this.$hidden=e('<input type="hidden" />'),this.$element.prepend(this.$hidden)),this.$preview=this.$element.find(".fileupload-preview");var r=this.$preview.css("height");this.$preview.css("display")!="inline"&&r!="0px"&&r!="none"&&this.$preview.css("line-height",r),this.original={exists:this.$element.hasClass("fileupload-exists"),preview:this.$preview.html(),hiddenVal:this.$hidden.val()},this.$remove=this.$element.find('[data-dismiss="fileupload"]'),this.$element.find('[data-trigger="fileupload"]').on("click.fileupload",e.proxy(this.trigger,this)),this.listen()};t.prototype={listen:function(){this.$input.on("change.fileupload",e.proxy(this.change,this)),e(this.$input[0].form).on("reset.fileupload",e.proxy(this.reset,this)),this.$remove&&this.$remove.on("click.fileupload",e.proxy(this.clear,this))},change:function(e,t){if(t==="clear")return;var n=e.target.files!==undefined?e.target.files[0]:e.target.value?{name:e.target.value.replace(/^.+\\/,"")}:null;if(!n){this.clear();return}this.$hidden.val(""),this.$hidden.attr("name",""),this.$input.attr("name",this.name);if(this.type==="image"&&this.$preview.length>0&&(typeof n.type!="undefined"?n.type.match("image.*"):n.name.match(/\.(gif|png|jpe?g)$/i))&&typeof FileReader!="undefined"){var r=new FileReader,i=this.$preview,s=this.$element;r.onload=function(e){i.html('<img src="'+e.target.result+'" '+(i.css("max-height")!="none"?'style="max-height: '+i.css("max-height")+';"':"")+" />"),s.addClass("fileupload-exists").removeClass("fileupload-new")},r.readAsDataURL(n)}else this.$preview.text(n.name),this.$element.addClass("fileupload-exists").removeClass("fileupload-new")},clear:function(e){this.$hidden.val(""),this.$hidden.attr("name",this.name),this.$input.attr("name","");if(navigator.userAgent.match(/msie/i)){var t=this.$input.clone(!0);this.$input.after(t),this.$input.remove(),this.$input=t}else this.$input.val("");this.$preview.html(""),this.$element.addClass("fileupload-new").removeClass("fileupload-exists"),e&&(this.$input.trigger("change",["clear"]),e.preventDefault())},reset:function(e){this.clear(),this.$hidden.val(this.original.hiddenVal),this.$preview.html(this.original.preview),this.original.exists?this.$element.addClass("fileupload-exists").removeClass("fileupload-new"):this.$element.addClass("fileupload-new").removeClass("fileupload-exists")},trigger:function(e){this.$input.trigger("click"),e.preventDefault()}},e.fn.fileupload=function(n){return this.each(function(){var r=e(this),i=r.data("fileupload");i||r.data("fileupload",i=new t(this,n)),typeof n=="string"&&i[n]()})},e.fn.fileupload.Constructor=t,e(document).on("click.fileupload.data-api",'[data-provides="fileupload"]',function(t){var n=e(this);if(n.data("fileupload"))return;n.fileupload(n.data());var r=e(t.target).closest('[data-dismiss="fileupload"],[data-trigger="fileupload"]');r.length>0&&(r.trigger("click.fileupload"),t.preventDefault())})}(window.jQuery)
  var searchLicenDet = "${searchLicenDet}";
  getULBListIDnDesc("${jsonULBListUrl}","ulbIdDesc");
  getServiceList("${jsonServiceListUrl}","setServiceId");
  
  $("#payCharges").click(function() {
      payProperty();
  });

  $(function() {
	  $(document).on('click', '.toggle-header', function(e){
		$content = $($(this).data('target'));
	    
	    if(!$content.is(':visible')){
	      $content.slideDown('slow');
	      $(this).find('i.toggle-icon span').html('keyboard_arrow_up')
	    }
	    else{
	    	$content.slideUp('slow');
	      $(this).find('i.toggle-icon span').html('keyboard_arrow_down')
	    }
	  });
	  
        $('#licSearch').click(function() {
          var licNo=document.getElementById("licNO").value;
          var ulbId = $("#ulbIdDesc").val().split("|");
          console.log("ulbId "+ulbId[0]);
          if(!!licNo){
              
          $.ajax({
            type : "GET",
            url : "${jsonSearchUrl}",
            //contentType : "application/json",
            dataType : 'json',
            //data: finalArry,
            // async: false,
            data : "licNO="+licNo+"&ulbId="+ulbId[0],
            async : false,
            success : function(data) {
              if(!!data){
                var row = 1;
                dataSet = [];
                $('#businessName').val(data.businessName);
                $('#firstName').val(data.ttTlsLicHold.firstNameEn);
                $('#middleName').val(data.ttTlsLicHold.middleNameEn);
                $('#lastName').val(data.ttTlsLicHold.lastNameEn);
                $('#ownershipType').val(data.ownershipType);
                $('#licType').val(data.licenType);
                $('#licSubType').val(data.licSubType);
              }
              else{
                alert("Please fill Proper data");
              }
            }
          });
        }
        else
          {
          alert("Please fill License No");
          $('#licNO').focus().select().css('border-color', 'red');
          }
        });
  });
        
  $('#noOfCopies').blur(function() {
        
        var noOfCopies=document.getElementById("noOfCopies").value;
        
        var ulbId = $("#ulbIdDesc").val().split("|");
        console.log("ulbId "+ulbId[0]);
        var licNo=document.getElementById("licNO").value;
        $.ajax({
          type : "GET",
          url : "${jsonChargesUrl}",
          //contentType : "application/json",
          dataType : 'json',
          //data: finalArry,
          // async: false,
          data : "noCopy="+noOfCopies+"&licNO="+licNo+"&ulbId="+ulbId[0],
          async : false,
          success : function(data){
            var row = 1;
            dataSet = [];
            $('#charges').val(data);
          }
        });
      });
  
    function payProperty(){
        var datavar = $("#frmData").serializeObject();
        console.log(" >>> datavar <<< "+datavar);
        var json_string = JSON.stringify(datavar);
        console.log(" >>> json_string <<< "+json_string);
        var datavar = removeEmptyValueFromJSON(json_string);
        console.log(" >>> datavar <<< "+datavar);
        
        $.ajax({
          type : "POST",
          url : "${sendNoDuePayProperty}",
          contentType: "application/json; charset=UTF-8",
          dataType : 'json',
          data : datavar,
          async : false,
          success : function(data2){
            console.log("VAL: "+data2.serviceId);        
            var row = 1;
            dataSet = [];
            /*  if(parseInt(data2.totalRows) > 0)
          {*/
            var newArray = [];
            var totCol = 0;
            
              
              var datavar2 = {"ulbId":data2.ulbId,"serviceId":data2.serviceId,"finalAmount":$("#charges").val(),"mobNo":data2.applicantMobile,"noOfCopies":$("#noOfCopies").val(),"licNo":$("#licNO").val()};
              payNow(datavar2);
            //success
            }
      });
    }
  
  function payNow(datavar2){
    console.log(datavar2);
    $.ajax({
      type : "POST",
      url : "${paymentUrl}",
      contentType: "application/json; charset=UTF-8",
      data : JSON.stringify(datavar2),
      async : false,
      cache: false,
      success : function(data)
      {
        //console.log("**** OHHH ");
        //console.log("data"+data);
        //window.location = data;
      
        window.location = data;
        
      } ,
      error : function(request, status, error) {
        //console.log("error "+request);
        // console.log("error "+error);
      }
  });
      
  }
  function removeEmptyValueFromJSON(reqArr){
      for(var key in reqArr) {
        if (reqArr[key] == undefined || reqArr[key] == '') {
        delete reqArr[key];
      }
      for(var inKey in reqArr[key]) {
        if (reqArr[key][inKey] == undefined || reqArr[key][inKey] == '') {
         delete reqArr[key][inKey];
        }
      }
    }
   return reqArr;
  }

  $("#searchLicenDet").click(function() {
    if($('#ulbIdDesc').val() != 0){
      $('#frmData').attr('action', searchLicenDet);
      $("#frmData").submit();
    }
    else{
    $('#ulbIdDesc').focus().select().css('border-color', 'red');
    alert("Please Select ULB Name");
    }
  });
  $(document).ready(function(){
  
    $("#licNO").val($("#licenseNo").val());
    $("#setServiceId").val($("#servDeschide").val());
    if($("#ulbIdDeschide").val()!= "0"){
      $("#ulbIdDesc").val($("#ulbIdDeschide").val());
    }
  });
  </script>
</body>
</html>
</compress:html>
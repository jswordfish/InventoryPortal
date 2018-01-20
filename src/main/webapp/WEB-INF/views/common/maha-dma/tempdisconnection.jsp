<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
    <jsp:include page="../homeheader.jsp" />
  </head>
  <body>
    <jsp:include page="../citizenHeaderTop.jsp" />

    <div class="prop-section">
      <div class="container">
        <div class="form-title">
          <h1>
            <spring:message code="label.document.tempdis.title" />
          </h1> <span class="home-icon"><i class="fa fa-home"></i></span>
        </div><!-- form-title-->
        
        <div class="ulb-section">
          <form:form action="" method="POST" modelAttribute="applicationBean" id="frmData">
                      <form:hidden path="" id="waterConnectionId" name="connectionId"/>
                      <form:hidden path="" id="taxId" name="taxId"/>
                      <form:hidden path="" id="taxDetId" name="taxDetId"/>
                      <form:hidden path="" id="srnId" name="srnId"/>
                      <form:hidden path="" id="emailId" value=""/>  
                      
                      <div class="toggle-header" data-target="#application-details">
                        <h2 class="StepTitle">
                          <spring:message code="label.document.serviceduplicate.applicantdet" /> 
                          <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
                        </h2>
                      </div><!-- toggle-header -->

                      <div id="application-details">
                        <div class="row">
                          <div class="form-group">
                            <label for="ulbIdDesc" class="col-md-2 col-sm-12 col-xs-12">
                              <spring:message code="label.document.serviceduplicate.ulbname" />
                            </label>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide }"/>
                                <%-- <form:hidden path="" id="servDeschide" value="${servDeschide }"/> --%>
                                <form:hidden path="setServiceId" id="servDeschide" value="${servDeschide }"/>
                                <form:select class=" form-control" path="ulbIdDesc" id="ulbIdDesc">
                                  <form:option value=""><spring:message code="label.document.serviceduplicate.selulb" /></form:option>
                                </form:select>
                            </div>
                          </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                              <label class="col-md-2 col-sm-12 col-xs-12" for="setServiceId">
                                <spring:message code="label.document.serviceduplicate.sername" />
                              </label>
                              <div class="col-md-6 col-sm-12 col-xs-12">
                                <form:select class=" form-control" path="" id="setServiceId" disabled="true" >
                                  <form:option value="" readonly="true" ><spring:message code="label.document.serviceduplicate.selsername" /></form:option>
                                </form:select>
                              </div>
                            </div>
                        </div>

                          <jsp:include page="applicant-details.jsp" />
                        </div>
                        
                        <!-- ---------------------------------------- -->
                        
                        <div class="row">
                          <div class="form-group">
                            <label for="waterConnNo" class="col-md-2 col-sm-12 col-xs-12">
                              <spring:message code="label.document.serviceduplicate.connectiono" />:
                            </label>
                            <div class="col-md-4 col-sm-12 col-xs-12">
                                <div class="input-group">
                                  <form:input path="connectionNo" id="waterConnNo"  class=" form-control" />
                                  <span class="input-group-addon">
                                    <a href="#" id="searchWaterDet"><i class="fa fa-question-circle" style="font-size:20px"></i></a>
                                  </span>
                                </div>
                            </div>

                            <div class="col-md-6 col-sm-12 col-xs-12">
                              <input type="button" class="btn btn-primary" value="Search" id="waterSearch"/>
                            </div>
                          </div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                               <label for="payDueAmt" class="col-md-2 col-sm-12 col-xs-12">
                                  <spring:message code="label.document.serviceduplicate.dues" />:
                                </label>
                                <div class="col-md-4 col-sm-12 col-xs-12">
                                  <form:input path="payDueAmt" id="payDueAmt" name="payDueAmt" readonly="true"  class=" form-control"/>
                                </div>
                                
                                <div class="col-md-2 col-sm-12 col-xs-12">
                                  <input type="button" class="btn btn-success" id="paySubmit" value="Pay">
                                </div>
                            </div>
                        </div>
                            
                            
                            <div id="disconnectionHide">
                              <div class="toggle-header" data-target="#connection-details">
                                <h2 class="StepTitle">
                                  <spring:message code="label.document.serviceduplicate.connection-title"/> 
                                  <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
                                </h2>
                              </div>

                              <%-- <form:form  method="POST" modelAttribute="tempNpermDisc" id="frmDisconData"> --%>

                                <div id="connection-details">
                                  <div class="row">
                                      <div class="form-group">
                                        <label for="name" class="col-md-2 col-sm-12 col-xs-12">
                                          <spring:message code="label.document.serviceduplicate.disconnectiontype" />:
                                        </label>
                                        <div class="col-md-8 col-sm-12 col-xs-12">
                                        
                                        <label class="radio-inline">
                                          <input type="radio" name="optradio" id="tempdis" style="width:auto" checked="checked">
                                          <spring:message code="label.document.tempdis.temparory" />
                                        </label>
                                        <label class="radio-inline">
                                          <input type="radio" name="optradio" id="permenantdis" style="width:auto">
                                          <spring:message code="label.document.tempdis.permanent" />
                                        </label>
                                      </div>
                                    </div>
                                  </div>
                                  
                                  <div class="row">
                                      <div class="col-md-6 col-sm-12 col-xs-12">
                                       	<div class="form-input-group clearfix">
                                       		<label class="col-md-4 col-sm-12 col-xs-12">
	                                          <spring:message code="label.document.tempdis.temparorydis" />
	                                        </label>
	                                        <div class="col-md-8 col-sm-12 col-xs-12">
	                                          <div class='input-group date' id='tempFromDateDiv'>
	                                            <input  type="text"  id="tempFromDate" name="tempFromDate" class="form-control" />
	                                            <span class="input-group-addon">
	                                              <span class="glyphicon glyphicon-calendar"></span>
	                                            </span>
	                                          </div>
	                                        </div>
                                       	</div>
                                       </div>
                                       <div class="col-md-6 col-sm-12 col-xs-12" id="permenanthide" style="display:none">
                                       	<div class="form-input-group clearfix">
	                                        <label class="col-md-4 col-sm-12 col-xs-12">
	                                          <spring:message code="label.document.tempdis.temparorydisto" />
	                                        </label>
	                                        <div class="col-md-8 col-sm-12 col-xs-12">
	                                          <div class='input-group date' id='tempToDateDiv'>
	                                            <input  type="text"  id="tempToDate" name="tempToDate" class="form-control" />
	                                            <span class="input-group-addon">
	                                              <span class="glyphicon glyphicon-calendar"></span>
	                                            </span>
	                                          </div>
	                                        </div>
	                                     </div>
                                       </div>
                                  </div>
                                  
                                  <div class="row">
                                    <div class="form-group">
                                    	<label for="remark" class="col-md-2 col-sm-12 col-xs-12">
	                                        <spring:message code="label.document.tempdis.reasondis" />
	                                      </label>
	                                    <div class="col-md-3 col-sm-12 col-xs-12">
	                                      <div><input type="text" id="remark" name="remark" class="form-control">  </div>
	                                    </div>
                                    </div>
                                  </div><!-- row -->
                                </div>
                              </div>
                            </form:form>
                            
                            <div id="uploadHide">
                              <div class="toggle-header" data-target="#upload-div">
                                <h2 class="StepTitle"><spring:message code="label.document.serviceduplicate.uploaddoc"/>
                                  <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
                                </h2>
                              </div>

                              <div id="upload-div">
                                  <c:url var='jsonCommonChecklistUrl' value='/common/service/saveChecklist' />
                                  <form:form modelAttribute="filesBean"  method="post" action="${jsonCommonChecklistUrl}" enctype="multipart/form-data"  id="checkListForm">
                                    <form:hidden path="returnURL" id="returnURL"/>
                                    <jsp:include page="checklist.jsp" />
                                  </form:form>
                                </div>
                              </div>

                              <div class="toggle-header" data-target="#charges-details">
                                <h2 class="StepTitle">
                                  <spring:message code="label.document.serviceduplicate.charge" /> 
                                  <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
                                </h2>
                              </div>

                              <div id="charges-details">
                                <div id="chargeDiv">
                                  <div class="row">
                                    <div class="form-group">
                                        <label for="name" class="col-md-2 col-sm-12 col-xs-12">
                                          <spring:message code="label.document.nodue.charge" />:
                                        </label>
                                        <div class="col-md-4 col-sm-12 col-xs-12">
                                            <%-- <form:input path="payAmt" id="payAmt" class=" form-control" readonly="true"  />  --%>
                                            <input type="text" name="payAmt" id="payAmt" class=" form-control" readonly="readonly"  />
                                        </div>
                                        <div class="col-md-2 col-sm-12 col-xs-12">
                                          <input type="button" class="btn btn-success" id="payCharges" value="Pay">
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div><!-- #charges-details -->

                                <div class="actionbar actionBar">
                                  <button type="button" id="applicantSave" class="btn btn-primary"><spring:message code="label.btn.save" /></button>
                                  <button type="reset" class="btn"><spring:message code="label.btn.reset" /></button>
                                  <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.btn.close" /></button>
                                </div>
                              </div>
                              
                              <!-- ---------------------------------------- -->
                            </div>
                          </div>

                          <jsp:include page="jsFooter.jsp" />
                          <jsp:include page="../citizenFooter.jsp" />
                          
                          <%-- <c:url var='jsonLicenseUrl' value='/duplicate/knowLicense' />
                          <c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
                          <c:url var='jsonWaterUrl' value='/water/rest/search/knowwater' />
                          <c:url var='jsonBillDetailUrl' value='/water/rest/search/waterPayDue' />
                          <c:url var='sendForPay' value='/water/send/waterPayMoney' />  --%>
                          <c:set var='sessionId' value='${pageContext.session.id}' />
                          <c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
                          <c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
                          <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
                          <c:url var="jsonSearchUrl" value="/duplicate/search"/>
                          <c:url var="jsonChargesUrl" value="/duplicate/charge"/>
                          <c:url var="paymentUrl" value="/duplicate/PayCharge"/>
                          <c:url var="searchLicenDet" value="/duplicate/viewSearch" />
                          
                          <script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
                          <script src="<c:url value="/js/upload.js"/>"></script>
                          <!-- ------------- New -------------------------- -->
                          <%-- <form:form id="ackFrm" name="ackFrm" modelAttribute="ackFrm">
                            <form:hidden id="srnIdAck" path="srn_id"/>
                            </form:form> --%>
                            <c:url var='searchWaterDet' value='/water/view/search' />
                            <c:url var='jsonsearchWaterUrl' value='/water/rest/search/waterPayNoDue' />
                            <c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
                            <c:url var='jsonpaymentgateway' value='/water/rest/send/waterPaymentGateway' />
                            <c:url var='sendToChargePay' value='/water/rest/application/save'/>
                            <c:url var='sendNoDuePayProperty' value='/common/application/save'/>
                            <c:url var='waterPayMoney' value='/water/rest/send/waterPayMoneyForNoDue' />
                            <c:url var='CheckDiscForWater' value='/water/rest/waterDiscStatus' />
                            <c:url var='saveApplicantDataForNoCharge' value='/water/rest/saveApplicant' />
                            <c:url var='saveTempNPermServiceData' value='/water/rest/saveTnPServiceData' />
                            <c:url var='ackUrl' value='/water/view/acknowledgment' />
                            <script>
                            var searchWaterDet = "${searchWaterDet}";
                            var jsonsearchWaterUrl = "${jsonsearchWaterUrl}";
                            var jsonsearchWaterChargesUrl = "${jsonsearchWaterChargesUrl}";
                            var sendNoDuePayProperty="${sendNoDuePayProperty}";
                            var jsonpaymentgateway = "${jsonpaymentgateway}";
                            var waterPayMoney = "${waterPayMoney}";
                            var CheckDiscForWater = "${CheckDiscForWater}";
                            var saveApplicantDataForNoCharge = "${saveApplicantDataForNoCharge}";
                            var saveTempNPermServiceData = "${saveTempNPermServiceData}";
                            var ackUrl = "${ackUrl}";
                            var sendToChargePay = "${sendToChargePay}";
                            </script>
                            <script>
                            !function(e){var t=function(t,n){this.$element=e(t),this.type=this.$element.data("uploadtype")||(this.$element.find(".thumbnail").length>0?"image":"file"),this.$input=this.$element.find(":file");if(this.$input.length===0)return;this.name=this.$input.attr("name")||n.name,this.$hidden=this.$element.find('input[type=hidden][name="'+this.name+'"]'),this.$hidden.length===0&&(this.$hidden=e('<input type="hidden" />'),this.$element.prepend(this.$hidden)),this.$preview=this.$element.find(".fileupload-preview");var r=this.$preview.css("height");this.$preview.css("display")!="inline"&&r!="0px"&&r!="none"&&this.$preview.css("line-height",r),this.original={exists:this.$element.hasClass("fileupload-exists"),preview:this.$preview.html(),hiddenVal:this.$hidden.val()},this.$remove=this.$element.find('[data-dismiss="fileupload"]'),this.$element.find('[data-trigger="fileupload"]').on("click.fileupload",e.proxy(this.trigger,this)),this.listen()};t.prototype={listen:function(){this.$input.on("change.fileupload",e.proxy(this.change,this)),e(this.$input[0].form).on("reset.fileupload",e.proxy(this.reset,this)),this.$remove&&this.$remove.on("click.fileupload",e.proxy(this.clear,this))},change:function(e,t){if(t==="clear")return;var n=e.target.files!==undefined?e.target.files[0]:e.target.value?{name:e.target.value.replace(/^.+\\/,"")}:null;if(!n){this.clear();return}this.$hidden.val(""),this.$hidden.attr("name",""),this.$input.attr("name",this.name);if(this.type==="image"&&this.$preview.length>0&&(typeof n.type!="undefined"?n.type.match("image.*"):n.name.match(/\.(gif|png|jpe?g)$/i))&&typeof FileReader!="undefined"){var r=new FileReader,i=this.$preview,s=this.$element;r.onload=function(e){i.html('<img src="'+e.target.result+'" '+(i.css("max-height")!="none"?'style="max-height: '+i.css("max-height")+';"':"")+" />"),s.addClass("fileupload-exists").removeClass("fileupload-new")},r.readAsDataURL(n)}else this.$preview.text(n.name),this.$element.addClass("fileupload-exists").removeClass("fileupload-new")},clear:function(e){this.$hidden.val(""),this.$hidden.attr("name",this.name),this.$input.attr("name","");if(navigator.userAgent.match(/msie/i)){var t=this.$input.clone(!0);this.$input.after(t),this.$input.remove(),this.$input=t}else this.$input.val("");this.$preview.html(""),this.$element.addClass("fileupload-new").removeClass("fileupload-exists"),e&&(this.$input.trigger("change",["clear"]),e.preventDefault())},reset:function(e){this.clear(),this.$hidden.val(this.original.hiddenVal),this.$preview.html(this.original.preview),this.original.exists?this.$element.addClass("fileupload-exists").removeClass("fileupload-new"):this.$element.addClass("fileupload-new").removeClass("fileupload-exists")},trigger:function(e){this.$input.trigger("click"),e.preventDefault()}},e.fn.fileupload=function(n){return this.each(function(){var r=e(this),i=r.data("fileupload");i||r.data("fileupload",i=new t(this,n)),typeof n=="string"&&i[n]()})},e.fn.fileupload.Constructor=t,e(document).on("click.fileupload.data-api",'[data-provides="fileupload"]',function(t){var n=e(this);if(n.data("fileupload"))return;n.fileupload(n.data());var r=e(t.target).closest('[data-dismiss="fileupload"],[data-trigger="fileupload"]');r.length>0&&(r.trigger("click.fileupload"),t.preventDefault())})}(window.jQuery)
                            var searchLicenDet = "${searchLicenDet}";
                            getULBListIDnDesc("${jsonULBListUrl}","ulbIdDesc");
                            getServiceList("${jsonServiceListUrl}","setServiceId");
                            
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
                            /* ---------------------   function starts here---------------------------- */
                            
                            
                            $("#searchWaterDet").click(function() {
                                $('#frmData').attr('action', searchWaterDet);
                                $("#frmData").submit();
                              });
                            
                            $("#waterSearch").click(function() {
                              
                              var ulbId = $("#ulbIdDesc").val().split("|");
                                console.log("ulbId "+ulbId[0]);
                                
                                if($("#waterConnNo").val() != "")
                                {
                                  var datavar = {"connectionNo":$("#waterConnNo").val(),"ulbId":ulbId[0]} ;
                                  console.log("jsonsearchWaterUrl"+jsonsearchWaterUrl)
                                  
                                  $.ajax({
                                    type : "POST",
                                    url : jsonsearchWaterUrl,
                                    contentType: "application/json; charset=UTF-8",
                                    dataType : 'json',
                                    data : JSON.stringify(datavar),
                                    success : function(data)
                                    {
                                      if(data.totalRows != 0){
                                      
                                      
                                      if(data.resultData[0].connectionNo == "00000")
                                      {
                                        $("#waterConnectionId").val(data.resultData[0].connectionId);
                                        
                                      console.log(" if cond ");
                                      
                                          var datavar = {"ulbIdDesc":$("#ulbIdDesc").val() ,"setServiceId":$("#setServiceId").val()} ;
                                          console.log("jsonsearchWaterChargesUrl"+jsonsearchWaterChargesUrl)
                                          
                                      $.ajax({
                                          
                                            type : "POST",
                                            url : jsonsearchWaterChargesUrl,
                                            contentType: "application/json; charset=UTF-8",
                                            dataType : 'json',
                                            data : JSON.stringify(datavar),
                                            
                                            success : function(data1) {
                                              
                                            console.log("VAL: "+data1.totalRows);
                                            
                                        var row = 1;
                                        dataSet = [];
                                        if(parseInt(data1.totalRows) > 0) {
                                          var newArray = [];
                                          var totCol = 0;
                                          $.each(data1.resultData, function (i, result1) {
                                            
                                              
                                              $("#payDueAmt").val(0);
                                              $('#payAmt').val(result1.charges_amt);
                                              $('#taxId').val(result1.service_tax_id);            //hidden field in nodue_water jsp
                                              $('#taxDetId').val(result1.service_tex_det_id);      //hidden field in nodue_water jsp
                                              $("#emailId").val(result1.emailId);
                                              $('#waterConnNo').prop('disabled', true);
                                              //                   $('#spropULB').prop('disabled', true);
                                              $('#searchWaterDet').prop('disabled', true);
                                              $('#waterSearch').prop('disabled', true);
                                              $('.toggle-header[data-target="#charges-details"]').show();
                                              $("#chargeDiv").show();
                                              $("#paySubmit").hide();
                                            
                                              
                                          });
                                        
                                        }
                                        else
                                        {
                                          $("#spropULB").hide();
                                          $("#payDueAmt").val(0);
                                          $("#payAmt").val(0);
                                          $("#paySubmit").hide();
                                          $("#payCharges").hide();
                                          $('.toggle-header[data-target="#charges-details"]').show();
                                        $("#chargeDiv").show();
                                        $(".actionbar").show();
                                          
                                            PNotify.removeAll();
                                      new PNotify({
                                      title: 'No Service Charge Applicable',
                                      styling: 'bootstrap3',
                                      type: 'success'
                                      });
                                      }
                                              
                                            }
                                        });  //ajax ends
                                          
                                        
                                      }  //if end
                                      else{
                                      
                                    $.each(data.resultData, function (i, result) {
                                      
                                      $("#payDueAmt").val(result.current_bal);
                                      $("#waterConnectionId").val(result.connectionId);
                                      $("#emailId").val(result.emailId);
                                      $("#paySubmit").show();
                                      $("#uploadHide").hide();
                                      $("#disconnectionHide").hide();
                                      
                                    });
                                    
                                  }  //else
                                    
                                  }  //if
                                else {
                                  
                                  PNotify.removeAll();
                                    new PNotify({
                                      title : 'Data No Found',
                                      styling : 'bootstrap3',
                                      type : 'error'
                                    });
                                  }
                                      
                                    } //success
                                    
                                  });  //ajax
                                
                                } //if
                              
                                else{
                                PNotify.removeAll();
                                  new PNotify({
                                    title : 'Please Enter Water Connection Number',
                                    styling : 'bootstrap3',
                                    type : 'error'
                                  });
                                }
                              
                            }); //watersearch
                            
                            /* --------------------- Pay charges starts----------------------- */
                            
                            $("#payCharges").click(function() {
                              var ulbId = $("#ulbIdDesc").val().split("|");
                                  console.log("ulbId "+ulbId[0]);
                              
                            var datavar = {"waterConnectionId":$("#waterConnectionId").val(),"tempFromDate":$("#tempFromDate").val(),"tempToDate":$("#tempToDate").val(),"ulbId":ulbId[0]} ;
                              
                              
                            $.ajax({
                                type : "POST",
                                url : CheckDiscForWater,
                                contentType: "application/json; charset=UTF-8",
                                dataType : 'json',
                                data : JSON.stringify(datavar),
                                async : false,
                                success : function(data2)
                                {
                                  
                                  console.log("VAL in CheckDiscForWater : "+data2);
                              var row = 1;
                              dataSet = [];
                              
                            if(parseInt(data2) ==0){
                              
                              
                              console.log(" inside  pay water Charge ");
                              var datavar = $("#frmData").serializeObject();
                              console.log(" >>> datavar <<< "+datavar);
                              var json_string = JSON.stringify(datavar);
                              console.log(" >>> json_string <<< "+json_string);
                              var datavar = removeEmptyValueFromJSON(json_string);
                              console.log(" >>> datavar <<< "+datavar);
                              $.ajax({
                                  type : "POST",
                                  //              url : sendNoDuePayProperty,
                                  url : sendToChargePay,
                                  contentType: "application/json; charset=UTF-8",
                                  dataType : 'json',
                                  data : datavar,
                                  async : false,
                                  success : function(data2)
                                  {
                                    console.log("VAL: "+data2.serviceId+"serviceTaxDetId---"+$('#taxDetId').val()+"taxid---"+$('#taxId').val());
                                    
                                var row = 1;
                                dataSet = [];
                                
                                  var newArray = [];
                                  var totCol = 0;
                                  
                                    
                                    //                           var datavar2 = {"wulbId":data2.ulbId,"serviceId":data2.serviceId,"payAmount":data2.payAmt,"mobNo":data2.applicantMobile,"connectionId":$("#waterConnectionId").val(),"tax_det_id":$('#taxDetId').val(),"tax_id":$('#taxId').val(),"srn_id":$('#srnId').val()};
                                    var datavar2 = {"wulbId":data2.ulbId,"serviceId":data2.serviceId,"payAmount":$('#payAmt').val(),"mobNo":data2.applicantMobile,"connectionId":$("#waterConnectionId").val(),"tax_det_id":$('#taxDetId').val(),"tax_id":$('#taxId').val(),"srn_id":$('#srnId').val()};
                                    payChargesWater(datavar2);
                                  
                                  }//success
                                
                                }); //pay ajax
                              
                              
                            } //if
                            else
                            {
                              
                              new PNotify({
                                    title : 'Application For Water Disconnection Already Present',
                                    styling : 'bootstrap3',
                                    type : 'error'
                                  });
                            }
                                } //success
                            
                            });//ajax
                              
                              
                              
                            });// paycharge func
                            
                            function payChargesWater(datavar2){
                                console.log(datavar2);
                                $.ajax({
                                  type : "POST",
                                  url : jsonpaymentgateway,
                                  contentType: "application/json; charset=UTF-8",
                                  
                                  data : JSON.stringify(datavar2),
                                  async : false,
                                  cache: false,
                                  success : function(data)
                                  {
                                    
                                    $("#returnURL").val(data);
                                    //        window.location.href = data;
                                    $("#checkListForm").submit();
                                    
                                  } ,
                                  error : function(request, status, error) {
                                    //console.log("error "+request);
                                    // console.log("error "+error);
                                  }
                                });
                                    
                              }
                            
                            
                            /* ------------ pay charges ends ------------------- */
                            
                            /* ------------ pay dues Starts ------------------- */
                            
                            $("#paySubmit").click(function() {
                              
                              //    function  payWaterDue()
                              //    {
                                console.log(" inside  pay water Due ");
                                
                                var datavar = $("#frmData").serializeObject();
                                console.log(" >>> datavar <<< "+datavar);
                                var json_string = JSON.stringify(datavar);
                                console.log(" >>> json_string <<< "+json_string);
                                var datavar = removeEmptyValueFromJSON(json_string);
                                console.log(" >>> datavar <<< "+datavar);
                                
                                
                                $.ajax({
                                  type : "POST",
                                  url : sendNoDuePayProperty,
                                  contentType: "application/json; charset=UTF-8",
                                  dataType : 'json',
                                  data : datavar,
                                  async : false,
                                  success : function(data2)
                                  {
                                    console.log("VAL: "+data2.serviceId);
                                    
                                var row = 1;
                                dataSet = [];
                                
                                  var newArray = [];
                                  var totCol = 0;
                                  
                                    
                                    var datavar2 = {"wulbId":data2.ulbId,"serviceId":data2.serviceId,"payAmount":$("#payDueAmt").val(),"mobNo":data2.applicantMobile,"connectionNo" :$("#waterConnNo").val(),"connectionId":$("#waterConnectionId").val(),"email":$('#emailId').val(),"serviceName":"Temporary/Permanent Disconnection","moduleId":data2.moduleId };
                                    payDue(datavar2);
                                  
                                  }    //success
                                
                                });
                                
                                
                                //      }
                                      
                              });
                            
                            function payDue(datavar2)
                              {
                                console.log(datavar2);
                                $.ajax({
                                  type : "POST",
                                  url : waterPayMoney,//no dues
                                  contentType: "application/json; charset=UTF-8",
                                  
                                  data : JSON.stringify(datavar2),
                                  async : false,
                                  cache: false,
                                  success : function(data)
                                  {
                                    window.location.href = data;
                                  } ,
                                  error : function(request, status, error) {
                                    //console.log("error "+request);
                                    // console.log("error "+error);
                                  }
                                });
                                    
                              }
                            
                            /* ------------ pay dues ends ------------------- */
                            
                            /* ---------------------   function ends here---------------------------- */
                            
                            $("#applicantSave").click(function() {
                              
                                console.log(" inside  pay water Due ");
                                
                                var datavar = $("#frmData").serializeObject();
                                console.log(" >>> datavar <<< "+datavar);
                                var json_string = JSON.stringify(datavar);
                                console.log(" >>> json_string <<< "+json_string);
                                var datavar = removeEmptyValueFromJSON(json_string);
                                console.log(" >>> datavar <<< "+datavar);
                                
                                
                                $.ajax({
                                  type : "POST",
                                  //        url : saveApplicantDataForNoCharge,
                                  url : sendToChargePay,
                                  contentType: "application/json; charset=UTF-8",
                                  dataType : 'json',
                                  data : datavar,
                                  async : false,
                                  success : function(data2)
                                  {
                              if(data2.serviceResp > 0)
                              {
                                //                alert('Hello ')
                                    $("#checkListForm").submit();
                              }
                                /* console.log("VAL: "+data2.serviceId+"serviceTaxDetId---"+$('#taxDetId').val()+"taxid---"+$('#taxId').val());
                            var row = 1;
                            dataSet = [];
                              var newArray = [];
                              var totCol = 0;
                              
                              var ulbId = $("#ulbIdDesc").val().split("|");
                                  console.log("ulbId "+ulbId[0]+ " waterConnectionId"+$("#waterConnectionId").val()+"srn_id====="+data2.srn_id);
                                $('#srnId').val(data2.srn_id)
                                
                              var tnpData = {"connectionId":$("#waterConnectionId").val(),"tempFromDate":$("#tempFromDate").val(),"tempToDate":$("#tempToDate").val(),"ulbId":ulbId[0],"srn_id": data2.srn_id };
                              console.log("tnpData---"+tnpData);
                              $.ajax({
                                  type : "POST",
                                  url : saveTempNPermServiceData,
                                  contentType: "application/json; charset=UTF-8",
                                  dataType : 'json',
                                  data : JSON.stringify(tnpData),
                                  async : false,
                                  success : function(resp)
                                  {
                              
                                    if(resp > 0)
                                    {
                              //                alert("success")
                              ackView();
                              
                                    }
                                  }
                                    
                                  });  */
                              } //success
                                  
                              }); //ajax
                            }); //if
                            function ackView()
                              {
                                $('#ackFrm').attr('action',ackUrl); //"http://192.168.7.196:8080/mahaulb/water/view/acknowledgment");
                                $('#srnIdAck').val($('#srnId').val());
                                $("#ackFrm").submit();
                              }
                            $(document).ready(function()
                            {
                            	$('.toggle-header[data-target="#charges-details"]').hide();
                                $("#chargeDiv").hide();
                                $(".actionbar").hide();
                                $("#paySubmit").hide();
                                
                              $("#setServiceId").val($("#servDeschide").val());
                              if($("#ulbIdDeschide").val() != "0")
                                {
                                $("#ulbIdDesc").val($("#ulbIdDeschide").val());
                                }
                              
                              
                              if($('#tempdis').is(":checked")){
                                $("#permenanthide").show();
                              }else{
                                $("#permenanthide").hide();
                              }
                              
                            });
                            $("#tempdis").click(function(){
                              $("#permenanthide").show();
                            });
                            $("#permenantdis").click(function(){
                              $("#permenanthide").hide();
                            });
                              
                            //date function
                            $(function () {
                            $('#tempFromDate').datetimepicker({
                            format: 'DD/MM/YYYY'
                            });
                            $('#tempToDate').datetimepicker({
                            format: 'DD/MM/YYYY'
                            });
                            });
                              
                            </script>
                            <script>
                            	$(document).ready(function(){
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
                            	})
                            </script>
                          </body>
                        </html>
                        </compress:html>
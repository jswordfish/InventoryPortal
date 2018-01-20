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
          <h1><spring:message code="label.document.citizenser.pageTitle"/></h1> <span class="home-icon"><i class="fa fa-home"></i></span>
        </div><!-- form-title -->
          
        <div class="ulb-section">
              <div class="toggle-header" data-target="#application-details">
                <h2 class="StepTitle">
                  <spring:message code="label.document.citizenser.applicantdet" />
                  <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
                </h2>
              </div>
                
              <form:form action="" name="property-nodue-form" id="frmData" method="POST" modelAttribute="applicationBean">
                <form:hidden path="" id="ulbIdDeschide" value="${ulbIdDeschide}"/>
                <form:hidden path="" id="servDeschide" value="${servDeschide}"/>

                <div id="application-details">
                  <div class="row">
                    <div class="form-group">
                      
                      <label class="col-md-2 col-sm-12 col-xs-12" for="ulbIdDesc">
                        <spring:message code="label.document.servicereq.ulbname" /><span class="required">*</span>:</label>
                      <div class="col-md-6 col-sm-12 col-xs-12">
                        <select class=" form-control" id="ulbIdDesc" name="ulbIdDesc">
                          <option value="0"><spring:message code="label.document.servicereq.selulb" /></option>
                        </select>
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="form-group">
                      <label class="col-md-2 col-sm-12 col-xs-12" for="serviceId">
                        <spring:message code="label.document.servicereq.sername" /><span class="required">*</span>:
                      </label>
                      <div class="col-md-6">
                        <input type="hidden" id="setServiceId" name="setServiceId">
                        <input type="hidden" id="srn_id" name="srn_id">
                        <select class=" form-control" name="serviceId" id="serviceId" disabled>
                          <option value="0" ><spring:message code="label.document.servicereq.selsername" /></option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <jsp:include page="applicant-details.jsp" />
                </div>
                <jsp:include page="../../servicewise/servicewise-changeusagecon.jsp" />
              </form:form>
                    
              <div class="toggle-header" data-target="#upload-div">
                <h2 class="StepTitle">
                  <spring:message code="label.document.citizenser.updoc"/>
                  <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
                </h2>
              </div>

              <div id="upload-div">
                <c:url var='jsonCommonChecklistUrl' value='/common/service/saveChecklist' />
                  <form:form modelAttribute="filesBean"  method="post" action="${jsonCommonChecklistUrl}" enctype="multipart/form-data" id="checkListForm">
                    <form:hidden path="returnURL" id="returnURL"/>
                    <jsp:include page="checklist.jsp" />
                  </form:form>
              </div>
                      
              <div class="toggle-header chargeColl" data-target="#charges-details">
                <h2 class="StepTitle">
                  <spring:message code="label.document.citizenser.charge" /> <i class="glyphicon glyphicon-chevron-down toggle-icon">
                    <span>keyboard_arrow_down</span></i>
                </h2>
              </div>

              <%--  <form>   --%>
                <div id="charges-details" class="chargeColl">
                  <div class="form-group">
                    <label for="payAmt" class="control-label col-md-2 col-sm-12 col-xs-12">
                        <spring:message code="label.document.citizenser.charge" />:
                    </label>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                      <input type="text" id="payAmt" class="form-control" value="0" readonly>
                      <input type="hidden" id="taxId" value="0">
                      <input type="hidden" id="taxDetId" value="0">
                    </div>
                  </div>
                </div>
                
              <%--  </form> --%>
                      
                <%--  <form:form id="ackFrm" name="ackFrm" modelAttribute="ackFrm">
                  <form:hidden id="srnIdAck" path="srn_id"/>
                  </form:form> --%>
                  
                  <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="actionBar">
                        <button type="button" class="btn" id="saveForm"><spring:message code="label.btn.save" /></button>
                        <button type="reset" class="btn"><spring:message code="label.btn.reset" /></button>
                        <button type="button" class="btn"><spring:message code="label.btn.close" /></button>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

          <jsp:include page="jsFooter.jsp" />
          <jsp:include page="../citizenFooter.jsp" />
          <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
          <!-- Include all compiled plugins (below), or include individual files as needed -->
          
          <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
          
          <script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
          <%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
          <c:url var='jsonULBListUrl' value='/rest/common/ulb/ulblist' />
          <c:url var='jsonServiceListUrl' value='/rest/common/ulb/servlist' />
          <c:url var='jsonsearchWaterChargesUrl' value='/water/rest/search/waterServiceCharges' />
          <c:url var='searchWaterDet' value='/water/view/search' />
          <c:url var='saveAppliData' value='/common/application/save'/>
          <c:url var='jsonpaymentgateway' value='/water/rest/send/waterPaymentGateway' />
          <c:url var='getPipeSize' value='/water/getPipeSize' />
          <c:url var="getUsageSubTypeDrop" value="/water/getUsageSubTypeDrop" />
          <c:url var="getNumberData" value="/water/getNumberData" />
          <c:url var="updateConInfoAppli" value="/water/updateConInfoAppli" />
          <c:url var='ackUrl' value='/water/view/acknowledgment' />
<c:url var='viewChangeUsageAndSizeUrl' value='/water/rest/viewChangeUsageAndSize' />
          <c:set var='sessionId' value='${pageContext.session.id}' />

          <script type="text/javascript">
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

              $('#recondate').datetimepicker({
                format:"DD/MM/YYYY"
              });
            });
            
          /* $('#usageid').click(function(){
            $('#showusage').show();
            $('#showpipesize').hide();
          });
          $('#pipesize').click(function(){
            $('#showusage').hide();
            $('#showpipesize').show();
          });
          $('#both').click(function(){
            $('#showusage').show();
            $('#showpipesize').show();
          }); */
          var jsonULBListUrl = "${jsonULBListUrl}";
          var jsonServiceListUrl = "${jsonServiceListUrl}";
          var jsonsearchWaterChargesUrl = "${jsonsearchWaterChargesUrl}";
          var searchWaterDet = "${searchWaterDet}";
          var saveAppliData = "${saveAppliData}";
          var jsonpaymentgateway = "${jsonpaymentgateway}";
          var getPipeSizeURL = "${getPipeSize}";
          var getUsageSubTypeDrop = "${getUsageSubTypeDrop}";
          var getNumberData = "${getNumberData}";
          var updateConInfoAppli = "${updateConInfoAppli}";
          var ackUrl = "${ackUrl}";
          </script>
          <!-- User Define Script For Page (Himanshu)-->
          <script type="text/javascript" src="<c:url value="/maha-dma/js/surveyReqForm-validation.js" />"></script>
          <script type="text/javascript" src="<c:url value="/maha-dma/js/service-change-usageconn.js" />"></script>          
      </body>
  </html>
</compress:html>
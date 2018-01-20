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
    <jsp:include page="../../homeheader.jsp" />
  </head>
  <body>
  	<jsp:include page="../../citizenHeaderTop.jsp" />
  	
    <div class="prop-section">
      <div class="container">
        <div class="form-title">
          <h1>
            <spring:message code="label.collection.property.title" />
          </h1> 
          <span class="home-icon">
            <i class="fa fa-home"></i>
          </span>
        </div><!-- form-title -->

        <div class="ulb-section">
            <div class="toggle-header" data-target="#recon-div">
              <h2 class="StepTitle toggle-header">
                <spring:message code="label.collection.property.condetails" />
                <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
              </h2>
            </div>

            <div id="recon-div">
               <div class="row">
                  <div class="form-group">
                    <label for="conno" class="col-md-2 col-sm-12 col-xs-12">
                      <spring:message code="label.collection.property.conno" />:
                    </label>
                    
                    <div class="col-md-4 col-sm-12 col-xs-12">
                      <div class="input-group">
                        <input type="text" class="form-control" name="conno" id="conno"/>
                        <span class="input-group-addon">
                          <a href="#" id="searchLicenDet">
                            <i class="fa fa-question-circle" style="font-size:20px"></i>
                          </a>
                        </span>
                      </div>
                    </div>
                    
                    <label for="flatno" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.collection.property.flatno" />:</label>
                    
                    <div class="col-md-4 col-sm-12 col-xs-12">
                      <select class=" form-control" name="flatno" id="flatno">
                        <option></option>
                      </select>
                    </div>
                  </div>
              </div><!-- row -->
              
              <div class="row">
                <div class="form-group">
                  <label for="firstName" class="control-label col-md-2 col-sm-12 col-xs-12">
                    <spring:message code="label.collection.property.consumnername"/>:
                  </label>
                  <div class="col-md-3 col-sm-12 col-xs-12">
                    <input type="text" id="firstName" class="form-control" disabled="disabled"/>
                  </div>
                  <div class="col-md-3 col-sm-12 col-xs-12">
                    <input type="text" id="middleName" class="form-control" disabled="disabled"/>
                  </div>
                  <div class="col-md-4 col-sm-12 col-xs-12">
                    <input type="text" id="lastName" class="form-control" disabled="disabled"/>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="form-group">
                  <label class="control-label col-md-2 col-sm-12 col-xs-12"><spring:message code="label.collection.property.conaddress" />:</label>
                  <div class="col-md-4 col-sm-12 col-xs-12">
                    <textarea class="form-control" disabled="disabled"></textarea>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="form-group">
                  <label for="dues" class="col-md-2 col-sm-12 col-xs-12">
                    <spring:message code="label.collection.property.dues" />:
                  </label>
                  <div class="col-md-4 col-sm-12 col-xs-12">
                    <input type='text' class="form-control" id="dues" name="dues" disabled="disabled"/>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="form-group">
                  <label for="firsthalf" class="col-md-2 col-sm-12 col-xs-12">
                    <spring:message code="label.collection.property.1sthalf" />:
                  </label>
                  <div class="col-md-4 col-sm-12 col-xs-12">
                    <input type='text' class="form-control" id="firsthalf" name="firsthalf" disabled="disabled"/>
                  </div>
                  
                  <label for="secondhalf" class="col-md-2 col-sm-12 col-xs-12">
                    <spring:message code="label.collection.property.2ndhalf" />:
                  </label>
                  <div class="col-md-4 col-sm-12 col-xs-12">
                    <input type='text' class="form-control" id="secondhalf"  name="secondhalf" disabled="disabled"/>
                  </div>
                </div>
              </div>
              
              <div class="row">
                <div class="form-group">
                  <label for="name" class="col-md-2 col-sm-12 col-xs-12">
                    <spring:message code="label.collection.property.amounttopay" />:
                  </label>
                  <div class="col-md-4 col-sm-12 col-xs-12">
                    <input type='text' class="form-control " id="amounttopay" name="amounttopay" />
                  </div>
                  
                  <label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.collection.property.receivedfrom" />:</label>
                  <div class="col-md-4 col-sm-12 col-xs-12">
                    <input type='text' class="form-control" id="receivedfrom"  name="receivedfrom" />
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="form-group">
                  <a href="" class="pull-right" data-toggle="modal" data-target="#payment-details">
                    <spring:message code="label.collection.water.moredetails" />
                  </a>
                </div>
              </div>
          </div><!-- #recon-div -->
            
          <div class="row">
            <div class="actionBar">
              <input type="submit" id="payCharges" class="btn" value="<spring:message code="label.btn.pay" />">
              <input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
            </div>
          </div>
      </div>
    </div>
  </div>
      
      <jsp:include page="../jsFooter.jsp" />
      <jsp:include page="../../citizenFooter.jsp" />

      <!-- Payment details modal  -->
      <div class="modal fade" id="payment-details" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title"><spring:message code="label.collection.property.paydetails" /></h4>
            </div>
            <div class="modal-body">
              <table id="apartmentsearch" class="table dataTable table-striped table-bordered text-center">
                <thead>
                  <tr>
                    <th><spring:message code="label.collection.property.bollno" /></th>
                    <th><spring:message code="label.collection.property.billdate" /></th>
                    <th><spring:message code="label.collection.property.billamnt" /></th>
                    <th><spring:message code="label.collection.property.outamnt" /></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>test</td>
                    <td>test</td>
                    <td>test</td>
                    <td>test</td>
                  </tr>
                </tbody>
                <tfoot>
                <tr>
                  <td colspan="3"><spring:message code="label.collection.property.totalout" /> (<i class="fa fa-inr"></i>)</td>
                  <td>100</td>
                </tr>
                </tfoot>
              </table>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
      <!-- Payment details modal -->
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      
      <script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
      
      <script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
      <%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
      <script>
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
        $(function() {
          $('#duedate').datetimepicker({
            format:"DD/MM/YYYY"
            
          });
          
        });
      </script>
      
    </body>
  </html>
  </compress:html>
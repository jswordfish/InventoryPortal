<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 <script src="<c:url value="/marriage/js/jquery.growl.js"/>" type="text/javascript"></script>
  <script src="<c:url value="/marriage/js/jquery.timeentry.js"/>" type="text/javascript"></script>
   <script src="<c:url value="/marriage/js/DataTable/datatables.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/marriage/js/DataTable/dataTables.select.min.js"/>" type="text/javascript"></script>
     
    <script src="<c:url value="/marriage/js/ezBSAlert.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/marriage/js/jquery-ui-1.10.4.custom.min.js"/>" type="text/javascript"></script>
      <script src="<c:url value="/marriage/js/jquery.autocomplete.js"/>" type="text/javascript"></script>
 
 <script src="<c:url value="/marriage/js/dateEntry/js/jquery.plugin.js"/>" type="text/javascript"></script>
<script src="<c:url value="/marriage/js/dateEntry/js/jquery.dateentry.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/marriage/js/timeEntry/js/jquery.timeentry.js"/>" type="text/javascript"></script>
 
 
 <script src="<c:url value="/marriage/js/app.min.js"/>" type="text/javascript"></script>
   <script src="<c:url value="/marriage/js/Main.js"/>" type="text/javascript"></script>
 
 <script src="<c:url value="/marriage/js/jquery.blockui.min.js"/>" type="text/javascript"></script>
 <script src="<c:url value="/marriage/js/jquery.browser.min.js"/>" type="text/javascript"></script>
 <script src="<c:url value="/marriage/js/layout.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/marriage/js/table-datatables-managed.min.js	"/>" type="text/javascript"></script>


<spring:url value="/property/js/Project/PropertyCommon.js" var="propertyCommonJS" />
<c:set var="propertyCommonJS" scope="session" value="${propertyCommonJS}" />

<spring:url value="/property/js/Project/Collection/collectionPT.js" var="collectionPTJS" />
<c:set var="collectionPTJS" scope="session" value="${collectionPTJS}"/>

<spring:url value="/property/getResponseAutoCompleteProperty.html" var="getResponseAutoCompletePropertyURL" />
<c:set var="getResponseAutoCompletePropertyURL" scope="session" value="${getResponseAutoCompletePropertyURL}"/>

<spring:url value="/property/autoCompleteProperty.html" var="autoCompletePropertyURL" />
<c:set var="autoCompletePropertyURL" scope="session" value="${autoCompletePropertyURL}"/>

<spring:url value="/property/getPropertyDetails.html" var="getPropertyDetailsURL" />
<c:set var="getPropertyDetailsURL" scope="session" value="${getPropertyDetailsURL}"/>

<spring:url value="/property/getPaymentDetail.html" var="getPaymentDetailURL" />
<c:set var="getPaymentDetailURL" scope="session" value="${getPaymentDetailURL}"/>

<spring:url value="/property/saveCollection.html" var="saveCollectionURL" />
<c:set var="saveCollectionURL" scope="session" value="${saveCollectionURL}"/>

<spring:url value="/property/getResponseAutoCompleteMICR.html" var="getResponseAutoCompleteMICRURL" />
<c:set var="getResponseAutoCompleteMICRURL" scope="session" value="${getResponseAutoCompleteMICRURL}"/>

<spring:url value="/property/autoCompleteMICR.html" var="autoCompleteMICRURL" />
<c:set var="autoCompleteMICRURL" scope="session" value="${autoCompleteMICRURL}"/>

<spring:url value="/property/collection/printReciept.html" var="printReceiptURL" />
<c:set var="printReceiptURL" scope="session" value="${printReceiptURL}"/>

<spring:url value="/property/collectionProperty.html" var="collectionPropertyURL" />
<c:set var="collectionPropertyURL" scope="session" value="${collectionPropertyURL}"/>

<spring:url value="/property/payCollection.html" var="payCollectionURL" />
<c:set var="payCollectionURL" scope="session" value="${payCollectionURL}"/>

<spring:url value="/property/propertyOnlinePay.html" var="propertyOnlinePayURL" />
<c:set var="propertyOnlinePayURL" scope="session" value="${propertyOnlinePayURL}"/>

<spring:url value="/property/payment.html" var="paymentURL" />
<c:set var="paymentURL" scope="session" value="${paymentURL}"/>
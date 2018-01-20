<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 


						<!-- Marriage Module -->

						<!-- Common css -->

<spring:url value="/marriage/css/DataTable/dataTables.checkboxes.css" var="dataTableCheckBoxCSS" />
<c:set var="dataTableCheckBoxCSS" scope="session" value="${dataTableCheckBoxCSS}" />

						<!-- Common js -->

<spring:url value="/marriage/js/DataTable/dataTables.checkboxes.min.js"	var="dataTableCheckBoxJS" />
<c:set var="dataTableCheckBoxJS" scope="session" value="${dataTableCheckBoxJS}" />



						<!-- Project URLs -->	

<spring:url value="/web/marriage/getChargeAmount.html"	var="getChargeAmountURL" />
<c:set var="getChargeAmountURL" scope="session" value="${getChargeAmountURL}" />

<spring:url value="/web/marriage/saveAppointment.html"	var="saveAppointmentURL" />
<c:set var="saveAppointmentURL" scope="session" value="${saveAppointmentURL}" />

<spring:url value="/web/marriage/initiateApplicantDetailsSave.html"	var="initiateApplicantDetailsSaveURL" />
<c:set var="initiateApplicantDetailsSaveURL" scope="session" value="${initiateApplicantDetailsSaveURL}" />

<spring:url value="/web/marriage/initiateApplicantDetailsCheck.html"	var="initiateApplicantDetailsCheckURL" />
<c:set var="initiateApplicantDetailsCheckURL" scope="session" value="${initiateApplicantDetailsCheckURL}" />


<spring:url value="/web/certificate/initiateSearchCertificate.html"	var="initiateSearchCertificateURL" />
<c:set var="initiateSearchCertificateURL" scope="session" value="${initiateSearchCertificateURL}" />

<spring:url value="/web/marriage/getWitnessDetails.html" var="getWitnessDetailsURL" />
<c:set var="getWitnessDetailsURL" scope="session" value="${getWitnessDetailsURL}" />

<spring:url value="/web/certificate/getMarriageRegistrations.html" var="getMarriageRegistrationsURL" />
<c:set var="getMarriageRegistrationsURL" scope="session" value="${getMarriageRegistrationsURL}" />

<spring:url value="/web/marriage/initiateRegistration.html" var="initiateRegistrationURL" />
<c:set var="initiateRegistrationURL" scope="session" value="${initiateRegistrationURL}" />

<spring:url value="/web/marriage/getDocuments.html" var="getDocumentsURL" />
<c:set var="getDocumentsURL" scope="session" value="${getDocumentsURL}" />

<spring:url value="/web/certificate/generateMarriageCertificate.html" var="generateMarriageCertificateURL" />
<c:set var="generateMarriageCertificateURL" scope="session" value="${generateMarriageCertificateURL}" />
				
<spring:url value="/web/certificate/reIssueMarriageCertificate.html" var="reIssueMarriageCertificateURL" />
<c:set var="reIssueMarriageCertificateURL" scope="session" value="${reIssueMarriageCertificateURL}" />
					
					
	<!-- Shailesh -->

<spring:url value="/web/marriage/admin/adminDashboard.html" var="adminDashboardURL" />
<c:set var="adminDashboardURL" scope="session" value="${adminDashboardURL}" />

<spring:url value="/web/marriage/admin/getAdminDashboardMarriageApplications.html" var="getAdminDashboardMarriageApplicationsURL" />
<c:set var="getAdminDashboardMarriageApplicationsURL" scope="session" value="${getAdminDashboardMarriageApplicationsURL}" />		

<spring:url value="/web/marriage/admin/religionWiseMrgSrch.html" var="religionWiseMrgSrchURL" />
<c:set var="religionWiseMrgSrchURL" scope="session" value="${religionWiseMrgSrchURL}" />

<spring:url value="/web/marriage/admin/getReligionWiseMarriageApplications.html" var="getReligionWiseMarriageApplicationsURL" />
<c:set var="getReligionWiseMarriageApplicationsURL" scope="session" value="${getReligionWiseMarriageApplicationsURL}" />	

<spring:url value="/web/marriage/admin/generateReligionWiseMarriageApplicationListReport.html" var="generateReligionWiseMarriageApplicationListReportURL" />
<c:set var="generateReligionWiseMarriageApplicationListReportURL" scope="session" value="${generateReligionWiseMarriageApplicationListReportURL}" />	

<spring:url value="/web/marriage/admin/initiateHandicappedPersonMarriageSearch.html" var="initiateHandicappedPersonMarriageSearchURL" />
<c:set var="initiateHandicappedPersonMarriageSearchURL" scope="session" value="${initiateHandicappedPersonMarriageSearchURL}" />

<spring:url value="/web/marriage/admin/getHandicappedPersonMarriageApplications.html" var="getHandicappedPersonMarriageApplicationsURL" />
<c:set var="getHandicappedPersonMarriageApplicationsURL" scope="session" value="${getHandicappedPersonMarriageApplicationsURL}" />	

<spring:url value="/web/marriage/admin/generateHandicappedPersonMarriageApplicationReport.html" var="generateHandicappedPersonMarriageApplicationReportURL" />
<c:set var="generateHandicappedPersonMarriageApplicationReportURL" scope="session" value="${generateHandicappedPersonMarriageApplicationReportURL}" />	

<spring:url value="/web/marriage/admin/initiateDifferentReligionMarriageSearch.html" var="initiateDifferentReligionMarriageSearchURL" />
<c:set var="initiateDifferentReligionMarriageSearchURL" scope="session" value="${initiateDifferentReligionMarriageSearchURL}" />

<spring:url value="/web/marriage/admin/getDifferentReligionMarriageApplications.html" var="getDifferentReligionMarriageApplicationsURL" />
<c:set var="getDifferentReligionMarriageApplicationsURL" scope="session" value="${getDifferentReligionMarriageApplicationsURL}" />	

<spring:url value="/web/marriage/admin/generateDifferentReligionMarriageApplicationReport.html" var="generateDifferentReligionMarriageApplicationReportURL" />
<c:set var="generateDifferentReligionMarriageApplicationReportURL" scope="session" value="${generateDifferentReligionMarriageApplicationReportURL}" />	

<spring:url value="/web/marriage/admin/initiateRemarriageRegSearch.html" var="initiateRemarriageSearchURL" />
<c:set var="initiateRemarriageSearchURL" scope="session" value="${initiateRemarriageSearchURL}" />

<spring:url value="/web/marriage/admin/getRemarriageApplications.html" var="getRemarriageApplicationsURL" />
<c:set var="getRemarriageApplicationsURL" scope="session" value="${getRemarriageApplicationsURL}" />	

<spring:url value="/web/marriage/admin/generateRemarriageApplicationReport.html" var="generateRemarriageApplicationReportURL" />
<c:set var="generateRemarriageApplicationReportURL" scope="session" value="${generateRemarriageApplicationReportURL}" />	

<spring:url value="/web/marriage/admin/initiateAgeingDetails.html" var="initiateAgeingDetailsURL" />
<c:set var="initiateAgeingDetailsURL" scope="session" value="${initiateAgeingDetailsURL}" />

<spring:url value="/web/marriage/admin/initiateCollectionRegisterReport.html" var="initiateCollectionRegisterReportURL" />
<c:set var="initiateCollectionRegisterReportURL" scope="session" value="${initiateCollectionRegisterReportURL}" />

<spring:url value="/web/marriage/admin/generateCollectionRegisterReport.html" var="generateCollectionRegisterReportURL" />
<c:set var="generateCollectionRegisterReportURL" scope="session" value="${generateCollectionRegisterReportURL}" />

					
					<!-- Marriage Registration Data Entry -->

<spring:url value="/web/marriage/addEditMarriageDetail.html" var="addEditMarriageDetailURL" />
<c:set var="addEditMarriageDetailURL" scope="session" value="${addEditMarriageDetailURL}" />

<spring:url value="/web/marriage/addEditApplicationInfo.html" var="addEditApplicationInfoURL" />
<c:set var="addEditApplicationInfoURL" scope="session" value="${addEditApplicationInfoURL}" />

<spring:url value="/web/marriage/addEditWitnessInfo.html" var="addEditWitnessInfoURL" />
<c:set var="addEditWitnessInfoURL" scope="session" value="${addEditWitnessInfoURL}" />

<spring:url value="/web/marriage/addEditCheckList.html" var="addEditCheckListURL" />
<c:set var="addEditCheckListURL" scope="session" value="${addEditCheckListURL}" />

<spring:url value="/web/marriage/initiateDownloadDoc.html" var="initiateDownloadDocURL" />
<c:set var="initiateDownloadDocURL" scope="session" value="${initiateDownloadDocURL}" />

<spring:url value="/web/marriage/generateMregDataEntryReport.html" var="generateMregDataEntryReportURL" />
<c:set var="generateMregDataEntryReportURL" scope="session" value="${generateMregDataEntryReportURL}" />
				
				<!-- Project JS -->

<spring:url value="/marriage/js/Project/MarriageRegistration/SearchMarriageRegistration.js" var="SearchMarriageRegistrationJS" />
<c:set var="SearchMarriageRegistrationJS" scope="session" value="${SearchMarriageRegistrationJS}" />

<spring:url value="/marriage/js/Project/MarriageRegistration/MarriageRegistration.js" var="MarriageRegistrationJS" />
<c:set var="MarriageRegistrationJS" scope="session"	value="${MarriageRegistrationJS}" />

			<!-- Shailesh JS -->
			
<spring:url value="/marriage/js/Project/Admin/AdminDashboard.js" var="AdminDashboardJS" />
<c:set var="AdminDashboardJS" scope="session"	value="${AdminDashboardJS}" />

<spring:url value="/marriage/js/Project/Admin/ReligionWiseMrgSrch.js" var="ReligionWiseMrgSrchJS" />
<c:set var="ReligionWiseMrgSrchJS" scope="session"	value="${ReligionWiseMrgSrchJS}" />

<spring:url value="/marriage/js/Project/Admin/HandicappedPersonMarriage.js" var="HandicappedPersonMarriageJS" />
<c:set var="HandicappedPersonMarriageJS" scope="session"	value="${HandicappedPersonMarriageJS}" />

<spring:url value="/marriage/js/Project/Admin/DifferenReligionMarriage.js" var="DifferentReligionMarriageJS" />
<c:set var="DifferentReligionMarriageJS" scope="session"	value="${DifferentReligionMarriageJS}" />

<spring:url value="/marriage/js/Project/Admin/RemarriageRegSearch.js" var="RemarriageJS" />
<c:set var="RemarriageJS" scope="session"	value="${RemarriageJS}" />

<spring:url value="/marriage/js/Project/Admin/AgeingDetailsSearch.js" var="AgeingDetailsJS" />
<c:set var="AgeingDetailsJS" scope="session"	value="${AgeingDetailsJS}" />


					<!-- Marriage Fee created by swati -->
					
					
<spring:url value="/web/marriagefee/marriagefeemasterviewtable.html" var="initiateSearchFeeMasterURL" />
<c:set var="initiateSearchFeeMasterURL" scope="session" value="${initiateSearchFeeMasterURL}"/>

<spring:url value="/web/marriagefee/initiatemarriagefee.html" var="initiateAddFeeMasterURL" />
<c:set var="initiateAddFeeMasterURL" scope="session" value="${initiateAddFeeMasterURL}"/>

<spring:url value="/web/marriagefee/marriageFeeSaveData.html" var="addEditMarriageFeeMasterURl" />
<c:set var="addEditMarriageFeeMasterURl" scope="session" value="${addEditMarriageFeeMasterURl}" />

<spring:url value="/web/marriagefee/marriageFeeDetailsSaveData.html" var="addEditMarriageFeeMasterDetailsURl" />
<c:set var="addEditMarriageFeeMasterDetailsURl" scope="session" value="${addEditMarriageFeeMasterDetailsURl}" />


<spring:url value="/web/marriagefee/marriageFeeMasterDetailsTable.html" var="marriageFeeMasterDetailsTableURl" />
<c:set var="marriageFeeMasterDetailsTableURl" scope="session" value="${marriageFeeMasterDetailsTableURl}" />

<spring:url value="/web/marriagefee/marriageFeeMasterSearch.html" var="marriageFeeMasterSearchTableURl" />
<c:set var="marriageFeeMasterSearchTableURl" scope="session" value="${marriageFeeMasterSearchTableURl}" />


<spring:url value="/web/marriagefee/marriagefeemasterviewtable.html" var="marriageFeeMasterViewTableURl" />
<c:set var="marriageFeeMasterViewTableURl" scope="session" value="${marriageFeeMasterViewTableURl}" />

<spring:url value="/web/marriagefee/marriageFeeMasterSearch.jsp" var="marriageFeeMasterSearchViewURl" />
<c:set var="marriageFeeMasterSearchViewURl" scope="session" value="${marriageFeeMasterSearchViewURl}" />

<spring:url value="/marriage/js/Project/MarriageFee/MarriageFee.js" var="marriageFeeJS" />
<c:set var="marriageFeeJS" scope="session" value="${marriageFeeJS}" />

<spring:url value="/web/marriage.html" var="marriageHomeURL" />
<c:set var="marriageHomeURL" scope="session" value="${marriageHomeURL}" />

<c:set var="AddEditMarriageFeeMasterDetailsJSP" value="/views/marriage/MarriageFee/AddEditMFMDetails.jsp" />

<spring:url value="/web/sequencegeneration/addEditSNGeneration.html" var="addEditSNGenerationURl" />
<c:set var="addEditSNGenerationURl" scope="session" value="${addEditSNGenerationURl}" />

<spring:url value="/marriage/js/Project/SequenceNoGeneration/SequenceNoGeneration.js" var="sequenceNoGJS" />
<c:set var="sequenceNoGJS" scope="session" value="${sequenceNoGJS}" />

<spring:url value="/web/sequencegeneration/sequencenogenerationtable.html" var="initiateSearchSNGURL" />
<c:set var="initiateSearchSNGURL" scope="session" value="${initiateSearchSNGURL}"/>

<spring:url value="/web/sequencegeneration/sequenceNoGenarationTable.html" var="sNGSearchTableURl" />
<c:set var="sNGSearchTableURl" scope="session" value="${sNGSearchTableURl}" />

<spring:url value="/web/certificate/initiateCertificateIssuedReport.html" var="initiateCertificateIssuedReportURL" />
<c:set var="initiateCertificateIssuedReportURL" scope="session" value="${initiateCertificateIssuedReportURL}" />

<spring:url value="/web/certificate/generateCertificateIssuedReport.html" var="generateCertificateIssuedReportURL" />
<c:set var="generateCertificateIssuedReportURL" scope="session" value="${generateCertificateIssuedReportURL}" />

<spring:url value="/web/certificate/initiateApplicationStatusRelatedReport.html" var="initiateApplicationStatusRelatedReportURL" />
<c:set var="initiateApplicationStatusRelatedReportURL" scope="session" value="${initiateApplicationStatusRelatedReportURL}" />

<spring:url value="/web/certificate/generateApplicationStatusRelatedReport.html" var="generateApplicationStatusRelatedReportURL" />
<c:set var="generateApplicationStatusRelatedReportURL" scope="session" value="${generateApplicationStatusRelatedReportURL}" />

<spring:url value="/web/marriage/payment.html" var="paymentURL" />
<c:set var="paymentURL" scope="session" value="${paymentURL}" />

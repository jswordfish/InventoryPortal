<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor"
	prefix="compress"%>
<compress:html>
<html>

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 -->

<!-- ${pageContext.request.contextPath} -->
<jsp:include page="../../common/header.jsp" />

</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<jsp:include page="../../common/leftMenu.jsp" />
			<jsp:include page="../../common/headerTop.jsp" />


			<!-- page content -->
			<spring:message code="label.please.enter" var="pls" />

			<div class="right_col" role="main">
				<div class="content-section">

					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<%-- <spring:message code="label.treename" /> --%>
										<spring:message code="label.report.form.yearwisecompa" />
									</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>

									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<!-- <form id="tree-census-reg">  -->
									<c:url var="reportYearwise"
										value="/treecensus/reports/reportyearwise" />
									<form:form method="post" class="form-horizontal"
										action="${reportYearwise}" id="tree-census-reg"
										target="_blank"
										modelAttribute="reportYearwise">

										<div class="row">
											<div class="form-group">
												<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message
														code="label.report.form.fromdate" /> :<span
													class="astric">*</span> </label>
												<div class='input-group date col-md-4 col-sm-12 col-xs-12' id='frdate'>
													<form:input type='text' path="fromDate" id="fromDate"
														class="form-control" placeholder=""
														oninput="setCustomValidity('')"
														oninvalid="this.setCustomValidity('${pls}')"
														required="required" />
													<span class="input-group-addon"> <span
														class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>



												<label for="name" class="col-md-2 col-sm-12 col-xs-12"><spring:message
														code="label.report.form.todate" /> :<span class="astric">*</span>
												</label>
												<div class='input-group date col-md-4 col-sm-12 col-xs-12'
													id='todate'>
													<form:input type='text' path="toDate" class="form-control"
														placeholder="" oninput="setCustomValidity('')"
														oninvalid="this.setCustomValidity('${pls}')"
														required="required" />
													<span class="input-group-addon"> <span
														class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>
											</div>

											<div class="form-group">
												<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
														code="label.report.form.treespecies" />: </label>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<form:input class="form-control" id="treeSpecies"
														path="treeSpecies" />
													<form:hidden id="treespeciesId" path="lookupDetIdTsm"
														cssClass="form-control" />
													<form:hidden id="ulbid" path="ulbId"
														cssClass="form-control" />
												</div>
												<label for="cal" class="col-md-2 col-sm-12 col-xs-12"><spring:message
														code="label.report.form.treefamily" />:</label>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<form:input class="form-control" id="treeFamily"
														path="treeFamily" />
													<form:hidden id="treeFamilyId" path=""
														cssClass="form-control" />
												</div>
											</div>

										</div>

										<div class="row">

											<div class="form-group ">
												<div class="actionBar">
													<button class="btn btn-deanger" type="reset">
														<spring:message code="label.btn.reset" />
													</button>
													<button type="submit" id="submitBtn"
														class="btn btn-success">
														<spring:message code="label.btn.showrepo" />
													</button>
												</div>
											</div>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					<!--
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<spring:message code="label.report.form.treecensusreglist" />
									</h2>
									
									<div class="clearfix"></div>
									
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									
									</div>
								<div class="x_content">
								 
									<div class="col-md-12 col-sm-12 col-xs-12">
										<div class="x_content">
											<div class="panel panel-sucess">
												<div class="panel-body">
													<table id="treeTable"
														 class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info"">
														<thead>
															<tr>
																<th><input type="checkbox" value=""><spring:message code="label.tbl.selectall" /></th>
																<th><spring:message code="label.report.tbl.surveynum" /></th>
																<th><spring:message code="label.report.tbl.surveydate" /></th>
																<th><spring:message code="label.report.tbl.treefamily" /></th>
																<th><spring:message code="label.report.tbl.treespecies" /></th>
																<th><spring:message code="label.report.tbl.commontreename" /></th>
															</tr>
														</thead>
														<tbody></tbody>
													</table>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					-->
				</div>
			</div>

			<!-- /page content -->


			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>

	<jsp:include page="../../common/jsFooter.jsp" />
	<script type="text/javascript">
	$(function() {
		$('#frdate').datetimepicker({
			format : "DD/MM/YYYY"
		}).on('dp.change', function(e) {
			var incrementDay = moment(new Date(e.date));
			incrementDay.add(1, 'days');
			$('#todate').data('DateTimePicker').minDate(incrementDay);
			$(this).data("DateTimePicker").hide();
		});
	});

	$(function() {
		$('#todate').datetimepicker({
			format : "DD/MM/YYYY"
		}).on('dp.change', function(e) {
			var decrementDay = moment(new Date(e.date));
			decrementDay.subtract(1, 'days');
			$('#frdate').data('DateTimePicker').maxDate(decrementDay);
			$(this).data("DateTimePicker").hide();
		});
	});     
	/*Tree Spieces Autocomplete*/
		$("#treeSpecies")
				.autocomplete(
						{
							source : function(request, response) {
								$
										.get(
												'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
												{
													prefixName : 'TSM',
													searchString : request.term,
													ulbIdAuto : $('#ulbid')
															.val()
												},
												function(data) {
													response($
															.map(
																	data,
																	function(
																			key,
																			value) {
																		//console.log(key);
																		if (key
																				.toLowerCase()
																				.indexOf(
																						request.term
																								.toLowerCase()) != -1) {
																			return {
																				label : key,
																				value : value
																			};
																		}
																	}));
												})
							},
							select : function(event, ui) {
								event.preventDefault();
								$("#treeSpecies").val(ui.item.label);
								$("#treespeciesId").val(ui.item.value);
								return false;
							},
							focus : function(event, ui) {
								this.value = ui.item.label;
								event.preventDefault();
							}
						});

		/*Tree Family Autocomplete*/
		$("#treeFamily")
				.autocomplete(
						{
							source : function(request, response) {
								$
										.get(
												'${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl',
												{
													treeNameType : 'treefamily',
													searchString : request.term
												},
												function(data) {
													treeNameData = [];
													treeNameData = data;
													if (treeNameData.length == 0) {
														$("#treeFamily")
																.val("");
														$("#treeFamilyId").val(
																"");
													}
													response($
															.map(
																	data,
																	function(
																			element,
																			index) {
																		return {
																			label : element.treeFamNameEn,
																			value : element.treeFamilyId,
																			idx : index
																		};
																	}));
												})
							},
							select : function(event, ui) {
								event.preventDefault();
								$("#treeFamily").val(ui.item.label);
								$("#treeFamilyId").val(ui.item.value);

								return false;
							},
							focus : function(event, ui) {
								this.value = ui.item.label;
								event.preventDefault();
							}

						});
	</script>
	<script type="text/javascript" src="http://www.google.com/jsapi"></script> 
	
	
	
	<script type="text/javascript">
		google.load("elements", "1", {packages: "transliteration"});
	</script>
	
	<script type="text/javascript">
	$(document).ready(function () {               
		    
		var options = {
		        sourceLanguage:
		        google.elements.transliteration.LanguageCode.ENGLISH,
		        destinationLanguage:
		        [google.elements.transliteration.LanguageCode.MARATHI],
		        shortcutKey: 'ctrl+g',
		        transliterationEnabled: true
		    };
		
		    var control = new google.elements.transliteration.TransliterationControl(options);
		 
		    control.makeTransliteratable(["treeFamily"]);
		    control.makeTransliteratable(["treeSpecies"]);
		    //control.makeTransliteratable(["propowner_lname_m"]);
	});
	
    </script>
</body>
</html>
</compress:html>
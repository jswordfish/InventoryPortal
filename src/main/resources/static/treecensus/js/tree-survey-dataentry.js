function showNotify(msgText, msgType) {
	// For Notification

	new PNotify({
		title : notification,
		msgText : '${message}',
		msgType : '${msgtype}',
		styling : 'bootstrap3',
		hide : true
	});

	// For Notification

}

// For Datepicker

$(function() {
	$('#datetimepicker1').datetimepicker({
		viewMode : 'days',
		format : 'DD/MM/YYYY'
	});
});

// For Datepicker

// For App table

$(document).ready(function() {
	$('#app-table').click(function() {
		$('.application-table').toggle("slow", function() {
		});
	});

});

// For App table

// For Autocomplete

var treeNameData;

/*$(document)
		.ready(
				function() {
					$('#app-table').click(function() {
						$('.application-table').toggle("slow", function() {
						});
					});

					$("#barkListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'BSM'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#barkListId").val(ui.item.label);
											$("#barkId").val(ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#treespeciesListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'TSM'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#treespeciesListId").val(
													ui.item.label);
											$("#treespeciesId").val(
													ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#textureListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'TMS'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#textureListId").val(
													ui.item.label);
											$("#textureId").val(ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#flowernameListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'FNM'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#flowernameListId").val(
													ui.item.label);
											$("#flowernameId").val(
													ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#fruitnameListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'FRM'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#fruitnameListId").val(
													ui.item.label);
											$("#fruitnameId")
													.val(ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#shapeListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'SMA'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#shapeListId")
													.val(ui.item.label);
											$("#shapeId").val(ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#colorMasterListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'COM'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#colorMasterListId").val(
													ui.item.label);
											$("#colorMasterId").val(
													ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#treestatusListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'TST'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#treestatusListId").val(
													ui.item.label);
											$("#treestatusId").val(
													ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#odourListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusPrefixDtl',
															{
																prefixName : 'ODM'
															},
															function(data) {
																response($
																		.map(
																				data,
																				function(
																						key,
																						value) {
																					// console.log(key);
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
											$("#odourListId")
													.val(ui.item.label);
											$("#odourId").val(ui.item.value);
											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#scientificListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl',
															{
																treeNameType : 'scientific',
																searchString : request.term
															},
															function(data) {
																treeNameData = [];
																treeNameData = data;
																if (treeNameData.length == 0) {
																	$(
																			"#scientificListId")
																			.val(
																					"");
																	$(
																			"#scientificId")
																			.val(
																					"");

																	$(
																			"#vernaListId")
																			.val(
																					"");
																	$(
																			"#vernaId")
																			.val(
																					"");

																	$(
																			"#treeCommonListId")
																			.val(
																					"");
																	$(
																			"#treeCommonId")
																			.val(
																					"");

																	$(
																			"#treeFamilyListId")
																			.val(
																					"");
																	$(
																			"#treeFamilyId")
																			.val(
																					"");
																}
																response($
																		.map(
																				data,
																				function(
																						element,
																						index) {
																					return {
																						label : element.treeSciNameEn,
																						value : element.treenameId,
																						idx : index
																					};
																				}));
															})
										},
										select : function(event, ui) {
											event.preventDefault();
											$("#scientificListId").val(
													ui.item.label);
											$("#scientificId").val(
													ui.item.value);

											$("#vernaListId")
													.val(
															treeNameData[ui.item.idx].treeVerNameEn);
											$("#vernaId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#treeCommonListId")
													.val(
															treeNameData[ui.item.idx].treeComNameEn);
											$("#treeCommonId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#treeFamilyListId")
													.val(
															treeNameData[ui.item.idx].treeFamNameEn);
											$("#treeFamilyId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#vernaListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl',
															{
																treeNameType : 'vernacular',
																searchString : request.term
															},
															function(data) {
																treeNameData = [];
																treeNameData = data;
																if (treeNameData.length == 0) {
																	$(
																			"#scientificListId")
																			.val(
																					"");
																	$(
																			"#scientificId")
																			.val(
																					"");

																	$(
																			"#vernaListId")
																			.val(
																					"");
																	$(
																			"#vernaId")
																			.val(
																					"");

																	$(
																			"#treeCommonListId")
																			.val(
																					"");
																	$(
																			"#treeCommonId")
																			.val(
																					"");

																	$(
																			"#treeFamilyListId")
																			.val(
																					"");
																	$(
																			"#treeFamilyId")
																			.val(
																					"");
																}
																response($
																		.map(
																				data,
																				function(
																						element,
																						index) {
																					return {
																						label : element.treeVerNameEn,
																						value : element.treenameId,
																						idx : index
																					};
																				}));
															})
										},
										select : function(event, ui) {
											event.preventDefault();
											$("#scientificListId")
													.val(
															treeNameData[ui.item.idx].treeSciNameEn);
											$("#scientificId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#vernaListId")
													.val(ui.item.label);
											$("#vernaId").val(ui.item.value);

											$("#treeCommonListId")
													.val(
															treeNameData[ui.item.idx].treeComNameEn);
											$("#treeCommonId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#treeFamilyListId")
													.val(
															treeNameData[ui.item.idx].treeFamNameEn);
											$("#treeFamilyId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#treeCommonListId")
							.autocomplete(
									{
										source : function(request, response) {
											$
													.get(
															'${pageContext.request.contextPath}/treecensus/treeCensusTreeNameDtl',
															{
																treeNameType : 'treecommon',
																searchString : request.term
															},
															function(data) {
																treeNameData = [];
																treeNameData = data;
																if (treeNameData.length == 0) {
																	$(
																			"#scientificListId")
																			.val(
																					"");
																	$(
																			"#scientificId")
																			.val(
																					"");

																	$(
																			"#vernaListId")
																			.val(
																					"");
																	$(
																			"#vernaId")
																			.val(
																					"");

																	$(
																			"#treeCommonListId")
																			.val(
																					"");
																	$(
																			"#treeCommonId")
																			.val(
																					"");

																	$(
																			"#treeFamilyListId")
																			.val(
																					"");
																	$(
																			"#treeFamilyId")
																			.val(
																					"");
																}
																response($
																		.map(
																				data,
																				function(
																						element,
																						index) {
																					return {
																						label : element.treeComNameEn,
																						value : element.treenameId,
																						idx : index
																					};
																				}));
															})
										},
										select : function(event, ui) {
											event.preventDefault();
											$("#scientificListId")
													.val(
															treeNameData[ui.item.idx].treeSciNameEn);
											$("#scientificId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#vernaListId")
													.val(
															treeNameData[ui.item.idx].treeVerNameEn);
											$("#vernaId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#treeCommonListId").val(
													ui.item.label);
											$("#treeCommonId").val(
													ui.item.value);

											$("#treeFamilyListId")
													.val(
															treeNameData[ui.item.idx].treeFamNameEn);
											$("#treeFamilyId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

					$("#treeFamilyListId")
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
																	$(
																			"#scientificListId")
																			.val(
																					"");
																	$(
																			"#scientificId")
																			.val(
																					"");

																	$(
																			"#vernaListId")
																			.val(
																					"");
																	$(
																			"#vernaId")
																			.val(
																					"");

																	$(
																			"#treeCommonListId")
																			.val(
																					"");
																	$(
																			"#treeCommonId")
																			.val(
																					"");

																	$(
																			"#treeFamilyListId")
																			.val(
																					"");
																	$(
																			"#treeFamilyId")
																			.val(
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
																						value : element.treenameId,
																						idx : index
																					};
																				}));
															})
										},
										select : function(event, ui) {
											event.preventDefault();
											$("#scientificListId")
													.val(
															treeNameData[ui.item.idx].treeSciNameEn);
											$("#scientificId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#vernaListId")
													.val(
															treeNameData[ui.item.idx].treeVerNameEn);
											$("#vernaId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#treeCommonListId")
													.val(
															treeNameData[ui.item.idx].treeComNameEn);
											$("#treeCommonId")
													.val(
															treeNameData[ui.item.idx].treenameId);

											$("#treeFamilyListId").val(
													ui.item.label);
											$("#treeFamilyId").val(
													ui.item.value);

											return false;
										},
										focus : function(event, ui) {
											this.value = ui.item.label;
											event.preventDefault();
										}
									});

				});*/

// For Autocomplete

// For Calling Json File

// 
function loadDataTreeSurv(url){
	// 
	$.ajax({
		type : "GET",
		url : url,
		contentType : "application/json",
		// dataType : 'json',
		// data : JSON.stringify(finalObj),
		async : false,
		headers : {
			// "Authorization": "Basic " +
			// btoa(invoiceapiuser+":"+invoiceapipassword),
			"Authorization" : "Basic " + btoa("ashok:pass")
		// "USER":btoa(getUserId(storeInvUser)),
		// "BUSID":btoa( getBussId(storeselectInvBusinessId))
		},
		success : function(data) {
			// alert("data : "+data.toString())
			// console.log(JSON.stringify(data));

			$.each(data.resultData, function(i, result) {
				// $("#"+dropId).append($("<option></option>").val(result.docChkId).html(result.docDescDetEn));

				if (result.lookupDetValue == "TSM") {
					$("#treespeciesId").val(result.lookupDetId);
					console.log(result.lookupDetId);
					lookupDetCode.push(result.lookupDetValue);
					lookupDetId.push(result.lookupDetId);
				}

				if (result.lookupDetValue == "LSM") // not in both ui
				{
					lookupDetCode.push(result.lookupDetValue);
					lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

				if (result.lookupDetValue == "BSM") {
					$("#barkId").val(result.lookupDetId);
					lookupDetCode.push(result.lookupDetValue);
					lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

				if (result.lookupDetValue == "TMS") // not in ui
				{
					lookupDetCode.push(result.lookupDetValue);
					lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

				if (result.lookupDetValue == "LCM") // not in both ui
				{
					lookupDetCode.push(result.lookupDetValue);
					lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

				if (result.lookupDetValue == "COM") {
					$("#colorMasterId").val(result.lookupDetId);
					// console.log(result.lookupDetId);
					lookupDetCode.push(result.lookupDetValue);
    	    		lookupDetId.push(result.lookupDetId);
				}

				if (result.lookupDetValue == "FNM") // not in ui
				{
					lookupDetCode.push(result.lookupDetValue);
						lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

				if (result.lookupDetValue == "FRM") {
					$("#fruitnameId").val(result.lookupDetId);
					lookupDetCode.push(result.lookupDetValue);
    	    		lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

				if (result.lookupDetValue == "ODM") {
					$("#odourId").val(result.lookupDetId);
					lookupDetCode.push(result.lookupDetValue);
    	    		lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

				if (result.lookupDetValue == "SMA") {
					$("#shapeId").val(result.lookupDetId);
					lookupDetCode.push(result.lookupDetValue);
    	    		lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

				if (result.lookupDetValue == "TST") {
					$("#treestatusId").val(result.lookupDetId);
					lookupDetCode.push(result.lookupDetValue);
					lookupDetId.push(result.lookupDetId);
					// console.log(result.lookupDetId);
				}

			});

		},
		statusCode : {
			403 : function() {
				new PNotify({
					title : 'Session Expire. Please Re-Login...',
					styling : 'bootstrap3',
					type : 'error'
				});
				setTimeout(function() {
					window.location.href = "/";
				}, 2000);
			}
		},
		error : function(e) {
			console.log("ERROR: ", e.responseText);
			console.log("ERROR: ", e);
			// display(e);
			new PNotify({
				title : 'Request Not Process... ',
				styling : 'bootstrap3',
				type : 'error'
			});
		}
	});


}

// For Calling Json File

// On Change Validations

function vernaNameShow() {
	var vernaId = $("#vernaListId").val();

	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');

	var length = $('#appendedVernaName').length;
	if (length == 0) {

		if (vernaId == "") {
			$("#verna")
					.append(
							'<div id="appendedVernaName" style="color:red;"> <spring:message code="label.form.survey.inspector.error" /> </div>')
					.show(); // div.show();
			// Enter Tree Vernacular Name

		} else {
			$("#appendedVernaName").remove();
		}
	}
}

function vernaNameHide() {
	$("#appendedVernaName").remove();
}

function scientificNameShow() {
	var scientificId = $("#scientificListId").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedScientificName').length;
	if (length == 0) {
		if (scientificId == "") {
			$("#scientific")
					.append(
							'<div id="appendedScientificName" style="color:red;"> Enter Tree Scientific Name </div>')
					.show(); // div.show();
		} else {
			$("#appendedScientificName").remove();
		}
	}
}

function scientificNameHide() {
	$("#appendedScientificName").remove();
}

function commonNameShow() {
	var commonId = $("#treeCommonListId").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedScientificName').length;
	if (length == 0) {
		if (commonId == "") {
			$("#common")
					.append(
							'<div id="appendedCommonName" style="color:red;"> Enter Tree Common Name </div>')
					.show(); // div.show();
		} else {
			$("#appendedCommonName").remove();
		}
	}
}

function commonNameHide() {
	$("#appendedCommonName").remove();
}

function surveyNumberShow() {
	var surveyId = $("#surveyNumber").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedSurveyName').length;
	if (length == 0) {
		if (surveyId == "") {
			$("#survey")
					.append(
							'<div id="appendedSurveyName" style="color:red;"> Enter Survey Number </div>')
					.show(); // div.show();
		} else {
			$("#appendedSurveyName").remove();
		}
	}
}

function surveyNumberHide(evt) {
	$("#appendedSurveyName").remove();
	var charCode = (evt.which) ? evt.which : evt.keyCode
	return !(charCode > 31 && (charCode < 48 || charCode > 57));
}

function treeIdentificationNumberShow() {
	var treeIdentificationId = $("#treeIdentificationNo").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedTreeIdentificationName').length;
	if (length == 0) {
		if (treeIdentificationId == "") {
			$("#treeIdentification")
					.append(
							'<div id="appendedTreeIdentificationName" style="color:red;"> Enter Tree Identification Number </div>')
					.show(); // div.show();
		} else {
			$("#appendedTreeIdentificationName").remove();
		}
	}
}

function treeIdentificationNumberHide(e) {
	$("#appendedTreeIdentificationName").remove();

	var specialKeys = new Array();
	specialKeys.push(8); // Backspace
	specialKeys.push(9); // Tab
	specialKeys.push(46); // Delete
	specialKeys.push(36); // Home
	specialKeys.push(35); // End
	specialKeys.push(37); // Left
	specialKeys.push(39); // Right

	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	var ret = ((keyCode >= 48 && keyCode <= 57)
			|| (keyCode >= 65 && keyCode <= 90) || (keyCode = 191)
			|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
			.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	return ret;
}

function sizeShow() {
	var sizeId = $("#sizeId").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedSizeName').length;
	if (length == 0) {
		if (sizeId == "") {
			$("#size")
					.append(
							'<div id="appendedSizeName" style="color:red;"> Enter Tree Size Name </div>')
					.show(); // div.show();
		} else {
			$("#appendedSizeName").remove();
		}
	}
}

function sizeHide(evt) {
	$("#appendedSizeName").remove();
	var charCode = (evt.which) ? evt.which : evt.keyCode
	return !(charCode > 31 && (charCode < 48 || charCode > 57));
}

function breastheightShow() {
	var breastheightId = $("#breastheight").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedBreastHeightName').length;
	if (length == 0) {
		if (breastheightId == "") {
			$("#breastHeight")
					.append(
							'<div id="appendedBreastHeightName" style="color:red;"> Enter Breast Height in cm </div>')
					.show(); // div.show();
		} else {
			$("#appendedBreastHeightName").remove();
		}
	}
}

function breastheightHide(evt) {
	$("#appendedBreastHeightName").remove();
	//  
	var charCode = (evt.which) ? evt.which : evt.keyCode

	return !(charCode > 31 && (charCode < 48 || charCode > 57));
}

function heightShow() {
	var heightId = $("#gheight").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedHeightName').length;
	if (length == 0) {
		if (heightId == "") {
			$("#height")
					.append(
							'<div id="appendedHeightName" style="color:red;"> Enter Height</div>')
					.show(); // div.show();
		} else {
			$("#appendedHeightName").remove();
		}
	}
}

function heightHide(evt) {
	$("#appendedHeightName").remove();
	//  
	var charCode = (evt.which) ? evt.which : evt.keyCode

	return !(charCode > 31 && (charCode < 48 || charCode > 57));
}

function heightKeyUp(evt) {
	
	var value2 = document.getElementById("gheight").value;
	var length = value2.length;
	if (evt.keyCode != 8) {

		if (length == 2) {
			value2 = value2 + ".";
			document.getElementById("gheight").value = value2;
		}

	}
}

function ageShow() {
	var ageId = $("#approxage").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedAgeName').length;
	if (length == 0) {
		if (ageId == "") {
			$("#age")
					.append(
							'<div id="appendedAgeName" style="color:red;"> Enter Age </div>')
					.show(); // div.show();
		} else {
			$("#appendedAgeName").remove();
		}
	}
}

function ageHide(evt) {
	$("#appendedAgeName").remove();
	//  
	var charCode = (evt.which) ? evt.which : evt.keyCode

	return !(charCode > 31 && (charCode < 48 || charCode > 57));
}

function conopyWidthShow() {
	var widthId = $("#cwidth").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedWidthName').length;
	if (length == 0) {
		if (widthId == "") {
			$("#width")
					.append(
							'<div id="appendedWidthName" style="color:red;"> Enter Width</div>')
					.show(); // div.show();
		} else {
			$("#appendedWidthName").remove();
		}
	}
}

function conopyWidthHide(evt) {
	$("#appendedWidthName").remove();
	//  
	var charCode = (evt.which) ? evt.which : evt.keyCode

	return !(charCode > 31 && (charCode < 48 || charCode > 57));
}

function conopyWidthKeyUp(evt) {
	 
	var value2 = document.getElementById("cwidth").value;
	var length = value2.length;
	if (evt.keyCode != 8) {

		if (length == 2) {
			value2 = value2 + ".";
			document.getElementById("cwidth").value = value2;
		}

	}
}

function locationShow() {
	var locationId = $("#locationId").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedLocationName').length;
	if (length == 0) {
		if (locationId == "") {
			$("#location")
					.append(
							'<div id="appendedLocationName" style="color:red;"> Enter Location</div>')
					.show(); // div.show();
		} else {
			$("#appendedLocationName").remove();
		}
	}
}

function locationHide() {
	$("#appendedLocationName").remove();

	return (event.charCode > 64 && event.charCode < 91)
			|| (event.charCode > 96 && event.charCode < 123);
}

function apartmentShow() {
	var apartmentId = $("#apartmentId").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedApartmentName').length;
	if (length == 0) {
		if (apartmentId == "") {
			$("#apartment")
					.append(
							'<div id="appendedApartmentName" style="color:red;"> Enter Location</div>')
					.show(); // div.show();
		} else {
			$("#appendedApartmentName").remove();
		}
	}
}

function apartmentHide() {
	$("#appendedApartmentName").remove();
}

function roadShow() {
	var roadId = $("#roadId").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedRoadName').length;
	if (length == 0) {
		if (roadId == "") {
			$("#road")
					.append(
							'<div id="appendedRoadName" style="color:red;"> Enter Road</div>')
					.show(); // div.show();
		} else {
			$("#appendedRoadName").remove();
		}
	}
}

function roadHide() {
	$("#appendedRoadName").remove();
}

function localityShow() {
	var localityId = $("#localityId").val();
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedLocalityName').length;
	if (length == 0) {
		if (localityId == "") {
			$("#locality")
					.append(
							'<div id="appendedLocalityName" style="color:red;"> Enter Locality</div>')
					.show(); // div.show();
		} else {
			$("#appendedLocalityName").remove();
		}
	}
}

function localityHide() {
	$("#appendedLocalityName").remove();
}

function msebCtcNoShow() {
	var msebCtcId = $("#msebCtcNo").val();
	 
	// var div = $("#verna").append('<div style="color:red;"> Enter Tree
	// Vernacular Name </div>');
	var length = $('#appendedMsebCtcNoName').length;
	if (length == 0) {

		if (msebCtcId == "") {
			$("#ctcNo")
					.append(
							'<div id="appendedMsebCtcNoName" style="color:red;"> Enter MSEB / CTC No.</div>')
					.show(); // div.show();
		} else {
			$("#appendedMsebCtcNoName").remove();
		}

	}

}

function msebCtcNoHide(e) {
	$("#appendedMsebCtcNoName").remove();

	var k;
	document.all ? k = e.keyCode : k = e.which;
	return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32
			|| k >= 191 || (k >= 48 && k <= 57));

}

// On Change Validations

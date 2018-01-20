var jsonData;
 var selULB;
 var selCons;
 var selUsage;
 var selRate;
 var selRoad;
 
$(function() {
	
	
	//$('#new-taxcal').modal('show');
	
	$('#ulb').change(function(){
		$("#alv").html("00.00");
		$("#rv").html("00.00");
		$("#area").val("");
		 resetList();
		 selULB = $(this).val();
		 getJSONData(selULB)
	});
	$('#cons').change(function(){
		resetCalVal();
		$('#usage').val('0'); 
		$('#subusage').val('0'); 
		$('#roadlevel').val('0'); 
		
		selCons = $(this).val();
	});
	$('#usage').change(function(){
		resetCalVal();
		selUsage = $(this).val();
		loadSubUsage();
	});
	
	
	$('#subusage').change(function(){
	 
	});
	$('#roadlevel').change(function(){
		resetCalVal();
		selRoad = $(this).val();
	});
	
	$("#area").keyup(function() {
		calALV();
	});
}); //READY

function reloadForm(){
	//$("#taxForm").reload();
	$("#taxForm")[0].reset();
}
function calALV(){
	var area = $("#area").val();
//	console.log(area);
	var rate = getRateVal();
	//console.log(" >>>rate "+rate);
	var alv = (parseFloat(area) * parseFloat(rate));
	if(selRoad == "mr"){
		alv = (parseFloat(alv) * 1.1);
	}else{
		alv = (parseFloat(alv) * 1);
	}
	//$("#alv").html(alv.toFixed(2));
	$("#alv").html(Math.round(alv));
	
	var rv = (parseFloat(alv) *  0.9);
	//$("#rv").html(rv.toFixed(2));
	$("#rv").html(Math.round(rv));
	
	getTaxDetails(rv);
	
}
function getJSONData(selULBv){
	 //$.getJSON('data/taxJson.json', function(data) {
		 $.getJSON(taxCalData, function(data) {
		 
		 jsonData = data;
        $.each(data.ulb, function(key, val) {
        	if(key == selULBv){
        		//console.log(".... "+key + " = "+val.construction);
        		/* $.each(val.construction, function(key, val) {
        			console.log(".... "+key + " = "+val);
        			
        		}); */
        		loadConsList(val);
        		loadUsageList(val);
        		loadRoadList(val)
        	}
        });
	 });
}

function loadSubUsage(){
 	 $.each(jsonData.ulb, function(key, val) {
     	if(key == selULB){
      		$.each(val.subusage, function(key1, val1) {
     			if(key1 == selUsage){
      				loadSubList(val1);
     			}
     		});
     	}
     });
}

function getRateVal(){
	var valR = 0;
	 $.each(jsonData.ulb, function(key, val) {
		 if(key == selULB){
			 $.each(val.unitrate, function(key1, val1) {
				// console.log("..@@.. "+key1 + " = "+val1);
				// console.log("..@@.. "+key1 + " = "+selCons);
				 if(key1 == selCons){
					 $.each(val1, function(key2, val2) {
						 if(key2 == selUsage ){
							// console.log("..FINAL.. "+val2 + " = "+selCons);
							 valR = val2;
						 }
					 });
				 }
				 	 
	     	});
			 
		 }
	 });
	 return valR;
}

function getTaxDetails(rv){
	$("#taxtbl").empty();
	$.each(jsonData.ulb, function(key, val) {
		 if(key == selULB){
			 $.each(val.tax, function(key1, val1) {
				 if(key1 == selUsage ){
					 //console.log("..@@.. "+key1 + " = "+val1);
					 $.each(val1, function(key2, val2) {
						// console.log("..@@.. "+key2 + " = "+val2);
						 var isF = false;
						 if (typeof val2 == 'object'){
							 $.each(val2, function(key3, val3) {
								 var maxTax = 0;
								/*  for (a in val3 ) {
									 maxTax = val3[0];
								 }
								 if(rv >= maxTax){
									 var taxVal = (parseFloat(rv) * parseFloat(key3))/100;
									 $('#taxtbl').append('<tr><td>'+key2+'</td><td>'+key3+'%</td><td align="right">'+taxVal+'</td></tr>');
									 
								 }else{ */
									// console.log("..****.. "+Math.round(rv));
									 for (a in val3 ) {
										 if(!isF){
											 //console.log("..****.. "+Math.round(val3[0])+" >>> "+Math.round(val3[1]));
											 //if(Math.round(val3[0]) >= Math.round(rv) && Math.round(val3[1]) <= Math.round(rv) ){
											 if( Math.round(rv) >= Math.round(val3[0]) &&  Math.round(rv)  <= Math.round(val3[1])  ){
												 isF = true;
										//		 console.log("####### >>>% "+key3);
												 var taxVal = (parseFloat(rv) * parseFloat(key3))/100;
												 $('#taxtbl').append('<tr><td>'+key2+'</td><td>'+key3+'%</td><td align="right">'+Math.round(taxVal)+'</td></tr>');
											 }
										//	 console.log("** IS FOUND "+isF);
											/*  if(!isF){
												 var maxTaxRate = 0;
												 for (z in val3 ) {
											 		console.log("** LAST VAL "+val3[1]);
											 		maxTaxRate = val3[1];
												 }
												 var taxVal = (parseFloat(rv) * parseFloat(maxTaxRate))/100;
												 $('#taxtbl').append('<tr><td>'+key2+'</td><td>'+key3+'%</td><td align="right">'+taxVal+'</td></tr>');
												 isF = true;
											 } */
										 }
									} 
								 //}
							 })
						 }else{
							 
							 var taxVal = (parseFloat(rv) * parseFloat(val2))/100;
							 $('#taxtbl').append('<tr><td class="t">'+key2+'</td><td class="p">'+val2+'%</td><td align="right" class="pv">'+Math.round(taxVal)+'</td></tr>');	 
						 }
						 
					 });
					 
				 }
				 
			 });
			 
		 }
	}); 
}

function loadConsList(objects){
	$('#cons').empty();
	$('#cons').append($('<option>',
     {
        value: "0",
        text : "-- Select Construction --" 
	}));
	$.each(objects.construction, function(key, val) {
	 	$('#cons').append($('<option>',
	     {
	        value: key,
	        text : val 
		}));
	});
}
function loadUsageList(objects){
	$('#usage').empty();
	$('#usage').append($('<option>',
     {
        value: "0",
        text : "-- Select Usage --" 
	}));
	$.each(objects.usage, function(key, val) {
	 	$('#usage').append($('<option>',
	     {
	        value: key,
	        text : val 
		}));
	});
}

function loadRoadList(objects){
	
	$('#roadlevel').empty();
	$('#roadlevel').append($('<option>',
     {
        value: "0",
        text : "-- Select Road Level --" 
	}));
	$.each(objects.road, function(key, val) {
	 	$('#roadlevel').append($('<option>',
	     {
	        value: key,
	        text : val 
		}));
	});
}

function loadSubList(val1){
	$('#subusage').empty();
	$('#subusage').append($('<option>',
     {
        value: "0",
        text : "-- Select Sub Usage --" 
	}));
	$.each(val1, function (index, value) {
		$('#subusage').append($('<option>',
	     {
	        value: "",
	        text : value 
		}));    
	}); 
}
function resetCalVal(){
	$("#area").val('');
	$("#alv").html("00.00");
	$("#rv").html("00.00");
	$("#taxtbl").empty();
}
function resetList(){
	$("#taxtbl").empty();
	$('#subusage').empty();
	$('#roadlevel').empty();
	$('#usage').empty();
	$('#cons').empty();
}
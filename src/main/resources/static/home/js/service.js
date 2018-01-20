
var servId="serviceId";
var serverPage="servicePage";
$(document).ready(function() {
	
	$("#change-ownerLink").click(function()
	{
		console.log("dataSet----"+dataSet)
		$.each(dataSet, function (i, service) 
				{
				
					if(service.serviceId == "30")
					{						
						$("#serviceId-change-owner").val(service.serviceId);
					}
					
				});
		$("#change-owner").modal('show');
		
	});
	$("#newassApply").click(function(){
		
	});
	$("#noduecerPropApply").click(function(){
		console.log($("#"+servId+"noduecerti").val());
		loadApplicationReqPage($("#"+servId+"-noduecerti").val(),$("#"+serverPage+"-noduecerti").val(),"property");
	});
	$("#noduecerWaterApply").click(function(){
		console.log($("#"+servId+"noduecerti").val());
		loadApplicationReqPage($("#"+servId+"-noduecerti").val(),$("#"+serverPage+"-noduecerti").val(),"water");
	});
	$("#duplicateLic").click(function(){
		console.log($("#"+servId+"-duplicateLic").val());
		loadApplicationTradeReqPage($("#"+servId+"-duplicateLic").val(),$("#"+serverPage+"-duplicateLic").val(),"market");
	});
	$("#issuanceLic").click(function(){
		console.log($("#"+servId+"-issuanceLic").val());
		loadApplicationTradeReqPage($("#"+servId+"-issuanceLic").val(),$("#"+serverPage+"-issuanceLic").val(),"market");
	});
	$("#renewalLicBtn").click(function(){
		console.log($("#"+servId+"-renewalLic").val());
		loadApplicationTradeReqPage($("#"+servId+"-renewalLic").val(),$("#"+serverPage+"-renewalLic").val(),"market");
	});
	$("#renewalLic").click(function(){
		console.log($("#"+servId+"-renewalLic").val());
		loadApplicationTradeReqPage($("#"+servId+"-renewalLic").val(),$("#"+serverPage+"-renewalLic").val(),"market");
	});
	$("#change-ownerApply").click(function(){
		console.log($("#"+servId+"-change-owner").val());
		loadApplicationReqPage($("#"+servId+"-change-owner").val(),$("#"+serverPage+"-change-owner").val(),"water");
	});
	
	
	
	$("#tnpDisconnectionApply").click(function(){
		console.log($("#"+servId+"-tnpdisconnection").val());
		console.log("Permanent and temp disc--"+$("#"+serverPage+"-tnpdisconnection").val())
		loadApplicationReqPage($("#"+servId+"-tnpdisconnection").val(),$("#"+serverPage+"-tnpdisconnection").val(),"water");
	});
	
	$("#nochoardingbanner").click(function(){
		console.log($("#"+servId+"nochoardingbanner").val());
		loadApplicationReqPage($("#"+servId+"-nochoardingbanner").val(),$("#"+serverPage+"-nochoardingbanner").val(),"noc");
	});

	
	
	$("#newWaterConnection").click(function(){
		console.log($("#"+servId+"-newwater").val());
		loadApplicationReqPage($("#"+servId+"-newwater").val(),$("#"+serverPage+"-newwater").val(),"water");
	});
	
	/*Added by Brijesh Soni*/
	$("#treeSurveyApply").click(function(){
		console.log($("#"+servId+"-treeSurvey").val());
		console.log($("#"+serverPage+"-treeSurvey").val())
		loadApplicationReqPage($("#"+servId+"-treeSurvey").val(),$("#"+serverPage+"-treeSurvey").val(),"treecensus");
	});
	/*End by Brijesh Soni*/	
	
	$("#changeConnectionSize").click(function(){
		console.log($("#"+servId+"-changeConSize").val());
		loadApplicationReqPage($("#"+servId+"-changeConSize").val(),$("#"+serverPage+"-changeConSize").val(),"water");
	});
	
	
	$("#changeofUsage").click(function(){
		console.log($("#"+servId+"-changeUsage").val());
		loadApplicationReqPage($("#"+servId+"-changeUsage").val(),$("#"+serverPage+"-changeUsage").val(),"water");
	});
	
});

	

function loadApplicationReqPage(servid,url,module){
	window.location.href = servicePage+"/"+servid+"/"+url+"/"+module;
}
function loadApplicationTradeReqPage(servid,url,module){
	window.location.href = tradeServicePage+"/"+servid+"/"+url+"/"+module;
}




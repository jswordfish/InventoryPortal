$(document).ready(function(){
	
	/*districtId
	autoUlbId
	goToUlbSite*/
	
	var ulbUrl = "";
	var disId = "";
	
	$('#districtId').change(function(){
		
		disId = $('#districtId option:selected').val();
		
		if(parseInt(disId) > 0)
		{
			$.ajax({
			    type: "POST",
			    url: getDistrictUlb,
			    dataType : 'json',
			    data: "disId="+disId,
			    async: false,
			    headers: {                  
			        "Authorization": "Basic " + btoa("ashok:pass")
			    },
			    success: function (data)
			    {
			    	console.log("getDistrictUlb Data -- "+data);
			    	
			    	$('#autoUlbId').empty();
			    	$('#autoUlbId').append('<option value="0">- Select ULB -</option>');
			    	$.each(data, function (i, result) 
		     	   { 
			    		 $('#autoUlbId').append($("<option></option>").val(result.ulbDomainAddress).html(result.ulbNameEn));
		     	   });
			    }
		   	});
		}
		
	});
	
	$('#autoUlbId').change(function(){
		
		ulbUrl = $('#autoUlbId option:selected').val();
	});
	
	/*<a href="http://portal.mahaulb-beta.org/roha/" target="blank">Roha Muncipal Council</a>*/
	
$('#goToUlbSite').click(function(){
	
	if(!parseInt(disId) > 0)
	{
		PNotify.removeAll();
		new PNotify({
              title: 'Select a District ...',
              styling: 'bootstrap3',
              type: 'error'
          });
		$('#districtId').focus();
		return false;
	}
	else if(ulbUrl == "0")
	{
		PNotify.removeAll();
		new PNotify({
              title: 'Select an ULB ...',
              styling: 'bootstrap3',
              type: 'error'
          });
		$('#autoUlbId').focus();
		return false;
	}
	else
	{
		window.location.href = ulbUrl;
	}
		
	
	});
});
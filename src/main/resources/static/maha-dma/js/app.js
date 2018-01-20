
$(document).on('click', "#ownerDetailstbl .btnAdded", function(e){
	e.preventDefault();
	var ownerDetailsTbl = jQuery(this).parents('.table-container');
	var ownerDetails = ownerDetailsTbl.next("#owner-details");
	
	if(!ownerDetails.is(":visible")){
		ownerDetails.slideDown(400);
	}
});

$(document).on('click', "#ownerDetailstbl .btnDeleted", function(e){
	e.preventDefault();
	var ownerDetailsTbl = jQuery(this).parents('.table-container');
	var ownerDetails = ownerDetailsTbl.next("#owner-details");
	
	ownerDetails.slideUp(400);
	
	if(ownerDetailsTbl.find('tr').length>2){
		ownerDetailsTbl.find('tr').last().remove();
	}
});


$(document).on('click', "#ownerDetailstbl .btnDeleted", function(e){
	e.preventDefault();
	var ownerDetailsTbl = jQuery(this).parents('.table-container');
	var ownerDetails = ownerDetailsTbl.next("#owner-details");
	
	ownerDetails.slideUp(400);
	
	if(ownerDetailsTbl.find('tr').length>2){
		ownerDetailsTbl.find('tr').last().remove();
	}
});


jQuery('.radio-controls input[type="radio"]').on("change", function(){
	$('.radio-fieldset').hide(0);
	$("#"+$(this).attr("data-id")).show(0);
});

//jQuery(".datetime-control").datePicker();
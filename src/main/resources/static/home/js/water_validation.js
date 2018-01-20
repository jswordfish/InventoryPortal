





function waterFormValid(){
	
var output=postcode_validate();
var op=house_no_vald();

	$("#WaterConsumer_form")
	.validate(
			{
				rules : {
					contactNumberOwner : {
						minlength : 10,
						maxlength : 10,
						digits : true
					},
					pincode : {
						minlength : 6,
						maxlength : 6,
						digits : true
					},
					
					
					uidId : {
						digits : true,
						minlength : 12,
						maxlength : 12
						
					}
					
				},
				messages : {
					contactNumberOwner : {
						minlength : "Please enter 10 digit mobile no",
						maxlength : "Please enter 10 digit mobile no",
						digits : "Please enter numbers only"
					},
					pincode : {
						minlength : "Please enter 6 digit pincode",
						maxlength :  "Please enter 6 digit pincode",
						digits : "Please enter numbers only"
					},
					uidId : {
						digits : "Please Enter digits only",
						minlength : "Please enter 12 digit adhar no",
						maxlength : "Please enter 12 digit adhar no"
						
					}
				
			
				}
			});
	
	if ($("#WaterConsumer_form").valid()) {
		
		if(output==true && op==true){
		
		 	
		return true;
        /*var form = $("#WaterConsumer_form");*/
        /*form.submit();*/  // form submits and dialog closes
		}
    } else {
        return false;  // keeps dialog open
       
    }
	

}
		
function postcode_validate()
{

	var zipcode=document.getElementById("pincode").value;

    var regPostcode = /^([1-9])([0-9]){5}$/;

    obj = document.getElementById("status");
    
     if(zipcode.length==6){
	    if(regPostcode.test(zipcode) == false)
	    {  
	    	obj.innerHTML = "Postcode is not yet valid.";
	        return false;
	    }
	    else
	    {
	        
	        return true;
	    }
    }

}

function postcode_vald(zipcode)
{
	
    obj = document.getElementById("status");
    if(zipcode.length>=0){
    	 obj.innerHTML = "";
    }
    
    
}



function house_no_vald()
{
	var house_no=document.getElementById("flatNoOwner").value;
	   obj = document.getElementById("status0");
    var reghouseno=/^[a-zA-Z0-9-/]+$/;
    if(house_no.length==0){
   	 obj.innerHTML = "";
   }
    
    if(house_no.length>0){
	    if(reghouseno.test(house_no) == false)
	    {
	    	obj.innerHTML = "Please use alphanumeric, - and /";
	        return false;
	    }
	    else
	    {
	        
	        return true;
	    }
    }

}
function house_no_valdi(house_n){
	   var reghouseno=/^[a-zA-Z0-9-/]+$/;
	  obj = document.getElementById("status0");
	  var reghouseno=/^[a-zA-Z0-9-/]+$/;
	    if(house_n.length==0){
	    	 obj.innerHTML = "";
	    }
	    else{
		    if(reghouseno.test(house_n) == false)
		    {
		    	obj.innerHTML = "Please use alphanumeric, - and /";
		        
		    }
	    }
}



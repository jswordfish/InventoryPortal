jQuery.validator.addMethod('selectchk', function (value) {
        return (value != '0');
    }, "please select");


function step1_validation(){
	
	jQuery.validator.addMethod("pin_ind", function(value, element) {
		  // allow any non-whitespace characters as the host part
		  return this.optional( element ) || /^(?!.*([0-9])\1{4})[0-9]+$/.test( value );
		}, 'Please enter a valid pincode.');
	
	
	
$("#subForm")
	.validate(
			{
				rules : {
					propNoOld : {
						minlength : 1,
						maxlength : 25,
						required : true
						
					},
					citysurno : {
						minlength : 1,
						maxlength : 25,
						required : true
					},
					flatno : {
						minlength : 1,
						maxlength : 25,
						required : true
					},
					housenameListId : {
						minlength : 1,
						maxlength : 25,
						required : true
					},
					streetListId : {
						minlength : 1,
						maxlength : 25,
						required : true
					},
					areaListId : {
						minlength : 1,
						maxlength : 25,
						required : true
					},
					pincode : {
						minlength : 6,
						maxlength : 6,
						digits : true,
						required : true,
						pin_ind : true
					},
					landmarkListId : {
						minlength : 1,
						maxlength : 25,
						required : true
					},
					stateId : {
						selectchk : true
					},
					city : {
						selectchk : true
					},
					dist : {
						selectchk : true
					},
					talu : {
						selectchk : true
					},
					wzblevel1ID : {
						selectchk : true
					},
					wzblevel2ID : {
						selectchk : true
					},
					awzlevel1ID : {
						selectchk : true
					},
					elwlevel1ID : {
						selectchk : true
					}
					
					
					
				},
				messages : {
					propNoOld : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					citysurno : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					flatno : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					housenameListId : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",	
						required : "This field is required."	
					},
					streetListId : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					areaListId : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					pincode : {
						minlength : "Please enter 6 digits",
						maxlength : "Please enter 6 digits",
						digits : "Please enter numbers only",
						required : "This field is required."
					},
					landmarkListId : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					/*stateId : {
						required : "This field is required."
					},
					city : {
						required : "This field is required."
					},
					
					wzblevel1ID : {
						required : "This field is required."
					},
					wzblevel2ID : {
						required : "This field is required."
					},
					awzlevel1ID : {
						required : "This field is required."
					},
					elwlevel1ID : {
						required : "This field is required."
					}*/
					
					
				}
			});
	
	if ($("#subForm").valid()) {
	   return true;
    
    } else {
        return false;  
       
    }
	

}

// step-2 validationsssssssssssssssssss started

// step-3 validationsssssssssssssssssss end
function step2_validation(){
	
	
	jQuery.validator.addMethod("letter_validation", function(value, element) {
		  // allow any non-whitespace characters as the host part
		  return this.optional( element ) || /^(?!.*([A-Za-z])\1{4})[A-Za-z]+$/.test( value );
		}, 'Please enter a valid name.');
	
	
	jQuery.validator.addMethod("mbl_vldtn", function(value, element) {
		  // allow any non-whitespace characters as the host part
		  return this.optional( element ) || /^(?!.*([0-9])\1{4})[0-9]+$/.test( value );
		}, 'Please enter a valid mobile no.');
	
	jQuery.validator.addMethod("adhar_vldtn", function(value, element) {
		  // allow any non-whitespace characters as the host part
		  return this.optional( element ) || /^(?!.*([0-9])\1{4})[0-9]+$/.test( value );
		}, 'Please enter a valid adhar no.');

	jQuery.validator.addMethod("pan_vldtn", function(value, element) {
		  // allow any non-whitespace characters as the host part
		  return this.optional( element ) || /^[A-Za-z]{5}\d{4}[A-Za-z]{1}$/.test( value );
		}, 'Please enter a valid pan no.');
	
	/*jQuery.validator.addMethod('selectchk', function (value) {
        return (value != '0');
    }, "please select");*/
	
	$("#ownerFormData")
		.validate(
				{
					rules : {
						firstNameRg : {
							minlength : 1,
							maxlength : 25,
							required : true
						},
						lastNameRg : {
							minlength : 1,
							maxlength : 25,
							required : true
						},
						propowner_fname_e : {
							minlength : 1,
							maxlength : 25,
							required : true,
							letter_validation : true
						},
						lastNameEn : {
							minlength : 1,
							maxlength : 25,
							required : true,
							letter_validation : true
						},
						organisation : {
							minlength : 1,
							maxlength : 25
						},
						propowner_mno : {
							digits : true,
							minlength : 10,
							maxlength : 10
							
						},
						propowner_adharno : {
							digits : true,
							minlength : 12,
							maxlength : 12,
							adhar_vldtn : true
							
						},
						propowner_panno : {
							minlength : 10,
							maxlength : 10,
							pan_vldtn : true
							
						},
						propowner_pref_e : {
							selectchk : true
						}
					
				},
				messages : {
					firstNameRg : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					lastNameRg : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					propowner_fname_e : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					lastNameEn : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					organisation : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters."
					},
					propowner_mno : {
						digits : "Please enter numbers only",
					    minlength : "Please enter 10 digits mob",
						maxlength : "Please enter 10 digits mob"
						
					},
					propowner_adharno : {
						digits : "Please enter numbers only",
					    minlength : "Please enter 12 digits adhar no",
						maxlength : "Please enter 12 digits adhar no"
						
					},
					propowner_panno : {
					    minlength : "Please enter valid pan no",
						maxlength : "Please enter valid pan no"
						
					}
				}

				});
			
			if ($("#ownerFormData").valid()) {
			   return true;
		    
		    } else {
		        return false;  
		       
		    }
			
			
			 
		}
						
// step-3 validationsssssssssssssssssss started
function step3_validation(){
	
	

	
	jQuery.validator.addMethod('selectcheck', function (value) {
        return (value != '0');
    }, "please select");
	
	
		$("#propertyassessment")
	.validate(
			{
				rules : {
					propTypeId : {
						selectcheck : true  
					},
					propSubTypeId : {
						selectcheck : true 
					},
					propUsageTypeId : {
						selectcheck : true 
					},
					propUsageSubTypeId: {
						selectcheck : true 
					},
					propBillTypeId: {
						selectcheck : true
					},
					deliveryBillType : {
						selectcheck : true
					},
					currentDateId : {
						required : true
					},
					firstDateId : {
						required : true
					},
					reassementDateId : {
						required : true
					},
					lastassementDateId : {
						required : true
					}
				},
				messages : {
					currentDateId : {
						required : "This field is required."
					},
					firstDateId : {
						required : "This field is required."
					},
					reassementDateId : {
						required : "This field is required."
					},
					lastassementDateId : {
						required : "This field is required."
					}
				
					
				}
			
	
	});

		if ($("#propertyassessment").valid()) {
		return true;
		
		} else {
		return false;  
		
		}
	 
	 
}
// step-3 validationsssssssssssssssssss end


// flat form validationsssssssssssssssssss started 
function flat_validations(){
	 
	
		
		
		jQuery.validator.addMethod("letter_validation1", function(value, element) {
			  // allow any non-whitespace characters as the host part
			  return this.optional( element ) || /^(?!.*([A-Za-z])\1{4})[A-Za-z]+$/.test( value );
			}, 'Please enter a valid name.');
		
		
		jQuery.validator.addMethod("mbl_vldtn1", function(value, element) {
			  // allow any non-whitespace characters as the host part
			  return this.optional( element ) || /^(?!.*([0-9])\1{4})[0-9]+$/.test( value );
			}, 'Please enter a valid mobile no.');
		
		jQuery.validator.addMethod("adhar_vldtn1", function(value, element) {
			  // allow any non-whitespace characters as the host part
			  return this.optional( element ) || /^(?!.*([0-9])\1{4})[0-9]+$/.test( value );
			}, 'Please enter a valid adhar no.');

		jQuery.validator.addMethod("pan_vldtn1", function(value, element) {
			  // allow any non-whitespace characters as the host part
			  return this.optional( element ) || /^[A-Za-z]{5}\d{4}[A-Za-z]{1}$/.test( value );
			}, 'Please enter a valid pan no.');
		$("#flateFormTable")
		.validate(
				{
					rules : {
						fnameRg : {
							minlength : 1,
							maxlength : 25,
							required : true
						},
						lnameRg : {
							minlength : 1,
							maxlength : 25,
							required : true
						},
						fname : {
							minlength : 1,
							maxlength : 25,
							required : true,
							letter_validation1 : true
						},
						lname : {
							minlength : 1,
							maxlength : 25,
							required : true,
							letter_validation1 : true
						},
						org : {
							minlength : 1,
							maxlength : 25
						},
						mno : {
							digits : true,
							minlength : 10,
							maxlength : 10
							
						},
						adharno : {
							digits : true,
							minlength : 12,
							maxlength : 12,
							adhar_vldtn1 : true
							
						},
						panno : {
							minlength : 10,
							maxlength : 10,
							pan_vldtn1 : true
							
						}
					
				},
				messages : {
					fnameRg : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					lnameRg : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					fname : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					lname : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters.",
						required : "This field is required."
					},
					org : {
						minlength : "Please enter at least 1 characters",
						maxlength : "Please enter no more than 25 characters."
					},
					mno : {
						digits : "Please enter numbers only",
					    minlength : "Please enter 10 digits mob",
						maxlength : "Please enter 10 digits mob"
						
					},
					adharno : {
						digits : "Please enter numbers only",
					    minlength : "Please enter 12 digits adhar no",
						maxlength : "Please enter 12 digits adhar no"
						
					},
					panno : {
					    minlength : "Please enter valid pan no",
						maxlength : "Please enter valid pan no"
						
					}
				}

		});
		
		if ($("#flateFormTable").valid()) {
		return true;
		
		} else {
		return false;  
		
		}


}
	
	 


// validationsssssssssssssssssss end



//flat details validations
function flat_details_validations(){
	 
	
	
	$("#flateDetailsForm")
	.validate(
			{
				rules : {
					flatNo : {
							required : true
						},
						constructionarea : {
							required : true
						},
						ownerTypeFlate : {
							required : true
						},
						carpetArea : {
							required : true
						},
						taxstartdateId : {
							required : true
						},
						exemptedArea : {
							required : true
						},
						usageTypeFlate : {
							required : true
						},
						/*standardRate : {
							required : true
						},*/
						usageSubTypeFlate : {
							required : true
						},
						totalarea : {
							required : true
						},
						/*annualRent : {
							required : true
						},*/
						tmCmLookupDetHierarchicalByLookupDetHierId1ConsClass : {
							required : true
						},
						flatAlv : {
							required : true
						},
						flatRv : {
							required : true
						}
				
				},
				messages : {
					flatno : {
						required : "This field is required."
					},
					constructionarea : {
						required : "This field is required."
					},
					ownerTypeFlate : {
						required :  "This field is required."
					},
					carpetArea : {
						required :  "This field is required."
					},
					taxstartdateId : {
						required :  "This field is required."
					},
					exemptedArea : {
						required :  "This field is required."
					},
					usageTypeFlate : {
						required :  "This field is required."
					},
					/*standardRate : {
						required :  "This field is required."
					},*/
					usageSubTypeFlate : {
						required :  "This field is required."
					},
					totalarea : {
						required :  "This field is required."
					},
					/*annualRent : {
						required :  "This field is required."
					},*/
					tmCmLookupDetHierarchicalByLookupDetHierId1ConsClass : {
						required :  "This field is required."
					},
					flatAlv : {
						required :  "This field is required."
					},
					flatRv : {
						required :  "This field is required."
					}
				}

			});

		
	
			if ($("#flateDetailsForm").valid()) {
				if(carpet()&&alv()){  
					
					return true;
				}
			
			} else {
			return false;  
			
			}


	}

//room details validations
function room_details_validations(){
	 
	
	
	$("#roomFlateDetails")
	.validate(
			{
				rules : {
					tmCmLookupDetByLookupDetIdRoomType : {
							required : true
						},
						roomcurrentAssessmentDate : {
							required : true
						},
						roomWidth : {
							required : true
						},
						roomLength : {
							required : true
						},
						roombuiltupArea : {
							required : true
						},
						roomcarpetArea : {
							required : true
						},
						roomtotalarea : {
							required : true
						},
						roomstandardRate : {
							required : true
						},
						roomannualRent : {
							required : true
						},
						roomAlv : {
							required : true
						},
						roomRv : {
							required : true
						},
						/*roomexemptedArea : {
							required : true
						}*/
				
				},
				messages : {
					tmCmLookupDetByLookupDetIdRoomType : {
						required : "This field is required."
					},
					roomcurrentAssessmentDate : {
						required : "This field is required."
					},
					roomWidth : {
						required :  "This field is required."
					},
					roomLength : {
						required :  "This field is required."
					},
					roombuiltupArea : {
						required :  "This field is required."
					},
					roomcarpetArea : {
						required :  "This field is required."
					},
					roomtotalarea : {
						required :  "This field is required."
					},
					roomstandardRate : {
						required :  "This field is required."
					},
					roomannualRent : {
						required :  "This field is required."
					},
					roomAlv : {
						required :  "This field is required."
					},
					roomRv : {
						required :  "This field is required."
					},
					/*roomexemptedArea : {
						required :  "This field is required."
					}*/
				}

			});
			
			if ($("#roomFlateDetails").valid() && myroomFunction11() && myroomFunction22()) {
				
				
				
				return true;
			
			} else {
			return false;  
			
			}


	}

function carpet() {
	
    var x = document.getElementById("constructionarea").value;
     var y = document.getElementById("carpetArea").value;
     var z = document.getElementById("exemptedArea").value;
     
     
    if(parseInt(x) < parseInt(y)){
    	
       alert("Carpet area should not be greater than construction area");
       return false;
    }else{
    	  if(parseInt(y)<parseInt(z)){
    	    	 
    	       alert("exemptedArea should not be greater than carpetArea");
    	       return false;
    	    }else{
    	    	return true;
    	    }
    }
 
   
  
}

function alv() {
	
	    
	     var alv = document.getElementById("flatAlv").value;
	     var rv = document.getElementById("flatRv").value;
	    if(parseInt(alv) < parseInt(rv)){
	       alert("RV should not be greater than ALV");
	       return false;
	    }else{
	    	return true;
	    }
	}



//room  validations start

	function myroomFunction11() {
	
		    var x = document.getElementById("roombuiltupArea").value;
		     var y = document.getElementById("roomcarpetArea").value;
		     var z = document.getElementById("roomexemptedArea").value;
		     
		     
		    if(parseInt(x) < parseInt(y)){
		    	
		       alert("Carpet area should not be greater than construction area");
		       return false;
		    }else{
		    	if(parseInt(y)<parseInt(z)){
		    	 
			       alert("exemptedArea should not be greater than carpetArea");
			       return false;
			    }else{return true;}
		    	
		    }
		    
		 
		   
		    
		}
		
		function myroomFunction22() {
			
			    
			     var alv = document.getElementById("roomAlv").value;
			     var rv = document.getElementById("roomRv").value;
			    if(parseInt(alv) < parseInt(rv)){
			       alert("RV should not be greater than ALV");
			       return false;
			    }else{return true;}
			}
		
	

//room validations end
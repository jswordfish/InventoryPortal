$( document ).ready(function() {
		
// Determine support for Geolocation
if (navigator.geolocation) {
	// Locate position
	navigator.geolocation.getCurrentPosition(displayPosition, errorFunction);
	
} else {
	//Remove Alert
	//alert('It seems like Geolocation, which is required for this page, is not enabled in your browser. Please use a browser which supports it.');
}

	var map;
	
	
	
	 
	
// Success callback function
function displayPosition(pos) {
	var mylat = pos.coords.latitude;
	var mylong = pos.coords.longitude;
	var thediv = document.getElementById('locationinfo');
	
	$("#lon").val(mylong);	
	$("#lat").val(mylat);
	
	/* thediv.innerHTML = '<p>Your longitude is :' +
		mylong + ' and your latitide is ' + mylat + '</p>'; */

//Load Google Map
var latlng = new google.maps.LatLng(mylat, mylong);
	var myOptions = {
	    //minZoom: 5,
	    //maxZoom: 15,
		zoom: 15,
		center: latlng,
		mapTypeId: google.maps.MapTypeId.HYBRID
	};

var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

google.maps.event.addListener(map,'click',function(event) {
    var lat = event.latLng.lat();
    var lng  =  event.latLng.lng();
    
    $("#lon").val(lng);	
	$("#lat").val(lat);
    
});

//Add marker
var marker = new google.maps.Marker({
		 position: latlng,
		 map: map,
		 title:"You are here"
	 });
}

// Error callback function
function errorFunction(pos) {
	//Remove Alert
	//alert('Error!'); /**/
}

	});
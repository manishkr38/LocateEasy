src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places">
if (navigator.geolocation) {
navigator.geolocation.getCurrentPosition(success);
} else {
alert("Geo Location is not supported on your current browser!");
}
function success(position) {
var lat = position.coords.latitude;
var long = position.coords.longitude;
var city=position.coords.locality;
var myLatlng = new google.maps.LatLng(lat, long);
var myOptions = {
center: myLatlng,
zoom: 12,
mapTypeId: google.maps.MapTypeId.ROADMAP
};
var map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);
var marker = new google.maps.Marker({
position: myLatlng,
title: "lat: " + lat + " long: " + long
});

marker.setMap(map);
var infowindow = new google.maps.InfoWindow({ content: "<b>User Address</b><br/> Latitude:"+lat+"<br /> Longitude:"+long+"" });
infowindow.open(map, marker);
}
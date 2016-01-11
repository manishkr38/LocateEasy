<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>Locate on map</title>
  <meta name="description" content="Doctors and Hospitals" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/locate.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
   



</head>

<body>
  <div id="main">
  
    <div id="header">
	<div id="header_left">
	    <div id="welcome">
	      <h1>Locate Easy</h1>
	    </div><!--close welcome-->
		
	   <div id="welcome_slogan">
	      <h1>Medical and Health care</h1>
	    </div>
	
		<!--close welcome_slogan-->
		
	 
    </div><!--close header-->
	
	
  </div>
  
  
	<div id="menubar">
      <ul id="menu">
         <li><a href="index.html">Home</a></li>
       <li><a href="categorynew.jsp">Category</a></li>
        <li><a href="services.html">Services</a></li>
        <li><a href="donate.html">Donate</a></li>
		 <li><a href="AddDoctor/login.html">Join Us</a></li>
		 <li class="current"><a href="locateus.jsp">Locate</a></li>
		   <li><a href="aboutus.jsp">About Us</a></li>
      </ul>
    </div>	
    
	<div id="site_content">		

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Related categories</h2>
          
		  <div id="navcontainer">
              <ul id="navlist">
             <li><a href="onlineBloodDonation/BloodRequest/displayBloodReq.jsp">Blood Requirement</a></li>
              <li><a href="onlineBloodDonation/BloodDonor/displayBloodDonor.jsp">Blood Donors</a></li>
              <li><a href="AddDoctor/displayData.jsp">Doctors</a></li>
			  <li><a href="selectType.jsp?param=private">Hospital-private</a></li>
              <li><a href="selectType.jsp?param=goverment">Hospital-govt</a></li>
              <li><a href="ambulance.jsp?param=yes">Ambulance service </a></li>
			  <li><a href="selectCat.jsp?param=Surgeon">Surgeon</a></li>
			  <li><a href="selectCat.jsp?param=Dentist">Dentist</a></li>
			  <li><a href="selectCat.jsp?param=Eye doctor">Eye Doctor</a></li>
			  <li><a href="selectCat.jsp?param=Homeopathic">Homeopathic</a></li>
			   <li><a href="selectCat.jsp?param=Ayurvedic">Ayurvedic Doctor</a></li>
			  <li><a href="selectCat.jsp?param=veterinary doctor">veterinary doctor</a></li>
              </ul>
              </div>
          
		  
		  </div>
        </div>  		
		
			
        <div class="sidebar">
          <div class="sidebar_item">
            <h2>Help Line</h2>
            <p>Phone: 08057023825</p>
            <p>Email: <a href="">manishkr38@gmail.com</a></p>
          </div> 
        </div>
       </div>
	
	<div id="right_content">
	   	 
	 	 
	  <div id="content">
         <h1>you are here!</h1>
		  
		  
		  
		  
		  
     <div id="map-canvas">     </div>
		  
		  
		  
		  
		  
		  
		  
		  
	 
      </div><!--close content-->  

</div>	  
	</div><!--close site_content--> 
    
	<div id="content_bottom">
	  <div class="content_bottom_container_box">
		<h4>Locate on Map</h4>
	    <p> Get your location on map and find the way via Map.</p>
		<div class="readmore">
		  <a href="locateus.jsp">Locate us</a>
		</div>
	  </div>
      <div class="content_bottom_container_box">
       <h4>Latest News</h4>
	    <p> Get the latest news about the medical and health care facilities in the city.</p>
	    <div class="readmore">
		  <a href="#">News</a>
		</div>
	  </div>
      <div class="content_bottom_container_boxl">
		<h4>Updates</h4>
	    <p> Know about the latest updates of and facilities of Locate  Easy.</p>
	    <div class="readmore">
		  <a href="#">Updates</a>
		</div><!--close readmore-->	  
	  </div><!--close content_bottom_container_box1-->      
	  <br style="clear:both"/>
    </div>  
 
  </div>
  
  <div id="footer">
	  <a href="">Terms Of Use</a> | <a href="">Privacy Policy</a> | <a href="">Ghaziabad Development Authority</a> 
  </div>
 




<script type="text/javascript"
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
</script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places">
</script>



<script type="text/javascript">
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
</script>






 
</body>
</html>

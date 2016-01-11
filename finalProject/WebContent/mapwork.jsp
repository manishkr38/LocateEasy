<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#add_bar{
margin:0 px auto;
height:30px;
background-color:rgb(220,220,220);
color:blue;
font-size:20px;
}

#add_bar p
{
margin-top:-1px;
}

#add_input
{
margin-top:2px;
width:800px;

height:50px;
background-color:rgb(200,200,200);
}
#add_input label{
font-size:18px;
color:blue;
margin-top:15px;
margin-left:10px;
}

#add_input input{
width:180px;
margin-top:15px;
margin-left:2px;
}

#dvDistance{
color:red;
font-weight:bold;
margin-top:2px;
width:530px;
height:50px;
background-color:rgb(240,240,240);
}
#dvMap
{
width:800px;
height:700px;
 background-color:rgb(200,200,200);
}

#dvPanel
{
width:530px;
height:700px;
background-color:rgb(220,220,220);
}

</style>

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
<script type="text/javascript">
var source, destination;
var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
google.maps.event.addDomListener(window, 'load', function () {
    new google.maps.places.SearchBox(document.getElementById('txtSource'));
    new google.maps.places.SearchBox(document.getElementById('txtDestination'));
    directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
});
 
function GetRoute() {
    var mumbai = new google.maps.LatLng(28.6700, 77.4200);
    var mapOptions = {
        zoom: 7,
        center: mumbai
    };
    map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);
    directionsDisplay.setMap(map);
    directionsDisplay.setPanel(document.getElementById('dvPanel'));
 
    //*********DIRECTIONS AND ROUTE**********************//
    source = document.getElementById("txtSource").value;
    destination = document.getElementById("txtDestination").value;
 
    var request = {
        origin: source,
        destination: destination,
        travelMode: google.maps.TravelMode.DRIVING
    };
    directionsService.route(request, function (response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
        }
    });
 
    //*********DISTANCE AND DURATION**********************//
    var service = new google.maps.DistanceMatrixService();
    service.getDistanceMatrix({
        origins: [source],
        destinations: [destination],
        travelMode: google.maps.TravelMode.DRIVING,
        unitSystem: google.maps.UnitSystem.METRIC,
        avoidHighways: false,
        avoidTolls: false
    }, function (response, status) {
        if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
            var distance = response.rows[0].elements[0].distance.text;
            var duration = response.rows[0].elements[0].duration.text;
            var dvDistance = document.getElementById("dvDistance");
           dvDistance.innerHTML = "";
            dvDistance.innerHTML += "Distance: " + distance + "<br />";
            dvDistance.innerHTML += "Duration:" + duration;
 
        } else {
            alert("Unable to find the distance via road.");
        }
    });
}
</script>

</head>
<body onload="GetRoute()">

<%@page language="java" import="java.sql.*" %>

<%

String address=request.getParameter("param");

//  Class.forName("com.mysql.jdbc.Driver").newInstance();
//  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");
// Statement s = conn.createStatement();
// s.executeQuery("select * from doctr where username= '"+user+"' ");

// ResultSet rs = s.getResultSet();


// while (rs.next()) {  


%>






<div id="add_bar">
<marquee>  <b> <p><%=address %></p> </b> </marquee> 
 
</div>

<table>
<tr>
<td>
<div id="add_input">

      <label>  Source:  </label>
        <input type="text" id="txtSource" value="GDA,ghaziabad,up,India" />
		&nbsp;    <label> Destination:  </label>
        <input type="text" id="txtDestination" value="<%=address%>" />
		&nbsp;
		<input type="button" value="Get Route" onclick="GetRoute()" />
		
	 
</div>
</td>
<td>
<div id="dvDistance"></div>
</td>
</tr>

<tr>

<td>
        <div id="dvMap">
        </div>
</td>
 <td>
        <div id="dvPanel">
        </div>
</td>

</tr>




</table>



</body>
</html>

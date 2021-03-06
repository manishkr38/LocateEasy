<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>Search Results for your query</title>
  <meta name="description" content="Doctors and Hospitals" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="../../css/tempinfo.css" />
  <script type="text/javascript" src="../../js/jquery.min.js"></script>
  <script type="text/javascript" src="../../js/image_slide.js"></script>

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
         <li><a href="../../index.html">Home</a></li>
        <li><a href="../../categorynew.jsp">Category</a></li>
        <li><a href="../../services.html">Services</a></li>
           <li class="current"><a href="../../donate.html">Donate</a></li>
		 <li><a href="../../AddDoctor/login.html">Join Us</a></li>
		   <li><a href="../../locateus.jsp">Locate</a></li>
        <li><a href="../../aboutus.jsp">About Us</a></li>
      </ul>
    </div>	
    
	<div id="site_content">		

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Related categories</h2>
          
		  <div id="navcontainer">
              <ul id="navlist">
              <li><a href="../BloodRequest/displayBloodReq.jsp">Blood Requirement</a></li>
              <li><a href="displayBloodDonor.jsp">Blood Donors</a></li>
              <li><a href="../../AddDoctor/displayData.jsp">Doctors</a></li>
			  <li><a href="../../selectType.jsp?param=private">Hospital-private</a></li>
              <li><a href="../../selectType.jsp?param=goverment">Hospital-govt</a></li>
              <li><a href="../../ambulance.jsp?param=yes">Ambulance service </a></li>
			  <li><a href="../../selectCat.jsp?param=Surgeon">Surgeon</a></li>
			  <li><a href="../../selectCat.jsp?param=Dentist">Dentist</a></li>
			  <li><a href="../../selectCat.jsp?param=Eye doctor">Eye Doctor</a></li>
			  <li><a href="../../selectCat.jsp?param=Homeopathic">Homeopathic</a></li>
			   <li><a href="../../selectCat.jsp?param=Ayurvedic">Ayurvedic Doctor</a></li>
			  <li><a href="../../selectCat.jsp?param=veterinary doctor">veterinary doctor</a></li>
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
         <h1>Search results for Blood Donors</h1>
		  <div id="list">
		 
<%@page language="java" import="java.sql.*" %>

<%

String group = request.getParameter("group");
String district=request.getParameter("dist");
String city=request.getParameter("city");




Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");

Statement s = conn.createStatement();

s.executeQuery("select * from blooddonor where bloodgroup= '"+group+"' or district= '"+district+"' or city= '"+city+"'  ");


//s.executeQuery("select * from doctr where disease like '%"+srch+"%' or name like '%"+srch+"%' or clinic like '%"+srch+"%' or category like '%"+srch+"%' or qualification like '%"+srch+"%' or experience like '%"+srch+"%' or address like '%"+srch+"%' or state like '%"+srch+"%' or checkup like '%"+srch+"%' or timing like '%"+srch+"%' ");





ResultSet rs = s.getResultSet();

while (rs.next()) {  
	%>
	
	<div id="data">
	<div id="img">
	 <div class="content_image">
		    <img src="../../images/donor.png" alt="image1" />
		    </div>
	      </div>
	
	
	<div id="disp_data">
	
	
	<div class="icon_image">
		    <img src="../../images/drop.png" alt="image1" />
<b><p id="head"> <%=rs.getString("bloodgroup") %> </p></b>
    </div>
    

<p> Donor Name:  <%=rs.getString("name") %> &nbsp;&nbsp; |&nbsp;&nbsp;  Age:<%=rs.getString("age") %></p>
 
 <p> Status:<%=rs.getString("gender") %> </p>
 <div class="icon_image">
		    <img src="../../images/addr.jpg" alt="image1" />
 <p><u><%=rs.getString("address") %> </u>| <a href="">more</a></p>
  </div>
  
 <div class="icon_image">
		    <img src="../../images/phn.jpg" alt="image1" />
 <p><a href=""><%=rs.getString("mobile") %> </a> | <a><%=rs.getString("landline") %> </a>  </p>
 </div>
 
 
 <div id="down">
      <ul id="hig">
        <li><a href="">SMS/Email</a></li>
        <li><a href="DonorEditLogin.html">Edit</a></li>
        <li><a href="DonorEditLogin.html">Delete</a></li>
        <li><a href="../../mapwork.jsp?param=<%=rs.getString("address") %> ">Locate</a></li>
		 
      </ul>
    </div>
 
 </div>
 
</div>

<%  }


%>




		  
</div>		 
	 
      </div><!--close content-->  

</div>	  
	</div><!--close site_content--> 
    
	<div id="content_bottom">
	  <div class="content_bottom_container_box">
		<h4>Locate on Map</h4>
	    <p> Get your location on map and find the way via Map.</p>
		<div class="readmore">
		  <a href="../../locateus.jsp">Locate us</a>
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
 

 
</body>
</html>

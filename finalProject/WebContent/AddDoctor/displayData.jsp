<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>List of Doctors/Hospitals</title>
  <meta name="description" content="Doctors and Hospitals" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="../css/tempinfo.css" />
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/image_slide.js"></script>

<script type='text/javascript'>

(function()
{
  if( window.localStorage )
  {
    if( !localStorage.getItem('firstLoad') )
    {
      localStorage['firstLoad'] = true;
      window.location.reload();
    }  
    else
      localStorage.removeItem('firstLoad');
  }
})();

</script>

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
        <li><a href="../index.html">Home</a></li>
        <li><a href="../categorynew.jsp">Category</a></li>
        <li><a href="../services.html">Services</a></li>
        <li><a href="../donate.html">Donate</a></li>
		 <li class="current"><a href="login.html">Join Us</a></li>
		   <li><a href="../locateus.jsp">Locate</a></li>
        <li><a href="../aboutus.jsp">About Us</a></li>
      </ul>
    </div>	
    
	<div id="site_content">		

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Related categories</h2>
          
		  <div id="navcontainer">
              <ul id="navlist">
             <li><a href="../onlineBloodDonation/BloodRequest/displayBloodReq.jsp">Blood Requirement</a></li>
              <li><a href="../onlineBloodDonation/BloodDonor/displayBloodDonor.jsp">Blood Donors</a></li>
              <li><a href="displayData.jsp">Doctors</a></li>
			  <li><a href="../selectType.jsp?param=private">Hospital-private</a></li>
              <li><a href="../selectType.jsp?param=goverment">Hospital-govt</a></li>
              <li><a href="../ambulance.jsp?param=yes">Ambulance service </a></li>
			  <li><a href="../selectCat.jsp?param=Surgeon">Surgeon</a></li>
			  <li><a href="../selectCat.jsp?param=Dentist">Dentist</a></li>
			  <li><a href="../selectCat.jsp?param=Eye doctor">Eye Doctor</a></li>
			  <li><a href="../selectCat.jsp?param=Homeopathic">Homeopathic</a></li>
			   <li><a href="../selectCat.jsp?param=Ayurvedic">Ayurvedic Doctor</a></li>
			  <li><a href="../selectCat.jsp?param=veterinary doctor">veterinary doctor</a></li>
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
         <h1>Search results for Doctors/Hospitals</h1>
		  <div id="list">
		 
<%@page language="java" import="java.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");
Statement s = conn.createStatement();
s.executeQuery("select * from doctr");
ResultSet rs = s.getResultSet();

while (rs.next()) {  
	%>
	
	<div id="data">
	<div id="img">
	 <div class="content_image">
		    <img src="../images/doctor.png" alt="image1" />
		    </div>
	      </div>
	
	
	<div id="disp_data">
	
	  <div id="like"> <img src="../images/thumb.jpeg" alt="image1" /><%=rs.getString("likes") %>&nbsp;Likes  </div> 
	<div class="icon_image">
		    <img src="../images/clin.jpg" alt="image1" />
<b><p id="head"> <%=rs.getString("clinic") %></p>  </b>  </div>   
    
   

<p> Doctor Name: <b> <%=rs.getString("name") %></b>&nbsp;( <%=rs.getString("qualification") %>)
 
 
 <div class="icon_image">
		    <img src="../images/addr.jpg" alt="image1" />
 <p><u><%=rs.getString("address") %> </u>| <a href="#">more</a></p>
  </div>
  
 <div class="icon_image">
		    <img src="../images/phn.jpg" alt="image1" />
 <p><a href="#"><%=rs.getString("contact") %></a>&nbsp;|&nbsp;<a href="#"><%=rs.getString("landline") %></a></p>
 </div>
 
 <p><b><%=rs.getString("category") %></b> | <%=rs.getString("disease") %> </p>
 
 
 <p>Checkup fee :Rs.<%=rs.getString("checkup") %>&nbsp;|&nbsp;Timing :<%=rs.getString("timing") %></p>
 
 
 <p>Experience :<%=rs.getString("experience") %>&nbsp;years</p>
 
 <div id="down">
      <ul id="hig">
       <li><a href="mailto:<%=rs.getString("email") %>">E-mail</a></li>
        <li><a href="login.html">Edit</a></li>
        
        
        
        <li><a href="../LikeIt.jsp?param=<%=rs.getString("username") %>">Like it</a></li>
        <li><a href="../mapwork.jsp?param=<%=rs.getString("address") %>">Locate</a></li>    
		 
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
 

 
</body>
</html>

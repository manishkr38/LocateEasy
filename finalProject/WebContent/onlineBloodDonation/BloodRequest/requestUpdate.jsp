<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <title>Update your information</title>
  <meta name="description" content="Doctors and Hospitals" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="../../css/stylereg.css" />
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
             <li><a href="displayBloodReq.jsp">Blood Requirement</a></li>
              <li><a href="../BloodDonor/displayBloodDonor.jsp">Blood Donors</a></li>
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
        <div class="content_item">
		  <h2>Update your Request information</h2> 
		  
		 
		 
				<div id="form_wrapper" class="form_wrapper">
					<form method="post" action="requestUpdateData.jsp">
						<h3>Patient Information</h3>
						<div class="column">
							<div>
								<label>Patient Full Name:</label>
								<input type="text" name="name" />
								<span class="error">This is an error</span>
							</div>
							<div>
								<label>Patient Age:</label>
								
							<input type="text" name="age" />		
								
								<span class="error">This is an error</span>
							</div>
							
							<div>
								<label>Blood units needed?:</label>
								<input type="text" name="needed"/>
								
								
								
								
								<span class="error">This is an error</span>
							</div>
							
							
							<div>
								<label>City:</label>
								<select name="city">
								
								<option value="Modinagar">Modinagar</option>
		                             <option value="Muradnagar">Muradnagar</option>
	                              </select>
								<span class="error">This is an error</span>
							</div>
							
							
							<div>
								<label>Mobile:</label>
								<input type="text" name="mob"/>
								<span class="error">This is an error</span>
							</div>
							
							<div>
								<label>Purpose:</label>
								<input type="text" name="purpose"/>
								<span class="error">This is an error</span>
							</div>
							
							
							
							
							
						</div>
					
					
					
					
					
					
						<div class="column">
							<div>
								<label>Blood Group:</label>
								<select name="group">
		
		                             <option value="A+">A+</option>
														<option value="A-">A-</option>
														<option value="A1+">A1+</option>
														<option value="A1-">A1-</option>
														<option value="A1+">A1+</option>
														<option value="A1-">A1-</option>
													<option value="A2+">A2+</option>
												<option value="A2-">A2-</option>
												<option value="B+">B+</option>
													<option value="B-">B-</option>
															<option value="A1B+">A1B+</option>
														<option value="A1B-">A1B-</option>
														<option value="A2B+">A2B+</option>
													<option value="A2B-">A2B-</option>
													<option value="AB+">AB+</option>
													<option value="AB-">AB-</option>
													<option value="o+">o+</option>
													<option value="o-">o-</option>
		
		
		</select>
								<span class="error">This is an error</span>
							</div>
							<div>
								<label>Needed till&nbsp;(dd/mm/yyyy):</label>
								<input type="text" name="till"/>
								<span class="error">This is an error</span>
							</div>
							<div>
								<label>Hospital Name:</label>
								<input type="text" name="clinic" />
								<span class="error">This is an error</span>
							</div>
							
							
							<div>
								<label>Address:</label>
								<input type="text" name="addrs"/>
								<span class="error">This is an error</span>
							</div>
							
							<div>
								<label>Landline:</label>
								
								<input type="text" name="base" />
								
								<span class="error">This is an error</span>
							</div>
							<div>
								<label>Please enter Username:</label>
								<input type="text" name="user" />
								<span class="error">This is an error</span>
							</div>
						</div>
						<div class="bottom">
							<div class="remember">
								<input type="checkbox" />
								<span>Send me updates</span>
							</div>
							<input type="submit" value="Update" />
							
							<div class="clear"></div>
						</div>
					</form>
					
					</div>
		  
		  
		  
		  
		  
		 
	 </div><!--close content_item-->
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
    
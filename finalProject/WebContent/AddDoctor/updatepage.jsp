<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>Update your information</title>
  <meta name="description" content="Doctors and Hospitals" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="../css/stylereg.css" />
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/image_slide.js"></script>

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
        <li><a href="../service.html">Services</a></li>
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
        <div class="content_item">
		  <h2>Update your Information on LocateEasy</h2> 
		  
		 
		 
				<div id="form_wrapper" class="form_wrapper">
					<form method="post" action="updateData.jsp">
						<h3>general Information &nbsp;&nbsp;</h3>
						
						<div class="column">
							<div>
								<label>Hospital/Clinic Name:</label>
								<input type="text" name="clinic" />
								<span class="error">This is an error</span>
							</div>
							<div>
								<label>Category:</label>
								
								<select name="speciality">
								<option value="none">none</option>
		<option value="Audiologist">Audiologist</option>
		<option value="Allergist">Allergist</option>
		<option value="Anesthesiologist">Anesthesiologist</option>
		<option value="Acupressure">Acupressure</option>
		<option value="Ayurvedic">Ayurvedic</option>
		<option value="Cardiologist">Cardiologist</option>
		<option value="Cosmetic surgeon">Cosmetic surgeon</option>
		<option value="Dentist">Dentist</option>
		<option value="Dermatologist">Dermatologist</option>
		<option value="Diabetologist">Diabetologist</option> 
		<option value="Endocrinologist">Endocrinologist</option> 
		<option value="Epidemiologist">Epidemiologist</option> 
		<option value="ENT specialist">ENT specialist</option>
		<option value="Eye doctor">Eye doctor</option> 
		<option value="Gyenocologist">Gyenocologist</option> 
		<option value="General surgeon">General surgeon</option> 
		<option value="Hair transplant">Hair transplant</option> 
		<option value="Homeopathic">Homeopathic</option> 
		<option value="Immunologist">Immunologist</option> 
		<option value="Infectious Disease">Infectious disease</option> 
		<option value="Kideny specialist">Kideny specialist</option> 
		<option value="Liver specialist">Liver specialist</option> 
		<option value="Medical geneticist">Medical geneticist</option> 
		<option value="Microbiologist">Microbiologist</option> 
		<option value="Neonatologist">Neonatologist</option> 
		<option value="Neurologist">Neurologist</option> 
		<option value="Neurosurgeon">Neurosurgeon</option> 
		<option value="Naturopath">Naturopath</option> 
		<option value="Nephrologist">Nephrologist</option> 
		<option value="Obstetrician">Obstetrician</option>  
		<option value="Oncologist">Oncologist</option> 
		<option value="Orthopedic surgeon">Orthopedic surgeon</option> 
		<option value="Pediatrician">Pediatrician</option> 
		<option value="Physiologist">Physiologist</option> 
		<option value="Plastic surgeon">Plastic surgeon</option> 
		<option value="Podiatrist">Podiatrist</option> 
		<option value="Psychiatrist">Psychiatrist</option> 
		<option value="Pulmnologist">Pulmnologist</option> 
		<option value="Radiologist">Radiologist</option> 
		<option value="Rheumatologist">Rheumatologist</option> 
		<option value="Surgeon">Surgeon</option> 
		<option value="Sexologist">Sexologist</option> 
		<option value="Speech therapist">Speech therapist</option> 
		<option value="Thyroid">Thyroid</option> 
		<option value="Trichologist">Trichologist</option> 
		<option value="Urologist">Urologist</option> 
		<option value="veterinary doctor">veterinary doctor</option> 
		
		
		</select>
								
								
								<span class="error">This is an error</span>
							</div>
							
							
							<div>
								<label>Type:</label>
								
								<select name="type">
		<option value="none">none</option>
		<option value="goverment">goverment</option> 
		<option value="private">private</option> 
		</select>
			    <span class="error">This is an error</span>
							</div>
							
							
							<div>
								<label>Speciality in Disease:</label>
								<input type="text" name="disease"/>
								
								
								
								
								<span class="error">This is an error</span>
							</div>
							
							<div>
								<label>Checkup fee:</label>
								<input type="text" name="fees"/>
								<span class="error">This is an error</span>
							</div>
							
							
							<div>
								<label>Ambulance Service:</label>
								
								<select name="ambulance">
		<option value="yes">yes</option>
		<option value="no">no</option> 
		
		</select>
			    <span class="error">This is an error</span>
							</div>
							
							
							
							<div>
								<label>Address:</label>
								<input type="text" name="addrs"/>
								<span class="error">This is an error</span>
							</div>
							<div>
								<label>Mobile No:</label>
								<input type="text" name="mob"/>
								<span class="error">This is an error</span>
							</div>
						</div>
						
						
					<div class="column">
							<div>
								<label>Doctor Name:</label>
								<input type="text" name="name"/>
								<span class="error">This is an error</span>
							</div>
							<div>
								<label>Qualifications:</label>
								<input type="text" name="qualify"/>
								<span class="error">This is an error</span>
							</div>
							<div>
								<label>Experience(year):</label>
								<input type="text" name="exp" />
								<span class="error">This is an error</span>
							</div>
							
							<div>
								<label>Timing&nbsp;(HH:MM-HH:MM):</label>
								<input type="text" name="time" />
								<span class="error">This is an error</span>
							</div>
							
							<div>
								<label>City:</label>
								
								<select name="City">
		<option value="none">none</option>
		<option value="Modinagar">Modinagar</option> 
		<option value="Muradnagar">Muradnagar</option> 
		</select>
			    <span class="error">This is an error</span>
							</div>
							
							<div>
								<label>On Call Service:</label>
								
								<select name="call">
		<option value="yes">yes</option>
		<option value="no">no</option> 
		
		</select>
			    <span class="error">This is an error</span>
							</div>
							
							
							<div>
								<label>Landline no:</label>
								<input type="text" name="landline" />
								<span class="error">This is an error</span>
							</div>
							
							
							<div>
								<label>Email:</label>
								<input type="text" name="email" />
								<span class="error">This is an error</span>
							</div>
						</div>
						
						<div class="bottom">
							<div class="remember">
								<input type="checkbox" />
								<span>Send me updates</span>
							</div>
							<input type="submit" value="Add Info" />
							
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
		  <a href="../locateus.jsp">Locate us</a>
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
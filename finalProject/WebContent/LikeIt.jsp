<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding Information</title>
<%@page language="java" import="java.sql.*" %>

</head>
<body>
<% 

String user=request.getParameter("param");


Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");
Statement s = conn.createStatement();

	
//int i=s.executeUpdate("insert into doctr values('"+clinic+"','"+name+"','"+special+"','"+qualify+"','"+disease+"','"+experience+"','"+fees+"','"+timing+"','"+address+"','"+state+"','"+mobile+"','"+username+"')");
		

int i=s.executeUpdate("update doctr set likes=likes+1 where username='"+user+"' ");




 //  if(i>0)
//  {
//	 session.setAttribute("userid", user);
	 
	 
	
	// response.sendRedirect("AddDoctor/displayData.jsp");
	 
	// out.println("Registration sucessful!"+ "<a href='login.html'>Go to Login</a>"
  //  }

%>

 <script>
	 function goBack() {
		 
	     window.history.back();
	     
	 }
	 goBack();
	 </script>	
	
	
	
	

</body>
</html>
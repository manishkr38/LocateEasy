<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updating Information</title>
<%@page language="java" import="java.sql.*" %>

</head>
<body>
<% 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");

String name=request.getParameter("name");
String group=request.getParameter("group");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String mobile=request.getParameter("mob");
String landline=request.getParameter("base");
String dist=request.getParameter("district");
String city=request.getParameter("city");
String address=request.getParameter("addrs");
String email=request.getParameter("email");
String username=request.getParameter("user");
String password=request.getParameter("pass");

Statement s = conn.createStatement();

	
//int i=s.executeUpdate("insert into doctr values('"+clinic+"','"+name+"','"+special+"','"+qualify+"','"+disease+"','"+experience+"','"+fees+"','"+timing+"','"+address+"','"+state+"','"+mobile+"','"+username+"')");
		

int i=s.executeUpdate("update blooddonor set name='"+name+"',bloodgroup='"+group+"',gender='"+gender+"',age='"+age+"',mobile='"+mobile+"',landline='"+landline+"',district='"+dist+"',city='"+city+"',address='"+address+"' ,email='"+email+"' where username='"+username+"' and password='"+password+"' ");




if(i>0)
{
	 session.setAttribute("userid", username);
	 response.sendRedirect("donorSuccessUpdate.jsp");
	 
	// out.println("Registration sucessful!"+ "<a href='login.html'>Go to Login</a>");
}
else
{
	 response.sendRedirect("donorUpdate.jsp");
	 
}
	
	
	
	%>
	

</body>
</html>
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
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");

String clinic=request.getParameter("clinic");
String name=request.getParameter("name");
String special=request.getParameter("speciality");
String qualify=request.getParameter("qualify");
String disease=request.getParameter("disease");
String experience=request.getParameter("exp");
String fees=request.getParameter("fees");
String timing=request.getParameter("time");
String address=request.getParameter("addrs");
String state=request.getParameter("city");
String mobile=request.getParameter("mob");

String username=(String)session.getAttribute("userid");
String emal=request.getParameter("email");

String type=request.getParameter("type");
String landline=request.getParameter("landline");
String ambulance=request.getParameter("ambulance");
String oncall=request.getParameter("call");


Statement s = conn.createStatement();

	
int i=s.executeUpdate("insert into doctr values('"+clinic+"','"+name+"','"+special+"','"+qualify+"','"+disease+"','"+experience+"','"+fees+"','"+timing+"','"+address+"','"+state+"','"+mobile+"','"+username+"','"+type+"','"+landline+"','"+ambulance+"','"+oncall+"','0','"+emal+"')");
		
if(i>0)
{
	 session.setAttribute("userid", username);
	 response.sendRedirect("dataSuccessAdd.jsp");
	 
	// out.println("Registration sucessful!"+ "<a href='login.html'>Go to Login</a>");
}
else
{
	 response.sendRedirect("dataAdding.html");
	 
}
	
	
	
	%>
	

</body>
</html>
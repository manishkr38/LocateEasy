<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>adding blood Request Information</title>
<%@page language="java" import="java.sql.*" %>

</head>
<body>
<% 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");

String name=request.getParameter("name");
String group=request.getParameter("group");
String age=request.getParameter("age");
String till=request.getParameter("till");
String needed=request.getParameter("needed");
String clinic=request.getParameter("clinic");
String city=request.getParameter("city");
String addrs=request.getParameter("addrs");
String mob=request.getParameter("mob");
String base=request.getParameter("base");
String purpose=request.getParameter("purpose");
String user=request.getParameter("user");

Statement s = conn.createStatement();

	
int i=s.executeUpdate("insert into blodrequest values('"+name+"','"+group+"','"+age+"','"+till+"','"+needed+"','"+clinic+"','"+city+"','"+addrs+"','"+mob+"','"+base+"','"+purpose+"','"+user+"')");
		
if(i>0)
{
	 session.setAttribute("userid", user);
	 response.sendRedirect("requestAddSuccess.jsp");
	 
	// out.println("Registration sucessful!"+ "<a href='login.html'>Go to Login</a>");
}
else
{
	 response.sendRedirect("requestRegister.html");
	 
}
	
	
	
	%>
	

</body>
</html>
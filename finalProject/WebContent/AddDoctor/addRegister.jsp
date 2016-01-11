<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding registration Information</title>
<%@page language="java" import="java.sql.*" %>
</head>
<body>

<% 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");

String f_name=request.getParameter("fname");
String l_name=request.getParameter("lname");
String mobile=request.getParameter("mobile");
String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("pass");

Statement s = conn.createStatement();
ResultSet rs;

//s.executeUpdate("insert into register values('"+f_name+"','"+l_name+"','"+mobile+"','"+username+"','"+password+"')");
 int i=s.executeUpdate("insert into register values('"+f_name+"','"+l_name+"','"+mobile+"','"+username+"','"+email+"','"+password+"')");
	
 if(i>0)
 {
	 session.setAttribute("userid", username);
	 response.sendRedirect("successRegister.jsp");
	 
	// out.println("Registration sucessful!"+ "<a href='login.html'>Go to Login</a>");
 }
 else
 {
	 response.sendRedirect("login.html");
	 
 }
	
	
	
	%>

</body>
</html>
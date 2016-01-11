<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page language="java" import="java.sql.*" %>
<% 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");


String username=request.getParameter("uname");


Statement s = conn.createStatement();

	
//int i=s.executeUpdate("insert into doctr values('"+clinic+"','"+name+"','"+special+"','"+qualify+"','"+disease+"','"+experience+"','"+fees+"','"+timing+"','"+address+"','"+state+"','"+mobile+"','"+username+"')");
		

s.executeUpdate("delete from blodrequest where username='"+username+"' ");


	 session.setAttribute("userid", username);
	 response.sendRedirect("requestSuccessDelete.jsp");
	 
	
	
	
	
	
	%>


</body>
</html>
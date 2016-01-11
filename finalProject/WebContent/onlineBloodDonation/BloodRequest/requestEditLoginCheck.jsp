<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login blood donors</title>
<%@page language="java" import="java.sql.*" %>
</head>
<body>

<% 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/locateeasy","root","mycomputer");


String userid=request.getParameter("uname");



Statement st = conn.createStatement();
ResultSet rs;
rs=st.executeQuery("select * from blodrequest where username='"+userid+"' ");
if(rs.next())
{
	session.setAttribute("userid", userid);
//	out.println("welcome "+userid);
//	out.println("<a href='logout.jsp'>Log out</a>");
	response.sendRedirect("requestLoginSuccess.jsp");
}
else
{
	
	
	response.sendRedirect("requestFalseLogin.html");
	
//	out.println("invalid password <a href='login.html'>try again</a>");
}



	%>

</body>
</html>
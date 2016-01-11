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

	
//int i=s.executeUpdate("insert into doctr values('"+clinic+"','"+name+"','"+special+"','"+qualify+"','"+disease+"','"+experience+"','"+fees+"','"+timing+"','"+address+"','"+state+"','"+mobile+"','"+username+"')");
		

int i=s.executeUpdate("update blodrequest set name='"+name+"',bloodgroup='"+group+"',age='"+age+"',neededtill='"+till+"',unitneed='"+needed+"',hospital='"+clinic+"',city='"+city+"',address='"+addrs+"',mobile='"+mob+"' ,landline='"+base+"',purpose='"+purpose+"' where username='"+user+"'  ");




if(i>0)
{
	 session.setAttribute("userid", user);
	 response.sendRedirect("requestSuccessUpdate.jsp");
	 
	// out.println("Registration sucessful!"+ "<a href='login.html'>Go to Login</a>");
}
else
{
	 response.sendRedirect("requestUpdate.jsp");
	 
}
	
	
	
	%>
	

</body>
</html>
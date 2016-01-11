<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
if((session.getAttribute("userid")==null) || (session.getAttribute("userid")==""))
{   %>
You are Not logged in <br/>
<a href="login.html">please login</a>

<%  }

else {
%>
Welcome <%=session.getAttribute("userid") %>

<a href='logout.jsp'>Logout</a>
<%

}
%>



</body>
</html>
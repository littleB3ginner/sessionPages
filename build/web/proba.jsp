<%-- 
    Document   : proba
    Created on : Jul 2, 2018, 2:41:48 PM
    Author     : neman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
     <title>Login Success Page</title>
</head>
<body>
<%
//Dozvoli pristup ako sesija postoji ako ne vrati na login
if(session.getAttribute("Admin") == null){
	response.sendRedirect("login.jsp");
}
String userName = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) userName = cookie.getValue();
}
}
%>
<h3>Hi <%=userName %>, this is a second jsp page.</h3>
<br>

</form>
</body>
</html>

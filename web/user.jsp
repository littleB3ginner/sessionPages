<%-- 
    Document   : user
    Created on : Jul 2, 2018, 2:22:04 PM
    Author     : neman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//Dozvoli pristup ako sesija postoji ako ne vrati na login
String user = null;
if(session.getAttribute("Admin") == null){
	response.sendRedirect("login.jsp");
}else user = (String) session.getAttribute("Admin");
String userName = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) userName = cookie.getValue();
	
}
}
%>
<h3>Hi <%=userName %>, Login successful.</h3>
<br>
User:   <%=user %><br>
<br>
<!--Preusmeravanje na test stranicu-->
<a href="proba.jsp">Test Page</a>

</form>
</body>
</html>
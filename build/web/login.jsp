<%-- 
    Document   : login
    Created on : Jul 2, 2018, 1:43:43 PM
    Author     : neman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn Page</title>
    </head>
    <body>
        <h1>Main LogIn</h1>
        <!--Glavna stranica sa logovanje-->
        <form action="<%=request.getContextPath()%>
/loginServlet" method="post">
            UserName:<br>
            <input type="text" name="username" /><br>
            Password:<br>
            <input type="text" name="password" /><br>
            <input type="submit" value="Submit" />
        </form> 
    </body>
</html>

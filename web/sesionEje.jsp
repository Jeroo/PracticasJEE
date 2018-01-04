<%-- 
    Document   : sesionEje
    Created on : Jan 4, 2018, 12:55:26 AM
    Author     : scuev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Ejemplo de Sesión </title>
    </head>
    <body>
        <%
        String val = request.getParameter("nombre"); 
        if (val != null) session.setAttribute("nombre",val);
        %>

        <center> <h1>Ejemplo de Sesión</h1> Donde quieres ir!!!
        <a href="sesionEje1.jsp"> Página 1 </a>
        <a href="sesionEje2.jsp"> Página 2 </a>
    </body>
</html>

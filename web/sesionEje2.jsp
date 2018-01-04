<%-- 
    Document   : sesionEje2
    Created on : Jan 4, 2018, 12:57:33 AM
    Author     : scuev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Ejemplo de Sesión2 </title>
    </head>
    <body>
        <center> <h1> Ejemplo de Sesión </h1> 
        Hola, <%=session.getAttribute("nombre") %> Bienvenido a la página 2
    </body>
</html>

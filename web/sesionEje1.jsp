<%-- 
    Document   : sesionEje1
    Created on : Jan 4, 2018, 12:56:57 AM
    Author     : scuev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Ejemplo de Sesión1 </title>
    </head>
    <body>
        <center> <h1> Ejemplo de Sesión </h1> 
        Hola, <%=session.getAttribute("nombre") %> Bienvenido a la página 1
    </body>
</html>

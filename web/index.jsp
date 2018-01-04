<%-- 
    Document   : index
    Created on : Jan 3, 2018, 12:03:52 AM
    Author     : scuev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
 <head>
        <title>Ejemplo "Mi Primer Servlet"</title>
    </head> 
    <body>
        <form action="MiPrimerServlet" method="POST">
            <BR><BR>Introduzca un texto en el cuadro y pulse "Enviar Consulta"
            <BR><BR><input type="text" name="TEXTO">
            <BR><BR><input type="submit"><input type="reset">
        </form> 
       

        <%
          Calendar calendario = Calendar.getInstance();
          int hora = calendario.get(Calendar.HOUR_OF_DAY);
        %>
        <b> Hola, <i>
                <% if ((hora>20)||(hora<6)) { %> 
                     buenas noches
                <% }  
                   else if ((hora>=6)&&(hora<=12)) { %>
                          buenos días
                <%      }
                        else { %> 
                           buenas tardes
                <%      } %>
        </i> </b>
    </body>
</html>

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
        <%
        // Obtengo el Host con el método getHeader del objeto implícito request
        String host = request.getHeader("host");

        // Detecto la máquina cliente cliente
        if(host.startsWith("localhost"))
        {
            out.println("<p style=\"font-family:Verdana;font-size:15pt\" border=\"1\"> Buenos dias !!");
            out.println("</p>");
        }
        else
        {
            out.println("<p style=\"font-family:Verdana;font-size:15pt\" border=\"1\">Acceso no permitido. Su máquina no tiene permisos");
            out.println("</p>");
        }

        out.println("<p style=\"font-family:Times;font-size:11pt\" border=\"1\"><b>Host:</b> "+host);
        out.println("</p>");

        out.println("<p style=\"font-family:Courier;font-size:10pt\" border=\"1\">ADIOS");
        out.println("</p>");
        %>
        <%
        // Obtengo el User-agent con el método getHeader del objeto implícito request
        String userAgent = request.getHeader("user-agent");
        // Mediante el objeto implícito "out" muestro HTML en la página        

        // Detecto el navegador que ataca
        if(!userAgent.endsWith("Firefox/1.0.2"))
        {
            out.println("<p style=\"font-family:Verdana;font-size:15pt\" border=\"1\">VIVA EXPLORER");
            out.println("</p>");
        }
        else
        {
            out.println("<p style=\"font-family:Verdana;font-size:15pt\" border=\"1\">VIVA MOZILLA");
            out.println("</p>");
        }

        out.println("<p style=\"font-family:Times;font-size:11pt\" border=\"1\"><b>User-agent:</b> "+userAgent);
        out.println("</p>");

        out.println("<p style=\"font-family:Courier;font-size:10pt\" border=\"1\">ADIOS");
        out.println("</p>");
        %>
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
        <br/>
        <br/>
        <%
        // Declaro un objeto de tipo Enumeration donde meto las cabeceras
        Enumeration cabeceras;
        // Y del objeto Request se obtienen todos los datos del navegador con  el método getHeaderNames()
        // se aconseja al usuario ejecutar la página en distintos navegadores
        cabeceras = request.getHeaderNames();
        %>
        
        <%
        // Mediante el objeto implícito "out" muestro HTML en la página
        out.println("<table style=\"font-family:Courier;font-size:10pt\" border=\"1\">");
        out.println("<th style=\"background-color:#FFFFDD\">Parámetro</th>");        
        out.println("<th style=\"background-color:rgb(219,225,253)\">Valor</th>");

        // Muestro todas las cabeceras que me llegan en la petición
        while (cabeceras.hasMoreElements()) 
        {
            String name = (String)cabeceras.nextElement();
            String value = request.getHeader(name);
            out.println("<tr>");
            out.println("<td style=\"background-color:#FFFFDD\"><b>"+name+"</b></td>");
            out.println("<td style=\"background-color:rgb(219,225,253)\">"+value+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");

        %>
        
        <center>
            <h1>Ejemplo de JavaBeans</h1>
        </center>
        <jsp:useBean id="mensaje" class="ejemplos.MensajeBean"/>
        <% mensaje.setMensaje("Hola mundo desde un Bean Jeremias"); %>
        <center> 
        <h1>
           Mensaje: <i> <%=mensaje.getMensaje() %>
           <% mensaje.setMensaje("Hola otra vez desde el Bean"); %></i>
           Mensaje: <i> <%=mensaje.getMensaje() %></i>
        </h1>
        <% session.setAttribute("nombre","Roberto"); %>
        <% String SNombre=(String)session.getAttribute("nombre"); 
        out.println("<p style=\"font-family:Verdana;font-size:15pt\" border=\"1\">"+SNombre+" !!");
        %>
        <% session.removeAttribute("nombre"); %>
        
        
        
        <h1> Ejemplo de Sesión </h1>
        <form method="post" action="sesionEje.jsp">
        <p> Por favor, introduce tu nombre: <input type="text" name="nombre"> </p>
        <p> <input type="submit" value="enviar información">
        </form>

        
        </center>
    </body>
</html>

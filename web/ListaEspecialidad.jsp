<%-- 
    Document   : ListaEspecialidad
    Created on : 28-jun-2019, 14:21:20
    Author     : ADMIN
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Especialidad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <table style="margin:0 auto; border: 1px solid black;">
    <body>
        <h1>Especialidad</h1>
        
    <tr>
    <th>Nombre</th>
    <th>Descripcion</th>
    <th>Actualizar</th>
    <th>Eliminar</th>
    </tr> 
        <%
          ArrayList<Especialidad> espe = (ArrayList) request.getAttribute("Listaespecialdad");
        %>  
        <% for(Especialidad esp: espe){%>
    <tr>
    <td><%=esp.getNombre()%></td>
    <td><%=esp.getDescripcion()%></td>
    
    <td>
        <button type="submit" onclick="js:window.location.href='especialidad.do?a=update&id=<%=esp.getIdespecialidad()%>'">Actualizar</button> </td>
    <td><button type="submit" onclick="js:window.location.href='especialidad.do?a=delete&id=<%=esp.getIdespecialidad()%>'">Eliminar</button> </td>
        
    
    </tr>
        <%}%>
        </table>
    </body>
</html>

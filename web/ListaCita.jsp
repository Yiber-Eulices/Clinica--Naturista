<%-- 
    Document   : ListaCita
    Created on : 29-jun-2019, 16:03:31
    Author     : ADMIN
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <table style="margin:0 auto; border: 1px solid black;">
    <body>
        <h1>Actualizar cita</h1>
        
    <tr>
        <th>Fecha</th>
        <th>Hora</th>
        <th>Observaciones</th>
        <th>Estado</th>
        <th>Doctor</th>
        <th>Paciente</th>
        <th>Especialidad</th>
        <th>Lugar</th>
    </tr>
     <%  ArrayList<Cita> cita = (ArrayList) request.getAttribute("ListaCita"); %>
            <% for(Cita cit: cita){%>
    <tr>
        <td><%=cit.getFecha()%></td>
        <td><%=cit.getHora()%></td>
        <td><%=cit.getObservaciones()%></td>
        <td><%=cit.getEstado()%></td>
        <td><%=cit.getIddoctor().getNombre()%></td>
        <td><%=cit.getIdpaciente().getNombre()%></td>
        <td><%=cit.getIdespecialidad().getNombre()%></td>
        <td><%=cit.getIdlugar().getNombre()%></td>
        
         <td>
        <button type="submit" onclick="js:window.location.href='cita.do?a=update&id=<%=cit.getIdcita()%>'">Actualizar</button> </td>
    <td><button type="submit" onclick="js:window.location.href='cita.do?a=delete&id=<%=cit.getIdcita()%>'">Eliminar</button> </td>
        
    </tr>
    <%}%>
    </body>
</table>
</html>

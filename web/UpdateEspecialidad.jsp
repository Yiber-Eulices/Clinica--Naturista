<%-- 
    Document   : UpdateEspecialidad
    Created on : 28-jun-2019, 14:09:52
    Author     : ADMIN
--%>

<%@page import="Modelo.Especialidad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Actualizar Especialidad</h1><hr>
        <% Especialidad esp = (Especialidad)request.getAttribute("editarEspecialidad"); %>
         <form action="especialidad.do?a=update&id=<%=esp.getIdespecialidad()%>" method="post">
            <label>Nombre</label><br/><br/>
            <input type="text" name="txtnombre" placeholder="Nombre" value="<%=esp.getNombre()%>" /><br/><br/>
            <label>Descripcion</label><br/><br/>
            <input type="text" name="txtdescripcion" placeholder="Descripcion" value="<%=esp.getDescripcion()%>"/><br/><br/>
            <hr>
            <button type="submit">Actualizar</button>
        </form>
    </body>
</html>

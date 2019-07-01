<%-- 
    Document   : UpdateLugarAtencion
    Created on : 28/06/2019, 11:20:16 AM
    Author     : Asus
--%>

<%@page import="Modelo.LugarAtencion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lugar Atencion</h1>
        <table>
            <thead>
            <th>Nombre</th>
            <th>Direccion</th>
            <th>Ciudad</th>
            </thead>
            <%LugarAtencion la = (LugarAtencion)request.getAttribute("edidLugar");%>
            
            <form action="LugarAtencion.do?a=update&lugar=<%=la.getLugar()%>" method="post">
                <th><input type="text" name="nombre" value="<%=la.getNombre()%>"/></th>
                <th><input type="text" name="direccion" value="<%=la.getDireccion()%>"/></th>
                <th><input type="text" name="ciudad" value="<%=la.getCiudad()%>"/></th>
                <th><button type="submit">Update</button></th>
            </form>
        </table>
    </body>
</html>

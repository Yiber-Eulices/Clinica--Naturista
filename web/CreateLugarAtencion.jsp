<%-- 
    Document   : LugarAtencion
    Created on : 28/06/2019, 12:52:59 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lugar Atencion</h1>
        <form action="LugarAtencion.do?a=create" method="post">
            <label>Nombre:</label>
            <input name="nombre" type="text"/><br>
            <label>Direccion:</label>
            <input name="direccion" type="text"/><br>
            <label>Ciudad:</label>
            <input name="ciudad" type="text"/><br>
            <button type="submit">Guardar</button>
        </form>
    </body>
</html>

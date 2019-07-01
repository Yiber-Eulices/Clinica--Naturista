<%-- 
    Document   : CrearEspecialidad
    Created on : 28-jun-2019, 0:38:58
    Author     : ADMIN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar Especialidad</h1>
        <hr>
        <form action="especialidad.do?a=create" method="post">
            <label>Nombre</label><br/><br/>
            <input type="text" name="txtnombre" placeholder="Nombre" /><br/><br/>
            <label>Descripcion</label><br/><br/>
            <input type="text" name="txtdescripcion" placeholder="Descripcion" /><br/><br/>
            <hr>
            <button type="submit">Registrar</button>
        </form>
        
    </body>
</html>

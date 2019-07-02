<%@page import="Modelo.Especialidad"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->

    <div class="animated fadeIn">
        <div class="row">
        <h1>Lugar Atencion</h1>
        <form action="LugarAtencion.do?a=create" method="post">
            <label>Nombre:</label>
            <input name="nombre" required="required" type="text"/><br>
            <label>Direccion:</label>
            <input name="direccion" required="required" type="text"/><br>
            <label>Ciudad:</label>
            <input name="ciudad" required="required" type="text"/><br>
            <button type="submit">Guardar</button>
        </form>
        </div>
    </div>

<%@include file="Footer.jsp" %>

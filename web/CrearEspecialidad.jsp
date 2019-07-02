<%@page import="Modelo.Especialidad"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->

    <div class="animated fadeIn">
        <div class="row">
        <h1>Registrar Especialidad</h1>
        <hr>
        <form action="especialidad.do?a=create" method="post">
            <label>Nombre</label><br/><br/>
            <input type="text" required="required" name="txtnombre" placeholder="Nombre" /><br/><br/>
            <label>Descripcion</label><br/><br/>
            <input type="text" required="required" name="txtdescripcion" placeholder="Descripcion" /><br/><br/>
            <hr>
            <button type="submit">Registrar</button>
        </form>
        
    </div>
    </div>

<%@include file="Footer.jsp" %>
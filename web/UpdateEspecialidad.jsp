<%@page import="Modelo.Especialidad"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->

    <div class="animated fadeIn">
        <div class="row">
        <h1>Actualizar Especialidad</h1><hr>
        <% Especialidad esp = (Especialidad)request.getAttribute("editarEspecialidad"); %>
         <form action="especialidad.do?a=update&id=<%=esp.getIdespecialidad()%>" method="post">
            <label>Nombre</label><br/><br/>
            <input type="text" name="txtnombre" placeholder="Nombre" required="required" value="<%=esp.getNombre()%>" /><br/><br/>
            <label>Descripcion</label><br/><br/>
            <input type="text" name="txtdescripcion" placeholder="Descripcion" required="required" value="<%=esp.getDescripcion()%>"/><br/><br/>
            <hr>
            <button type="submit">Actualizar</button>
        </form>
        </div>
    </div>

<%@include file="Footer.jsp" %>

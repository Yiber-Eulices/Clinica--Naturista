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
        <table>
            <thead>
            <th>Nombre</th>
            <th>Direccion</th>
            <th>Ciudad</th>
            </thead>
            <%LugarAtencion la = (LugarAtencion)request.getAttribute("edidLugar");%>
            
            <form action="LugarAtencion.do?a=update&lugar=<%=la.getLugar()%>" method="post">
                <th><input type="text" name="nombre" required="required" value="<%=la.getNombre()%>"/></th>
                <th><input type="text" name="direccion" required="required" value="<%=la.getDireccion()%>"/></th>
                <th><input type="text" name="ciudad" required="required" value="<%=la.getCiudad()%>"/></th>
                <th><button type="submit">Update</button></th>
            </form>
        </table>
        </div>
    </div>

<%@include file="Footer.jsp" %>

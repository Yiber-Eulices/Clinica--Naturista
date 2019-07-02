<%@page import="Modelo.Especialidad"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->

    <div class="animated fadeIn">
        <div class="row">
        <h1>Hello World!</h1>
        <table>
                <tr>
                    <th>Nombre</th>
                    <th>Direccion</th>
                    <th>Ciudad</th>
                    <th>Acciones</th>
                </tr>
            <%ArrayList<LugarAtencion> la = (ArrayList)request.getAttribute("listLugar");%>
            <%for(LugarAtencion luat : la){%>
            <tr>
                <td><%=luat.getNombre()%></td>
                <td><%=luat.getDireccion()%></td>
                <td><%=luat.getCiudad()%></td>
                <td>
                    <p>
                        <a href="lugar.do?a=update&lugar=<%=luat.getLugar()%>">
                            <button type="submit">Actualizar</button>
                        </a>
                        <a href="lugar.do?a=delete&lugar=<%=luat.getLugar()%>">
                            <button type="submit">Eliminar</button>
                        </a>
                    </p>
                </td>
            </tr>
            <%}%>
        </table>
        </div>
    </div>

<%@include file="Footer.jsp" %>


<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.LugarAtencion"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <strong>Lista lugar de atenci&oacute;n.</strong>
                    </div>
                    <div class="card-body card-block">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <caption>Lista lugares de atenci&oacute;n</caption>
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Direccion</th>
                                    <th>Ciudad</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%ArrayList<LugarAtencion> la = (ArrayList)request.getAttribute("listLugar");
                                for(LugarAtencion luat : la){%>
                                    <td><%=luat.getNombre()%></td>
                                    <td><%=luat.getDireccion()%></td>
                                    <td><%=luat.getCiudad()%></td>
                                <td>
                                        <a href="LugarAtencion.do?a=update&lugar=<%=luat.getLugar()%>">Editar</a>
                                        <a href="LugarAtencion.do?a=delete&lugar=<%=luat.getLugar()%>">Eliminar</a>
                                    </td>
                                    <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="Footer.jsp" %>
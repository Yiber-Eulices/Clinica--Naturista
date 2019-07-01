<%@page import="Modelo.Medicamento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Persona"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <strong>Lista de Medicamentos.</strong>
                    </div>
                    <div class="card-body card-block">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <caption>Lista de Medicamentos</caption>
                            <thead>
                                <th>Nombre</th>
                                <th>C&oacute;digo</th>
                                <th>Precio</th>
                                <th>Cantidad Disponible</th>
                                <th>Descripci&oacute;n</th>
                                <th>Acciones</th>
                            </thead>
                            <tbody>
                                <%
                                ArrayList<Medicamento> medicamento = (ArrayList)request.getAttribute("listarMedicamento");
                                %>  

                                <% for (Medicamento mto: medicamento){ %>
                                <tr>
                                    <td>
                                    <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar"><br>
                                    <%= mto.getNombre()%></td>
                                    <td><%= mto.getCodigo() %></td>
                                    <td><%= mto.getPrecio()%></td>
                                    <td><%= mto.getCantidad()%></td>
                                    <td><%= mto.getDescripcion()%></td>
                                    <td><div class="card-body">
                                        <a href="Medicamento.do?a=update&id=<%=mto.getIdmedicamento() %>">Editar</a>
                                        <a href="Medicamento.do?a=delete&id=<%=mto.getIdmedicamento()%>">Eliminar</a>
                                    </div></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="Footer.jsp" %>
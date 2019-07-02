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
                        <strong>A&ntilde;adir una persona.</strong>
                    </div>
                    <div class="card-body card-block">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <caption>Lista Personas</caption>
                            <thead>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Identificacion</th>
                                <th>Genero</th>
                                <th>Rh</th>
                                <th>Fecha de Nacimiento</th>
                                <th>Rol</th>
                                <th>Telefono</th>
                                <th>Correo</th>
                                <th>Acciones</th>
                            </thead>
                            <tbody>
                                <%
                                ArrayList<Persona> personas = (ArrayList)request.getAttribute("Per");
                                for (Persona prs :personas){%>
                                <tr>
                                    <td>
                                    <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar"><br>
                                    <%=prs.getNombre() %></td>
                                    <td><%=prs.getApellido() %></td>
                                    <td><%=prs.getDocumentid() %></td>
                                    <td><%=prs.getGenero() %></td>
                                    <td><%=prs.getRh() %></td>
                                    <td><%=prs.getFechaNacimiento() %></td>
                                    <td><%=prs.getRol() %></td>
                                    <td><%=prs.getTelefono() %></td>
                                    <td><%=prs.getCorreo() %></td>
                                    <td><div class="card-body">
                                            <a href="Persona.do?a=update&id=<%=prs.getIdpersona()%>">Editar</a>
                                            <a href="Persona.do?a=delete&id=<%=prs.getIdpersona()%>">Eliminar</a>
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
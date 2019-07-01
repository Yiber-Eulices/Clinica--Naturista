<%@page import="Modelo.Formula"%>
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
                        <strong>Lista de Formulas.</strong>
                    </div>
                    <div class="card-body card-block">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <caption>Lista de Formulas</caption>
                            <thead>
                                <th>Id</th>
                                <th>Descripcion</th>
                                <th>Cita</th>
                                <th>Acciones</th>
                            </thead>
                            <tbody>
                                <%
                                ArrayList<Formula> frm = (ArrayList)request.getAttribute("listarFormula");                                              
                                for (Formula fr: frm){%>
                                <tr>
                                    <td><%=fr.getIdformula() %></td>
                                    <td><%=fr.getDescripcion() %></td>
                                    <td><%=fr.getIdcita().getIdcita() %> <%=fr.getIdcita().getFecha()%></td>
                                    <td><div class="card-body">
                                            <a href="Formula.do?a=update&id=<%=fr.getIdformula() %>">Editar</a>
                                            <a href="Formula.do?a=delete&id=<%=fr.getIdformula()%>">Eliminar</a>
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
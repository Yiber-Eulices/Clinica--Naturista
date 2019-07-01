<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.FormulaProducto"%>
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
                                <tr>
                                    <td>Cantidad: </td>
                                    <td>Precio/U: </td>
                                    <td>Iva: </td>
                                    <td>Dosis: </td>
                                    <td>Formula: </td>
                                    <td>Medicamento: </td>
                                    <td>Acciones: </td>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                ArrayList<FormulaProducto> frmp = (ArrayList)request.getAttribute("listFormulaProducto");
                                for (FormulaProducto fp :frmp){%>
                                <td><%=fp.getCantidad()%></td>
                                <td><%=fp.getPrecioUnitario()%></td>
                                <td><%=fp.getIva()%></td>
                                <td><%=fp.getDosis()%></td>
                                <td><%=fp.getIdformula().getDescripcion() %></td>
                                <td><%=fp.getIdproducto().getNombre() %></td>
                                <td><div class="card-body">
                                        <a href="FormulaProducto?a=update&id=<%=fp.getIdformproducto()%>">Editar</a>
                                        <a href="FormulaProducto?a=delete&id=<%=fp.getIdformproducto()%>">Eliminar</a>
                                </div></td>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="Footer.jsp" %>
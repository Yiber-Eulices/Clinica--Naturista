
<%@include file="Header.jsp" %>
<%@page import="Modelo.FormulaProducto"%>
<%@page import="Modelo.Medicamento"%>
<%@page import="Modelo.Formula"%>
<%@page import="java.util.ArrayList"%>
<div class="content">
        <h1>Formula medicamento</h1>
        <%FormulaProducto fp = (FormulaProducto)request.getAttribute("ediFP");%>
        <form action="FormulaProducto.do?a=update&id=<%=fp.getIdformproducto()%>" method="post">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-xs-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Editar formula medicamento.</strong>
                                
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label class="form-control-label">* Cantidad :</label>
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                    <input class="form-control" name="cantidad" type="text" value="<%=fp.getCantidad()%>"/><br>
                                    </div>
                                </div>
                            
                                <div class="form-group">
                                    <label class="form-control-label">* Precio Unitario :</label>
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                    <input class="form-control"  name="precioUnitario" type="text" value="<%=fp.getPrecioUnitario()%>"/><br>
                                    </div>
                                </div>
                            
                            
                                <div class="form-group">
                                    <label class="form-control-label">* Iva :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-badge"></i></div>
                                        <input class="form-control" name="iv" type="text" value="<%=fp.getIva()%>"/><br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">* Dosis :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-badge"></i></div>
                                        <input class="form-control" name="dosis" type="text" value="<%=fp.getDosis()%>"/><br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">* Formula :</label>
                                    <div class="input-group">
                                        <select name="idformula">
                                            <%ArrayList<Formula> formu = (ArrayList)request.getAttribute("formula");
                                            for(Formula fml : formu){%>
                                            <option value="<%=fml.getIdformula()%>"><%=fml.getDescripcion()%></option>
                                            <%}%>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">* Medicamento :</label>
                                    <div class="input-group">
                                        <select name="idmedicamento">
                                            <%ArrayList<Medicamento> med = (ArrayList)request.getAttribute("m"
                                                    + "edicamento");
                                            for(Medicamento medi : med){%>
                                            <option value="<%=medi.getIdmedicamento()%>"><%=medi.getNombre()%></option>
                                            <%}%>
                                        </select>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Acciones</strong>
                                    </div>
                                    <div class="card-body">
                                        <input type="submit" class="btn btn-outline-primary" value="Guardar">
                                        <a class="btn btn-outline-warning" href="FormulaProducto.do?a=admin" role="button">Cancelar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            </div>
        </form>
</div>
<%@include file="Footer.jsp" %>
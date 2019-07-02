
<%@page import="Modelo.Medicamento"%>
<%@page import="Modelo.Formula"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
        <h1>Lugar Atencion</h1>
        <form action="LugarAtencion.do?a=create" method="post">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-xs-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>A&ntilde;adir lugar antencion.</strong>
                                
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label class="form-control-label">* Cantidad :</label>
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                    <input class="form-control" placeholder="Cantidad" name="cantidad" type="text"/><br>
                                    </div>
                                </div>
                            
                                <div class="form-group">
                                    <label class="form-control-label">* Precio Unitario :</label>
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                    <input class="form-control" placeholder="Precio Unitario" name="preciounitario" type="text"/><br>
                                    </div>
                                </div>
                            
                            
                                <div class="form-group">
                                    <label class="form-control-label">* Iva :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-badge"></i></div>
                                        <input class="form-control" placeholder="Iva" name="iva" type="text"/><br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">* Dosis :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-badge"></i></div>
                                        <input class="form-control" placeholder="Dosis" name="dosis" type="text"/><br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">* Formula :</label>
                                    <div class="input-group">
                                        <select name="formula">
                                            <option value="Seleccione"></option>
                                            <%ArrayList<Formula> formu = (ArrayList)request.getAttribute("listFormula");%>
                                            <%for(Formula fml : formu){%>
                                            <option value="<%=fml.getIdformula()%>"><%=fml.getDescripcion()%></option>
                                            <%}%>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">* Medicamento :</label>
                                    <div class="input-group">
                                        <select name="medicamento">
                                            <option value="Selecciones"></option>
                                            <%ArrayList<Medicamento> med = (ArrayList)request.getAttribute("listMedicamento");%>
                                            <%for(Medicamento medi : med){%>
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
                                        <a class="btn btn-outline-warning" href="Home.jsp" role="button">Cancelar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
<%@include file="Footer.jsp" %>


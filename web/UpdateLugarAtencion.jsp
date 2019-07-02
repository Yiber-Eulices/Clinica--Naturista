
<%@include file="Header.jsp" %>
<%@page import="Modelo.LugarAtencion"%>
<div class="content">
        <h1>Lugar Atencion</h1>
        <%LugarAtencion la = (LugarAtencion)request.getAttribute("edidLugar");%>
        <form action="LugarAtencion.do?a=update&lugar=<%=la.getLugar()%>" method="post">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-xs-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>A&ntilde;adir lugar antencion.</strong>
                                
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label class="form-control-label">* Nombre :</label>
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                    <input class="form-control"  name="nombre" type="text" value="<%=la.getNombre()%>"/><br>
                                    </div>
                                </div>
                            
                                <div class="form-group">
                                    <label class="form-control-label">* Direccion :</label>
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                    <input class="form-control"  name="direccion" type="text" value="<%=la.getDireccion()%>"/><br>
                                    </div>
                                </div>
                            
                            
                                <div class="form-group">
                                    <label class="form-control-label">* Ciudad :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-badge"></i></div>
                                        <input class="form-control" name="ciudad" type="text" value="<%=la.getCiudad()%>"/><br>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Acciones</strong>
                                    </div>
                                    <div class="card-body">
                                        <input type="submit" class="btn btn-outline-primary" value="Guardar">
                                        <a class="btn btn-outline-warning" href="LugarAtencion.do?a=admin" role="button">Cancelar</a>
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


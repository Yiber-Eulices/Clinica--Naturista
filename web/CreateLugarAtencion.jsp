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
                                    <label class="form-control-label">* Nombre :</label>
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                    <input class="form-control" placeholder="Nombre" name="nombre" type="text"/><br>
                                    </div>
                                </div>
                            
                                <div class="form-group">
                                    <label class="form-control-label">* Direccion :</label>
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                    <input class="form-control" placeholder="Direccion" name="direccion" type="text"/><br>
                                    </div>
                                </div>
                            
                            
                                <div class="form-group">
                                    <label class="form-control-label">* Ciudad :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-badge"></i></div>
                                        <input class="form-control" placeholder="Ciudad" name="ciudad" type="text"/><br>
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

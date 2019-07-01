<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->
<form action="Medicamento.do?a=create" method="post" >
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <strong>A&ntilde;adir un Medicamento.</strong>
                    </div>
                    <div class="card-body card-block">
                        
                        
                        <label for="" class="formulario__label">C&oacute;digo </label>
                        <input type="text" name="txtCodigo" class="formulario__input" required="required" id="datepicker"/>
                        <label for="" class="formulario__label">Nombre:</label>
                        <input type="text" name="txtNombre" class="formulario__input" required="required" id="nombre"/>
                        <label for="" class="formulario__label">Precio:</label>
                        <input type="text" name="txtPrecio" class="formulario__input" required="required" id="precio"/>
                        <label for="" class="formulario__label">Cantidad Disponible:</label>          
                        <input type="text" name="txtCantdisp" class="formulario__input" required="required" id="cantDisp"/>  <br><br>
                        <label for="" class="formulario__label">Descripci&oacute;n:</label> <br>
                        <br>
                        <textarea name="txtDescripcion" rows="30" cols="90" class="formulario__input" required="required" id="descripcion"> </textarea>   
                        <br>
                        <input type="submit" value="Guardar" class="formulario__submit" />
                        
                        
                        
              
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<%@include file="Footer.jsp" %>
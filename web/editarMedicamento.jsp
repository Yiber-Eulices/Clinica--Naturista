<%@page import="Modelo.Medicamento"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->
<% Medicamento mto= (Medicamento) request.getAttribute("editarMedicamento");%>
<form action="Medicamento.do?a=update&id=<%=mto.getIdmedicamento()%>" method="post" >
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <strong>Editar Medicamento.</strong>
                    </div>
                    <div class="card-body card-block">
                        
                        

                            <label for="" class="formulario__label">C&oacute;digo </label>
                             <input type="text" name="txtCodigo" value="<%=mto.getCodigo()%>" required="required"/>
                             <label for="" class="formulario__label">Nombre:</label>
                             <input type="text" name="txtNombre" value="<%=mto.getNombre()%>" required="required"/>
                             <label for="" class="formulario__label">Precio:</label>
                             <input type="text" name="txtPrecio" value="<%=mto.getPrecio()%>" required="required"/>
                             <label for="" class="formulario__label">Cantidad Disponible:</label>          
                             <input type="text" name="txtCantdisp" value="<%=mto.getCantidad()%>" required="required"/>  <br><br>
                             <label for="" class="formulario__label">Descripci&oacute;n:</label> <br><br>             
                             <textarea name="txtDescripcion" value="<%=mto.getDescripcion()%>" rows="30" cols="90" required="required"> </textarea>   
                             <br>
                             <input type="submit" value="Guardar"  />
              
       
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<%@include file="Footer.jsp" %>
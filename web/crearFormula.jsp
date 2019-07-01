
<%@page import= "Modelo.Formula"%>
<%@page import= "Modelo.Cita"%>
<%@page import="java.util.ArrayList"%>

<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->
<form action="Formula.do?a=create" method="post" >
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <strong>A&ntilde;adir una Formula.</strong>
                    </div>
                    <div class="card-body card-block">
                        
                        Cita:
                <select name="cmbCita">
                    <option value=""> Seleccione </option>
                    <% ArrayList<Cita> cita = (ArrayList) request.getAttribute("Cita");%>
                    <% for(Cita cta : cita){ %>
                        <option value="<%=cta.getIdcita()%>"><%=cta.getIdcita()%> <%=cta.getFecha() %></option>
                    <% } %>  
                </select>
                <br/><br>  
                <label for="" class="formulario__label">Descripci&oacute;n:</label>
                <br>
                <textarea name="txtDescripcion" rows="30"  required="required" > </textarea>   
                <br>
                <input type="submit" value="Guardar"/>

                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<%@include file="Footer.jsp" %>
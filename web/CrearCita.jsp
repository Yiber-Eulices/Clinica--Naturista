<%@page import="Modelo.Especialidad"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->

    <div class="animated fadeIn">
        <div class="row">
             <h1>Regitrar Cita</h1><hr>
        <form action="Cita.do?a=create" method="post">
            <label>Fecha</label><br/><br/>
            <input type="date" name="txtfecha" required="required" placeholder="Fecha cita" /><br/><br/>
            <label>Hora</label><br/><br/>
            <div class="input-group clockpicker" data-autoclose="true" ><input type="text" name="txthora" placeholder="Hora cita" /><br/><br/></div>
            
            <input type="text" name="txtobservaciones" required="required" placeholder="Descripcion" /><br/><br/>
            
            <select name="txtestado" required="required">
                <option>Seleccione</option>
                <option>Activo</option>
                <option>Atendido</option>
             
            </select>
            
            <select name="doctor" required="required">
                <option value="">Seleccione</option>
                <% ArrayList<Persona> doc = (ArrayList) request.getAttribute("listaDoctor"); %>
                <% for(Persona doct: doc) {
                if (doct.getRol().equals("medico")){ %>
                <option value="<%=doct.getIdpersona()%>"><%=doct.getNombre()%></option>
                <%}}%>
            </select>
            
            <select name="paciente" required="required">
               <option value="">Seleccione</option>
                <% ArrayList<Persona> paci = (ArrayList) request.getAttribute("listaPaciente"); %>
                <% for(Persona pac: paci) {%>
                <option value="<%=pac.getIdpersona()%>"><%=pac.getNombre()%></option>
                <%}%>

            </select>
                
            <select name="especialidad" required="required">
              <option value="">Seleccione</option>
                <% ArrayList<Especialidad> esp = (ArrayList) request.getAttribute("listaEspecialidad"); %>
                <% for(Especialidad espe: esp) {%>
                <option value="<%=espe.getIdespecialidad()%>"><%=espe.getNombre()%></option>
                <%}%>
            </select>
            
            <select name="lugar" required="required">
                <option value="">Seleccione</option>
                <% ArrayList<LugarAtencion> lug = (ArrayList) request.getAttribute("listaLugar"); %>
                <% for(LugarAtencion lugar: lug) {%>
                <option value="<%=lugar.getLugar()%>"><%=lugar.getNombre()%></option>
                <%}%>
            </select>
            
             <button type="submit" >Registrar</button>
             </form>
        </div>
    </div>
<script>
    $('.clockpicker').clockpicker();
</script>
<%@include file="Footer.jsp" %>


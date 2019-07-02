<%@page import="Modelo.Cita"%>
<%@page import="Modelo.Especialidad"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->

    <div class="animated fadeIn">
        <div class="row">
        <h1>Actualizar Cita</h1>
        <% Cita cit =  (Cita)request.getAttribute("editarCita"); %>
         <form action="cita.do?a=create" method="post">
            <label>Fecha</label><br/><br/>
            <input type="text" name="txtfecha" placeholder="Fecha cita" /><br/><br/>
            <label>Hora</label><br/><br/>
            <input type="text" name="txthora" placeholder="Hora cita" /><br/><br/>
            <input type="text" name="txtobservaciones" placeholder="Descripcion" /><br/><br/>
            
            <select name="txtestado">
                <option>Seleccione</option>
                <option>Activo</option>
                <option>Atendido</option>
             
            </select>
            
            <select name="doctor">
                <option value="<%=cit.getIddoctor().getIdpersona()%>"><%=cit.getIddoctor().getIdpersona()%></option>
            <% ArrayList<Persona> doc = (ArrayList) request.getAttribute("doctor"); %>
                <% for(Persona doct: doc) {
                if (doct.getRol().equals("medico")){ %>
                <option value="<%=doct.getIdpersona()%>"><%=doct.getNombre()%></option>
                <%}}%>
            </select>
            
            <select name="paciente">
               <option value="<%=cit.getIdpaciente().getIdpersona()%>"><%=cit.getIdpaciente().getIdpersona()%></option>
                <% ArrayList<Persona> paci = (ArrayList) request.getAttribute("paciente"); %>
                <% for(Persona pac: paci) {%>
                <option value="<%=pac.getIdpersona()%>"><%=pac.getNombre()%></option>
                <%}%>

            </select>
                
            <select name="especialidad">
              <option value="<%=cit.getIdespecialidad().getIdespecialidad()%>"><%=cit.getIdespecialidad().getIdespecialidad()%></option>
                <% ArrayList<Especialidad> esp = (ArrayList) request.getAttribute("especialidad"); %>
                <% for(Especialidad espe: esp) {%>
                <option value="<%=espe.getIdespecialidad()%>"><%=espe.getNombre()%></option>
                <%}%>
            </select>
            
            <select name="lugar">
                <option value="<%=cit.getIdlugar().getLugar()%>"><%=cit.getIdlugar().getLugar()%></option>
                <% ArrayList<LugarAtencion> lug = (ArrayList) request.getAttribute("lugar"); %>
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
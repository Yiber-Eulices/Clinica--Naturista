<%-- 
    Document   : CrearCita
    Created on : 28-jun-2019, 15:50:18
    Author     : ADMIN
--%>

<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Especialidad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Regitrar Cita</h1><hr>
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
                <option value="">Seleccione</option>
            <% ArrayList<Persona> doc = (ArrayList) request.getAttribute("listaDoctor"); %>
                <% for(Persona doct: doc) {%>
                <option value="<%=doct.getIdpersona()%>"><%=doct.getNombre()%></option>
                <%}%>
            </select>
            
            <select name="paciente">
               <option value="">Seleccione</option>
                <% ArrayList<Persona> paci = (ArrayList) request.getAttribute("listaPaciente"); %>
                <% for(Persona pac: paci) {%>
                <option value="<%=pac.getIdpersona()%>"><%=pac.getNombre()%></option>
                <%}%>

            </select>
                
            <select name="especialidad">
              <option value="">Seleccione</option>
                <% ArrayList<Especialidad> esp = (ArrayList) request.getAttribute("listaEspecialidad"); %>
                <% for(Especialidad espe: esp) {%>
                <option value="<%=espe.getIdespecialidad()%>"><%=espe.getNombre()%></option>
                <%}%>
            </select>
            
            <select name="lugar">
                <option value="">Seleccione</option>
                <% ArrayList<LugarAtencion> lug = (ArrayList) request.getAttribute("listaLugar"); %>
                <% for(LugarAtencion lugar: lug) {%>
                <option value="<%=lugar.getLugar()%>"><%=lugar.getNombre()%></option>
                <%}%>
            </select>
            
             <button type="submit" >Registrar</button>
        </form>
    </body>
</html>

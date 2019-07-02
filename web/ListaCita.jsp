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
                <h1>Actualizar cita</h1>
                <table>
                <tr>
                    <th>Fecha</th>
                    <th>Hora</th>
                    <th>Observaciones</th>
                    <th>Estado</th>
                    <th>Doctor</th>
                    <th>Paciente</th>
                    <th>Especialidad</th>
                    <th>Lugar</th>
                </tr>
                <%  ArrayList<Cita> cita = (ArrayList) request.getAttribute("ListaCita"); %>
                        <% for(Cita cit: cita){%>
                <tr>
                    <td><%=cit.getFecha()%></td>
                    <td><%=cit.getHora()%></td>
                    <td><%=cit.getObservaciones()%></td>
                    <td><%=cit.getEstado()%></td>
                    <td><%=cit.getIddoctor().getNombre()%></td>
                    <td><%=cit.getIdpaciente().getNombre()%></td>
                    <td><%=cit.getIdespecialidad().getNombre()%></td>
                    <td><%=cit.getIdlugar().getNombre()%></td>

                     <td>
                    <button type="submit" onclick="js:window.location.href='Cita.do?a=update&id=<%=cit.getIdcita()%>'">Actualizar</button> </td>
                <td><button type="submit" onclick="js:window.location.href='Cita.do?a=delete&id=<%=cit.getIdcita()%>'">Eliminar</button> </td>

                </tr>
                <%}%>
            </table>
        </div>
    </div>

<%@include file="Footer.jsp" %>

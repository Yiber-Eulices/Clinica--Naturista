<%@page import="Modelo.Especialidad"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->

    <div class="animated fadeIn">
        <div class="row">
        <h1>Especialidad</h1>
        
    <tr>
    <th>Nombre</th>
    <th>Descripcion</th>
    <th>Actualizar</th>
    <th>Eliminar</th>
    </tr> 
        <%
          ArrayList<Especialidad> espe = (ArrayList) request.getAttribute("Listaespecialdad");
        %>  
        <% for(Especialidad esp: espe){%>
    <tr>
    <td><%=esp.getNombre()%></td>
    <td><%=esp.getDescripcion()%></td>
    
    <td>
        <button type="submit" onclick="js:window.location.href='Especialidad.do?a=update&id=<%=esp.getIdespecialidad()%>'">Actualizar</button> </td>
    <td><button type="submit" onclick="js:window.location.href='Especialidad.do?a=delete&id=<%=esp.getIdespecialidad()%>'">Eliminar</button> </td>
        
    
    </tr>
        <%}%>
        </table>
       </div>
    </div>

<%@include file="Footer.jsp" %>

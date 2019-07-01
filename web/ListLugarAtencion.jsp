<%-- 
    Document   : ListLugarAtencion
    Created on : 28/06/2019, 02:10:27 PM
    Author     : Asus
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
                <tr>
                    <th>Nombre</th>
                    <th>Direccion</th>
                    <th>Ciudad</th>
                    <th>Acciones</th>
                </tr>
            <%ArrayList<LugarAtencion> la = (ArrayList)request.getAttribute("listLugar");%>
            <%for(LugarAtencion luat : la){%>
            <tr>
                <td><%=luat.getNombre()%></td>
                <td><%=luat.getDireccion()%></td>
                <td><%=luat.getCiudad()%></td>
                <td>
                    <p>
                        <a href="lugar.do?a=update&lugar=<%=luat.getLugar()%>">
                            <button type="submit">Actualizar</button>
                        </a>
                        <a href="lugar.do?a=delete&lugar=<%=luat.getLugar()%>">
                            <button type="submit">Eliminar</button>
                        </a>
                    </p>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>

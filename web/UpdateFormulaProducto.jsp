<%-- 
    Document   : UpdateFormulaProducto
    Created on : 29/06/2019, 08:29:44 PM
    Author     : Asus
--%>

<%@page import="Modelo.FormulaProducto"%>
<%@page import="Modelo.Medicamento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Formula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <form action="formproduc.do?a=update" method="post">
             <%FormulaProducto fp = (FormulaProducto)request.getAttribute("ediFP");%>
            <label>Cantidad: </label>
            <input type="text" name="cantidad" value="<%=fp.getCantidad()%>"/>
            <label>Precio Unitario: </label>
            <input type="text" name="precioUnitario" value="<%=fp.getPrecioUnitario()%>"/>
            <label>Iva: </label>
            <input type="text" name="iva" value="<%=fp.getIva()%>"/>
            <label>Dosis: </label>
            <input type="text" name="dosis" value="<%=fp.getDosis()%>"/>
            <label>Formula: </label>
            <select name="formula">
                <option value=""></option>
                <%ArrayList<Formula> formu = (ArrayList)request.getAttribute("formula");%>
                <%for(Formula fml : formu){%>
                <option value="<%=fml.getIdformula()%>"><%=fml.getDescripcion()%></option>
                <%}%>
            </select>
            <label>Medicamento: </label>
            <select name="medicamento">
                <option value=""></option>
                <%ArrayList<Medicamento> med = (ArrayList)request.getAttribute("medicamento");%>
                <%for(Medicamento medi : med){%>
                <option value="<%=medi.getIdmedicamento()%>"><%=medi.getNombre()%></option>
                <%}%>
            </select>
            <button type="submit">Update</button>
        </form>
    </body>
</html>

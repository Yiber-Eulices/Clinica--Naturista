<%-- 
    Document   : CreateFormulaProducto
    Created on : 28/06/2019, 04:25:47 PM
    Author     : Asus
--%>

<%@page import="Modelo.Medicamento"%>
<%@page import="Modelo.Formula"%>
<%@page import="Modelo.FormulaProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="FormulaProducto.do?a=create" method="post">
            <label>Cantidad: </label>
            <input type="text" name="cantidad"/>
            <label>Precio Unitario: </label>
            <input type="text" name="precioUnitario"/>
            <label>Iva: </label>
            <input type="text" name="iva"/>
            <label>Dosis: </label>
            <input type="text" name="dosis"/>
            <label>Medicamento: </label>
            <select name="formula">
                <option value=""></option>
                <%ArrayList<Formula> formu = (ArrayList)request.getAttribute("listFormula");%>
                <%for(Formula fml : formu){%>
                <option value="<%=fml.getIdformula()%>"><%=fml.getDescripcion()%></option>
                <%}%>
            </select>
            <select name="medicamento">
                <option value=""></option>
                <%ArrayList<Medicamento> med = (ArrayList)request.getAttribute("listMedicamento");%>
                <%for(Medicamento medi : med){%>
                <option value="<%=medi.getIdmedicamento()%>"><%=medi.getNombre()%></option>
                <%}%>
            </select>
            <button type="submit">Guardar</button>
        </form>
    </body>
</html>

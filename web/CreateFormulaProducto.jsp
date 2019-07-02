<%@page import="Modelo.Formula"%>
<%@page import="Modelo.Medicamento"%>
<%@page import="Modelo.Especialidad"%>
<%@page import="Modelo.LugarAtencion"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->

    <div class="animated fadeIn">
        <div class="row">
        <h1>Hello World!</h1>
        <form action="FormulaProducto.do?a=create" method="post">
            <label>Cantidad: </label>
            <input type="text" required="required" name="cantidad"/>
            <label>Precio Unitario: </label>
            <input type="text" required="required" name="precioUnitario"/>
            <label>Iva: </label>
            <input type="text" required="required" name="iva"/>
            <label>Dosis: </label>
            <input type="text" required="required" name="dosis"/>
            <label>Medicamento: </label>
            <select name="formula" required="required">
                <option value=""></option>
                <%ArrayList<Formula> formu = (ArrayList)request.getAttribute("listFormula");%>
                <%for(Formula fml : formu){%>
                <option value="<%=fml.getIdformula()%>"><%=fml.getDescripcion()%></option>
                <%}%>
            </select>
            <select name="medicamento" required="required" >
                <option value=""></option>
                <%ArrayList<Medicamento> med = (ArrayList)request.getAttribute("listMedicamento");%>
                <%for(Medicamento medi : med){%>
                <option value="<%=medi.getIdmedicamento()%>"><%=medi.getNombre()%></option>
                <%}%>
            </select>
            <button type="submit">Guardar</button>
        </form>
        </div>
    </div>

<%@include file="Footer.jsp" %>
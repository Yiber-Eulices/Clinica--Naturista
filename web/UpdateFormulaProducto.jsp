<%@page import="Modelo.FormulaProducto"%>
<%@page import="Modelo.Medicamento"%>
<%@page import="Modelo.Formula"%>
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
         <form action="formproduc.do?a=update" method="post">
             <%FormulaProducto fp = (FormulaProducto)request.getAttribute("ediFP");%>
            <label>Cantidad: </label>
            <input type="text" name="cantidad" required="required" value="<%=fp.getCantidad()%>"/>
            <label>Precio Unitario: </label>
            <input type="text" name="precioUnitario" required="required" value="<%=fp.getPrecioUnitario()%>"/>
            <label>Iva: </label>
            <input type="text" name="iva" required="required" value="<%=fp.getIva()%>"/>
            <label>Dosis: </label>
            <input type="text" name="dosis" required="required" value="<%=fp.getDosis()%>"/>
            <label>Formula: </label>
            <select name="formula" required="required">
                <option value=""></option>
                <%ArrayList<Formula> formu = (ArrayList)request.getAttribute("formula");%>
                <%for(Formula fml : formu){%>
                <option value="<%=fml.getIdformula()%>"><%=fml.getDescripcion()%></option>
                <%}%>
            </select>
            <label>Medicamento: </label>
            <select name="medicamento" required="required">
                <option value=""></option>
                <%ArrayList<Medicamento> med = (ArrayList)request.getAttribute("medicamento");%>
                <%for(Medicamento medi : med){%>
                <option value="<%=medi.getIdmedicamento()%>"><%=medi.getNombre()%></option>
                <%}%>
            </select>
            <button type="submit">Update</button>
        </form>
        </div>
    </div>

<%@include file="Footer.jsp" %>

<%@page import="Modelo.FormulaProducto"%>
<%@page import="Modelo.Medicamento"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->
    <div class="animated fadeIn">
        <div class="row"> 
            <%  ArrayList<FormulaProducto> frmp = (ArrayList)request.getAttribute("listFormulaProducto");
                ArrayList<Medicamento> medicamento = (ArrayList)request.getAttribute("listarMedicamento");
                for (Medicamento mdc :medicamento){ %>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-one">
                                    <div class="stat-icon dib"><img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar"></div>
                                    <div class="stat-content dib">
                                        <div class="stat-heading">Medicamento</div>
                                        <div class="stat-text">Nombre : <%=mdc.getNombre()%></div>
                                        <div class="stat-text">Codigo : <%=mdc.getCodigo()%></div>
                                        <div class="stat-text">Cantidad Disponible : <%=mdc.getCantidad()%></div>
                                        <div class="stat-text">Precio : <%=mdc.getPrecio() %></div>
                                        <div class="stat-text">descripcion : <%=mdc.getDescripcion()%></div>                                
                                        <%//int fpasCanceladas = 0;                                            
                                          int cantidadVendida = 0;
                                          double iva = 0;
                                          double subtotal = 0;
                                          double total = 0;
                                          for(FormulaProducto fp: frmp){
                                              if (fp.getIdproducto().getIdmedicamento()==mdc.getIdmedicamento()){
                                                subtotal += fp.getCantidad()*fp.getPrecioUnitario();
                                                cantidadVendida+=fp.getCantidad();
                                                iva += (fp.getCantidad()*fp.getPrecioUnitario())*fp.getIva()/100;                                                
                                                total=iva+subtotal;
                                              }
                                          }
                                        %>
                                        <!--div class="stat-text">Citas Canceladas : </div-->
                                        <div class="stat-text">Cantidad Vendida : <%=cantidadVendida%></div>
                                        <div class="stat-text">Sub Total Vendido: <%=subtotal%></div>
                                        <div class="stat-text">Precio Iva : <%=iva%></div>
                                        <div class="stat-text">Total : <%=total%></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                <%}%>
        </div>
    </div>
  
<%@include file="Footer.jsp" %>

<%@page import="Modelo.Cita"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->
    <div class="animated fadeIn">
        <div class="row"> 
            <%  ArrayList<Persona> personas = (ArrayList)request.getAttribute("Per");
                ArrayList<Cita> cita = (ArrayList) request.getAttribute("ListaCita"); 
                for (Persona prs :personas){
                if (prs.getRol().equals("medico")){  %>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-one">
                                    <div class="stat-icon dib"><img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar"></div>
                                    <div class="stat-content dib">
                                        <div class="stat-heading">Medico</div>
                                        <div class="stat-text">Nombre : <%=prs.getNombre()%> <%=prs.getApellido()%></div>
                                        <div class="stat-text">Fecha de Nacimiento : <%=prs.getFechaNacimiento()%></div>
                                        <div class="stat-text">Correo : <%=prs.getCorreo()%></div>
                                        <div class="stat-text">Telefono : <%=prs.getTelefono()%></div>                                
                                        <%//int citasCanceladas = 0;
                                          int citasAtendidas = 0;
                                          int citasSinAtender = 0;
                                          for(Cita cit: cita){
                                              if (cit.getIdpaciente().getIdpersona()==prs.getIdpersona()){
                                                  /*if(cit.getEstado().equals("Canceladas")){
                                                      citasCanceladas+=1;
                                                  }*/
                                                  if(cit.getEstado().equals("Atendido")){
                                                      citasAtendidas+=1;
                                                  }
                                                  if(cit.getEstado().equals("Activo")){
                                                      citasSinAtender+=1;
                                                  }
                                              }
                                          }
                                        %>
                                        <!--div class="stat-text">Citas Canceladas : </div-->
                                        <div class="stat-text">Citas Atendidas : <%=citasAtendidas%></div>
                                        <div class="stat-text">Citas por Atender : <%=citasSinAtender%></div>
                                        <div class="stat-text">Total de Citas Agendadas : <%=citasSinAtender+citasAtendidas%></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                <%}}%>
        </div>
    </div>
  
<%@include file="Footer.jsp" %>

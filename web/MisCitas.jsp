<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Cita"%>
<%@include file="Header.jsp" %>



<div class="content">
<!-- Animated -->
    <div class="animated fadeIn">
        <div class="row">   
            <%  ArrayList<Cita> cita = (ArrayList) request.getAttribute("ListaCita"); %>
                    
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col"></div>
                                                    <div class="col-10"><div id="CalendarioWeb"></div></div>
                                                    <div class="col"></div>                        
                                                </div>
                                            </div>

                                        <script>
                                            $(document).ready(function(){
                                                $('#CalendarioWeb').fullCalendar({
                                                    header:{
                                                        left: 'today,prev,next',
                                                        center: 'title',
                                                        right:'month,basicWeek, basicDay, agendaWeek,agendaDay'
                                                    },/*dayClick:function (date,jsEvent,view){
                                                        alert("Valor seleccionado"+date.format());
                                                        alert("Vista actual"+view.name);
                                                        $(this).css('background-color','red');
                                                        $("#exampleModal").modal();
                                                    },*/events: [
                                                        <% for (Cita cit: cita) { 
                                                            if (cit.getIdpaciente().getIdpersona()== (Integer) session.getAttribute("UsuarioId") ){
                                                        %>
                                                            {
                                                                title  : 'Cita de : <%=cit.getIdespecialidad().getNombre()%>',
                                                                Observaciones : "Observaciones : <%=cit.getObservaciones() %>",
                                                                Doctor : " Doctor : <%=cit.getIddoctor().getNombre()%> <%=cit.getIddoctor().getApellido()%>",
                                                                Fecha : "Fecha de la Cita : <%=cit.getFecha() %>",
                                                                Hora : "Hora de la Cita : <%=cit.getHora() %>",
                                                                Ciudad : "Ciudad : <%=cit.getIdlugar().getCiudad()%>",
                                                                Lugar : "Lugar de Atencion : <%=cit.getIdlugar().getNombre() %>",
                                                                Direccion : " Direccion : <%=cit.getIdlugar().getDireccion() %>",
                                                                start  : '<%=cit.getFecha()%>T<%=cit.getHora()%>',                                                                  
                                                                allDay : false,
                                                                <% if (cit.getEstado().equals("Activo")){%>
                                                                    color:"black",textColor:"yellow"
                                                                <% }else if (cit.getEstado().equals("Atendido")){%>
                                                                    color:"black",textColor:"yellow"
                                                                <% }else if (cit.getEstado().equals("Cancelado")){%>
                                                                    color:"black",textColor:"yellow"
                                                                <% }%>
                                                            },                                                            
                                                        <% } } %> 
                                                            ],eventClick:function(calEvent,jsEvent,view){
                                                                $('#TituloEvento').html(calEvent.title);
                                                                $('#Observaciones').html(calEvent.Observaciones);
                                                                $('#Doctor').html(calEvent.Doctor);
                                                                $('#Fecha').html(calEvent.Fecha);
                                                                $('#Hora').html(calEvent.Hora);
                                                                $('#Ciudad').html(calEvent.Ciudad);
                                                                $('#Lugar').html(calEvent.Lugar);
                                                                $('#Direccion').html(calEvent.Direccion);
                                                                $("#exampleModal").modal();                                                                
                                                            }
                                                });
                                            });
                                        </script>
                                        <!-- Modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                  <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <h5 class="modal-title" id="TituloEvento"></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                        </button>
                                      </div>
                                      <div class="modal-body">
                                          <div id="Observaciones"></div>
                                          <div id="Doctor"></div>
                                          <div id="Fecha"></div>
                                          <div id="Hora"></div>
                                          <div id="Ciudad"></div>
                                          <div id="Lugar"></div>
                                          <div id="Direccion"></div>
                                          
                                      </div>
                                      <div class="modal-footer">
                                        <!--<button type="button" class="btn btn-success">Agregar</button>
                                        <button type="button" class="btn btn-secondary" >Close</button>
                                        <button type="button" class="btn btn-danger" >Borrar</button>-->
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                      </div>
                                    </div>
                                  </div>
                                </div>
    
        
        
        
         
        </div>
    </div>
  
<%@include file="Footer.jsp" %>
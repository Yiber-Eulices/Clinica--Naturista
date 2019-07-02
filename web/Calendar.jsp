<%@include file="Header.jsp" %>



<div class="content">
<!-- Animated -->
    <div class="animated fadeIn">
        <div class="row">   
        
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
                                                    },dayClick:function (date,jsEvent,view){
                                                        alert("Valor seleccionado"+date.format());
                                                        alert("Vista actual"+view.name);
                                                        $(this).css('background-color','red');
                                                        $("#exampleModal").modal();
                                                    },eventSources:[{
                                                            events: [
                                                                {
                                                                  title  : 'Evento 1',
                                                                  start  : '2019-07-01'
                                                                  ,color:"#FF0F0",textColor:"#FFFFFF"

                                                                },
                                                                {
                                                                  title  : 'Evento 2',
                                                                  start  : '2019-07-01',
                                                                  end    : '2019-07-07'
                                                                  ,color:"#FFF000",textColor:"#FFFFFF"
                                                                },
                                                                {
                                                                  title  : 'Evento 3',
                                                                  start  : '2019-07-01T12:30:00',
                                                                  allDay : false // will make the time show
                                                                  ,color:"black",textColor:"yellow"
                                                                }
                                                            ]/*,color:"black",textColor:"yellow" */
                                                    }]
                                                });
                                            });
                                        </script>
                                        <!-- Modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                  <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Agregar Titulo</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                        </button>
                                      </div>
                                      <div class="modal-body">
                                        ...
                                      </div>
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-success">Agregar</button>
                                        <button type="button" class="btn btn-secondary" >Close</button>
                                        <button type="button" class="btn btn-danger" >Borrar</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>

                                      </div>
                                    </div>
                                  </div>
                                </div>
    
        
        
        
         
        </div>
    </div>
  
<%@include file="Footer.jsp" %>
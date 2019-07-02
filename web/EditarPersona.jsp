<%@page import="Modelo.Persona"%>
<%@include file="Header.jsp" %>
<% Persona prsn = (Persona)request.getAttribute("EditarPersona");%>
<div class="content">
<!-- Animated -->
<form action="Persona.do?a=update&id=<%=prsn.getIdpersona()%>" method="post" >
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <strong>A&ntilde;adir una persona.</strong>
                    </div>
                    <div class="card-body card-block">
                        <div class="form-group">
                            <label class=" form-control-label">* Nombre :</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                <input class="form-control" type="text" required="required" name="txtNombre" placeholder="Name" value="<%=prsn.getNombre()%>">
                            </div>
                            <small class="form-text text-muted">ex. Juan Andres</small>
                        </div>
                        <div class="form-group">
                            <label class=" form-control-label">* Apellido :</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                <input class="form-control" type="text" required="required" name="txtApellido" placeholder="Last Name" value="<%=prsn.getApellido()%>">
                            </div>
                            <small class="form-text text-muted">ex. Perez Camargo</small>
                        </div>
                        <div class="form-group">
                            <label class=" form-control-label">* Documento de Identificaci&oacute;n :</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-id-badge"></i></div>
                                <input class="form-control" type="text" required="required" name="txtDocumentid" placeholder="Identification Number" value="<%=prsn.getDocumentid() %>">
                            </div>
                            <small class="form-text text-muted">ex. 9999999999</small>
                        </div>
                        <div class="form-group">
                            <label class=" form-control-label">* Fecha de Nacimiento :</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                <input class="form-control" type="date" required="required" name="txtFechaNacimiento" placeholder="DD/MM/AAAA" value="<%=prsn.getFechaNacimiento() %>">
                            </div>
                            <small class="form-text text-muted">ex. 99/99/9999</small>
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">* Genero :</strong>
                                </div>
                                <div class="card-body">
                                    <label class="switch switch-default switch-primary-outline switch-pill mr-2"><input  class="switch-input" type="radio" value="Masculino" name="txtGenero"> Masculino<span class="switch-label"></span> <span class="switch-handle"></span></label>

                                    <label class="switch switch-default switch-secondary-outline switch-pill mr-2"><input  class="switch-input" type="radio" value="Femenino" name="txtGenero"> Femenino <span class="switch-label"></span> <span class="switch-handle"></span></label>

                                    <label class="switch switch-default switch-success-outline switch-pill mr-2"><input  class="switch-input" checked="true"type="radio" value="Otro" name="txtGenero"> Otro<span class="switch-label"></span> <span class="switch-handle"></span></label>


                                </div>
                            </div>
                        </div><!--/.col-->
                        <div class="row form-group">
                                <div class="col col-md-2"><label for="txtRh" required="required" class=" form-control-label">* RH :</label></div>
                                <div class="col-12 col-md-4">
                                    <select name="txtRh" id="select" class="form-control">
                                        <option value="">Please select</option>
                                        <option value="A+">A+</option>
                                        <option value="A-">A-</option>
                                        <option value="B+">B+</option>
                                        <option value="B-">B-</option>
                                        <option value="O+">O+</option>
                                        <option value="O-">O-</option>
                                    </select>
                                </div>
                                <small class="form-text text-muted">ex. A+ or B+ or O+</small>
                        </div>
                        <div class="row form-group">
                                <div class="col col-md-3"><label for="file-input" class=" form-control-label">Foto :</label></div>
                                <div class="col-12 col-md-9"><input type="file"  id="file-input" name="txtFoto" class="form-control-file"></div>
                                 <small class="form-text text-muted">ex. C:\User\Documents\Photo.jsp</small>
                        </div>                                
                        <div class="form-group">
                            <label class=" form-control-label">* Telefono :</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-phone"></i></div>
                                <input class="form-control" type="text" required="required" name="txtTelefono" placeholder="Telephone" value="<%=prsn.getTelefono() %>">
                            </div>
                            <small class="form-text text-muted">ex. (999) 999-9999</small>
                        </div>
                        <div class="form-group">
                            <label class=" form-control-label">* Correo :</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-id-card-o"></i></div>
                                <input class="form-control" type="email" required="required" name="txtCorreo" placeholder="E-Mail" value="<%=prsn.getCorreo()%>">
                            </div>
                            <small class="form-text text-muted">ex. user@email.com</small>
                        </div>
                        <div class="form-group">
                            <label class=" form-control-label">* Password :</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                <input class="form-control" type="password" required="required" name="txtPassword" placeholder="Password">
                            </div>
                            <small class="form-text text-muted">ex. Mm8$&80Wb-</small>
                        </div>
                        <%if (session.getAttribute("Perfil").equals("paciente")){%>
                        <input type="hidden" required="required" value="Paciente" name="txtRol">
                        <%} else {%>
                            <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">* Rol :</strong>
                                </div>
                                <div class="card-body">
                                    <%if (session.getAttribute("Perfil").equals("administrador")){%>
                                        <label class="switch switch-default switch-primary-outline switch-pill mr-2"><input  class="switch-input" type="radio" value="Administrador" name="txtRol"> Administrador<span class="switch-label"></span> <span class="switch-handle"></span></label>
                                    
                                        <label class="switch switch-default switch-secondary-outline switch-pill mr-2"><input  class="switch-input" type="radio" value="Medico" name="txtRol"> Medico <span class="switch-label"></span> <span class="switch-handle"></span></label>
                                    <%} else if (session.getAttribute("Perfil").equals("medico")){%>
                                        <label class="switch switch-default switch-success-outline switch-pill mr-2"><input  class="switch-input" checked="true"type="radio" value="Paciente" name="txtRol"> Paciente<span class="switch-label"></span> <span class="switch-handle"></span></label>
                                    <%}%>
                                </div>
                            </div>
                            </div><!--/.col-->
                        <%}%>
                        <div class="card">
                        <div class="card-header">
                            <strong>Acciones</strong>                                    
                        </div>
                        <div class="card-body">
                            <input type="submit" class="btn btn-outline-primary" value="Guardar">
                            <input type="reset" class="btn btn-outline-danger" value="Limpiar">
                            <a class="btn btn-outline-warning" href="Home.jsp" role="button">Cancelar</a>
                        </div>
                    </div><!-- /# card -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<%@include file="Footer.jsp" %>

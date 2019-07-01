<%HttpSession sesionC = request.getSession();
sesionC.invalidate();%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ela Admin - HTML5 Admin Template</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
</head>
<body class="bg-dark">

    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container col-sm-12">
            <div class="login-content">
                <div class="login-logo">
                    <a href="Index.jsp">
                        <img class="align-content" src="images/logo.png" alt="">
                    </a>
                </div>
                <div class=" col-sm-12">
                    <form action="Persona.do?a=create" method="post" >                        
                        <div class="card">
                            <div class="card-header">
                                <strong>Register.</strong>
                            </div>
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label class=" form-control-label">* Nombre :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                        <input class="form-control" type="text" name="txtNombre" placeholder="Name">
                                    </div>
                                    <small class="form-text text-muted">ex. Juan Andres</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Apellido :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                        <input class="form-control" type="text" name="txtApellido" placeholder="Last Name">
                                    </div>
                                    <small class="form-text text-muted">ex. Perez Camargo</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Documento de Identificaci&oacute;n :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-badge"></i></div>
                                        <input class="form-control" type="text" name="txtDocumentid" placeholder="Identification Number">
                                    </div>
                                    <small class="form-text text-muted">ex. 9999999999</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Fecha de Nacimiento :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        <input class="form-control" type="date" name="txtFechaNacimiento" placeholder="DD/MM/AAAA">
                                    </div>
                                    <small class="form-text text-muted">ex. 99/99/9999</small>
                                </div>
                                <div class="col-md-12">
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
                                        <div class="col col-md-2"><label for="txtRh" class=" form-control-label">* RH :</label></div>
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
                                        <div class="col-12 col-md-9"><input type="file" id="file-input" name="txtFoto" class="form-control-file"></div>
                                         <small class="form-text text-muted">ex. C:\User\Documents\Photo.jsp</small>
                                </div>                                
                                <div class="form-group">
                                    <label class=" form-control-label">* Telefono :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-phone"></i></div>
                                        <input class="form-control" type="text" name="txtTelefono" placeholder="Telephone" >
                                    </div>
                                    <small class="form-text text-muted">ex. (999) 999-9999</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Correo :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-card-o"></i></div>
                                        <input class="form-control" type="email" name="txtCorreo" placeholder="E-Mail">
                                    </div>
                                    <small class="form-text text-muted">ex. user@email.com</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Password :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                        <input class="form-control" type="password" name="txtPassword" placeholder="Password">
                                    </div>
                                    <small class="form-text text-muted">ex. Mm8$&80Wb-</small>
                                </div>
                                <input class="switch-input" type="hidden" value="Paciente" name="txtRol">
                                </div><!--/.col-->
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Acciones</strong>                                    
                                    </div>
                                    <div class="card-body">
                                        <input type="submit" class="btn btn-outline-primary" value="Guardar">
                                        <input type="reset" class="btn btn-outline-danger" value="Limpiar">
                                        <a class="btn btn-outline-warning" href="Login.jsp" role="button">Cancelar</a>
                                    </div>
                                </div><!-- /# card -->
                            </div>                                    
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>

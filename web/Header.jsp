<% if (session.getAttribute("Perfil")==null||session.getAttribute("Perfil").equals("")){
    //response.sendRedirect("Login.jsp");
    request.getRequestDispatcher("Login.jsp").forward(request, response);
}%>
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
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />

   <style>
    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }

    </style>
</head>
<body>
    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="Home.jsp"><i class="menu-icon fa fa-laptop"></i>Home </a>
                    </li>
                    <li class="menu-title">UI elements</li><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-cogs"></i>Components</a>
                        <ul class="sub-menu children dropdown-menu">                            <li><i class="fa fa-puzzle-piece"></i><a href="ui-buttons.html">Buttons</a></li>
                            <li><i class="fa fa-id-badge"></i><a href="ui-badges.html">Badges</a></li>
                            <li><i class="fa fa-bars"></i><a href="ui-tabs.html">Tabs</a></li>

                            <li><i class="fa fa-id-card-o"></i><a href="ui-cards.html">Cards</a></li>
                            <li><i class="fa fa-exclamation-triangle"></i><a href="ui-alerts.html">Alerts</a></li>
                            <li><i class="fa fa-spinner"></i><a href="ui-progressbar.html">Progress Bars</a></li>
                            <li><i class="fa fa-fire"></i><a href="ui-modals.html">Modals</a></li>
                            <li><i class="fa fa-book"></i><a href="ui-switches.html">Switches</a></li>
                            <li><i class="fa fa-th"></i><a href="ui-grids.html">Grids</a></li>
                            <li><i class="fa fa-file-word-o"></i><a href="ui-typgraphy.html">Typography</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Listas</a>
                        <ul class="sub-menu children dropdown-menu">
                            <% if (session.getAttribute("Perfil").equals("paciente")){%>                                
                                <li><i class="fa fa-table"></i><a href="Especialidad.do?a=admin">Tabla de Especialidades</a></li>
                                <li><i class="fa fa-table"></i><a href="LugarAtencion.do?a=admin">Tabla de Lugares de Atencion</a></li>
                                <li><i class="fa fa-table"></i><a href="Medicamento.do?a=admin">Tabla de Medicamentos</a></li>
                            <%} else if (session.getAttribute("Perfil").equals("medico")){%>
                                <li><i class="fa fa-table"></i><a href="Cita.do?a=admin">Tabla de Citas</a></li>
                                <li><i class="fa fa-table"></i><a href="Especialidad.do?a=admin">Tabla de Especialidades</a></li>
                                <li><i class="fa fa-table"></i><a href="Formula.do?a=admin">Tabla de Formula</a></li>
                                <li><i class="fa fa-table"></i><a href="FormulaProducto.do?a=admin">Tabla de Formula Medicamento</a></li>
                                <li><i class="fa fa-table"></i><a href="LugarAtencion.do?a=admin">Tabla de Lugares de Atencion</a></li>
                                <li><i class="fa fa-table"></i><a href="Medicamento.do?a=admin">Tabla de Medicamentos</a></li>
                                <li><i class="fa fa-table"></i><a href="Persona.do?a=admin">Tabla de Personas</a></li>
                            <%} else if (session.getAttribute("Perfil").equals("administrador")){%>
                                <li><i class="fa fa-table"></i><a href="Cita.do?a=admin">Tabla de Citas</a></li>
                                <li><i class="fa fa-table"></i><a href="Especialidad.do?a=admin">Tabla de Especialidades</a></li>
                                <li><i class="fa fa-table"></i><a href="Formula.do?a=admin">Tabla de Formula</a></li>
                                <li><i class="fa fa-table"></i><a href="FormulaProducto.do?a=admin">Tabla de Formula Medicamento</a></li>
                                <li><i class="fa fa-table"></i><a href="LugarAtencion.do?a=admin">Tabla de Lugares de Atencion</a></li>
                                <li><i class="fa fa-table"></i><a href="Medicamento.do?a=admin">Tabla de Medicamentos</a></li>
                                <li><i class="fa fa-table"></i><a href="Persona.do?a=admin">Tabla de Personas</a></li>
                            <%}%>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Formularios</a>
                        <ul class="sub-menu children dropdown-menu">
                            <% if (session.getAttribute("Perfil").equals("paciente")){%> 
                                <li><i class="menu-icon fa fa-th"></i><a href="Cita.do?a=create">Registrar Citas</a></li>
                            <%} else if (session.getAttribute("Perfil").equals("medico")){%>
                                <li><i class="menu-icon fa fa-th"></i><a href="Cita.do?a=create">Registrar Citas</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="Formula.do?a=create">Registrar Formulas</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="FormulaProducto.do?a=create">Registrar Formula Medicamento</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="Persona.do?a=create">Registrar Personas</a></li>
                            <%} else if (session.getAttribute("Perfil").equals("administrador")){%>
                                <li><i class="menu-icon fa fa-th"></i><a href="Cita.do?a=create">Registrar Citas</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="Especialidad.do?a=create">Registrar Especialidades</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="Formula.do?a=create">Registrar Formulas</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="FormulaProducto.do?a=create">Registrar Formula Medicamento</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="LugarAtencion.do?a=create">Registrar Lugares de Atencion</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="Medicamento.do?a=create">Registrar de Medicamentos</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="Persona.do?a=create">Registrar Personas</a></li>
                            <%}%>
                        </ul>
                    </li>

                    <li class="menu-title">Icons</li><!-- /.menu-title -->

                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Icons</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-fort-awesome"></i><a href="font-fontawesome.html">Font Awesome</a></li>
                            <li><i class="menu-icon ti-themify-logo"></i><a href="font-themify.html">Themefy Icons</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="widgets.html"> <i class="menu-icon ti-email"></i>Widgets </a>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-bar-chart"></i>Charts</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-line-chart"></i><a href="charts-chartjs.html">Chart JS</a></li>
                            <li><i class="menu-icon fa fa-area-chart"></i><a href="charts-flot.html">Flot Chart</a></li>
                            <li><i class="menu-icon fa fa-pie-chart"></i><a href="charts-peity.html">Peity Chart</a></li>
                        </ul>
                    </li>

                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-area-chart"></i>Maps</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-map-o"></i><a href="maps-gmap.html">Google Maps</a></li>
                            <li><i class="menu-icon fa fa-street-view"></i><a href="maps-vector.html">Vector Maps</a></li>
                        </ul>
                    </li>
                    <li class="menu-title">Extras</li><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-glass"></i>Pages</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="page-login.html">Login</a></li>
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="page-register.html">Register</a></li>
                            <li><i class="menu-icon fa fa-paper-plane"></i><a href="pages-forget.html">Forget Pass</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">
        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa- user"></i><%= session.getAttribute("Usuario")%></a>
                            <a class="nav-link" href="#"><i class="fa fa- user"></i><%= session.getAttribute("UsuarioCorreo")%></a>
                            <a class="nav-link" href="Persona.do?a=update&id=<%= session.getAttribute("UsuarioId")%>"><i class="fa fa- user"></i>My Profile</a> 
                            <a class="nav-link" href="Persona.do?a=logout"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- /#header -->
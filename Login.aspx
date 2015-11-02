<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/half-slider.css" rel="stylesheet">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        
        <div class="container">
            <div class="row">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Home.aspx">The Software Factory</a>
            </div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
            <div class="row">
            <div class="col-md-11" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="Home.aspx">Inicio</a>
                    </li>
                    <li>
                        <a href="#">Quienes Somos</a>
                    </li>
                    <li>
                        <a href="#">Contacto</a>
                    </li>
                    <li>
                        <a href="AdmProyAdmin.aspx">Administrar Proyectos</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="Login.aspx">Entrar</a>
                    </li>
                </ul>
            </div>

            </div><!--Fin de Row-->
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <pre>





    </pre>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Por favor ingrese sus datos</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Correo Electronico" name="email" type="email" autofocus="">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Contraseña" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Recordarme
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="index.html" class="btn btn-lg btn-success btn-block">Entrar</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
         <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; The Software Factory 2015</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>
    </div>

   

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmProyAdmin.aspx.cs" Inherits="AdmProyAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/half-slider.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
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
    <!--Menu acordeon-->
    <div class="container">
    <div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3 col-md-3">
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close"></span>Proyectos</a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <table class="table">
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-file text-info"></span><a href="#">Proyecto 1</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-file text-info"></span><a href="#">Proyecto 2</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-file text-info"></span><a href="#">Proyecto 3</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-file text-info"></span><a href="#">Proyecto 4</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th"></span>Modules</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <table class="table">
                                            <tr>
                                                <td>
                                                    <a href="http://www.jquery2dotnet.com">Orders</a> <span class="label label-success">$ 320</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="http://www.jquery2dotnet.com">Invoices</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="http://www.jquery2dotnet.com">Shipments</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="http://www.jquery2dotnet.com">Tex</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user"></span>Account</a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <table class="table">
                                            <tr>
                                                <td>
                                                    <a href="http://www.jquery2dotnet.com">Change Password</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="http://www.jquery2dotnet.com">Notifications</a> <span class="label label-info">5</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="http://www.jquery2dotnet.com">Import/Export</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-trash text-danger"></span><a href="http://www.jquery2dotnet.com" class="text-danger">Delete Account</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file"></span>Reports</a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <table class="table">
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-usd"></span><a href="http://www.jquery2dotnet.com">Sales</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-user"></span><a href="http://www.jquery2dotnet.com">Customers</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-tasks"></span><a href="http://www.jquery2dotnet.com">Products</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-shopping-cart"></span><a href="http://www.jquery2dotnet.com">Shopping Cart</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9 col-md-9">
                        <div class="well">
                            <h1>Accordion Menu With Icon</h1>
                            Admin Dashboard Accordion Menu
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--fin del menu acordeon-->

        <div class="col-sm-9 col-md-9">
            <div class="well">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idProyecto" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="idProyecto" HeaderText="idProyecto" InsertVisible="False" ReadOnly="True" SortExpression="idProyecto" />
                        <asp:BoundField DataField="nombreProyecto" HeaderText="nombreProyecto" SortExpression="nombreProyecto" />
                        <asp:BoundField DataField="fechaInicio" HeaderText="fechaInicio" SortExpression="fechaInicio" />
                        <asp:BoundField DataField="fechaFin" HeaderText="fechaFin" SortExpression="fechaFin" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Proyecto]"></asp:SqlDataSource>
                
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
    </form>
</body>
</html>

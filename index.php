<?php
    session_start();
        $accion=$_REQUEST['accion']??'';
        if($accion=='cerrar'){
            session_destroy();
            header("Refresh:0");
        }
    ?>
<!DOCTYPE html>
<html lang="en">

<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Shiba Inu store</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="admin/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="admin/dist/css/adminlte.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="admin/plugins/daterangepicker/daterangepicker.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <link rel="stylesheet" href="admin/css/stripe.css">

    <!-- Styles previous -->
    	<!-- Normalize V8.0.1 -->
	<link rel="stylesheet" href="css/normalize.css">

    <!-- MDBootstrap V5 -->
    <link rel="stylesheet" href="css/mdb.min.css">

    <!-- Font Awesome V5.15.1 -->
    <link rel="stylesheet" href="css/all.css">

    <!-- Sweet Alert V10.13.0 -->
    <script src="js/sweetalert2.js" ></script>

    <!-- General Styles -->
    <link rel="stylesheet" href="css/style.css">


</head>
<body>

<?php
include_once "admin/db_shibainustore.php";
$con = mysqli_connect($host, $user, $pass, $db);
?>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <?php
                include_once "menu.php";
                $modulo=$_REQUEST['modulo']??'';
                if($modulo=="productos" || $modulo=="" ){
                    include_once "productos.php";
                }
                if( $modulo=="detalleproducto" ){
                    include_once "detalleProducto.php";
                }
                if( $modulo=="carrito" ){
                    include_once "carrito.php";
                }
                if( $modulo=="envio" ){
                    include_once "envio.php";
                }
                if( $modulo=="pasarela" ){
                    include_once "pasarela.php";
                }
                if( $modulo=="aboutus" ){
                    include_once "aboutus.php";
                }
                ?>
                <br><br>
                <footer class="footer">
                    <div class="container">
            	        <div class="row">
            	            <div class="col-12 col-md-4">
            	                <ul class="list-unstyled" >
            	                    <li><h5 class="font-weight-bold" ><i class="far fa-copyright"></i> Shiba Inu Store 2022</h5></li>
            	                    <li> Todos los derechos reservados </li>
            	                    <li><strong>Creado en Nov/2022 - Actualizado Nov/2022</strong></li>
            	                </ul>
            	            </div>
            	            <div class="col-12 col-md-4">
            	                <ul class="list-unstyled" >
            	                    <li><h5 class="font-weight-bold" >Cd juarez, chihuahua, Mexico</h5></li>
            	                    <li><i class="fas fa-map-marker-alt fa-fw"></i> Calle donde da vuelta el aire</li>
            	                    <li><i class="fa fa-envelope fa-fw"></i>Correo electronico: shibainustore@email.com</li>
            	                </ul>
            	            </div>
            	            <div class="col-12 col-md-4">
            	                <ul class="list-unstyled" >
            	                    <li><h5 class="font-weight-bold" >Siguenos en:</h5> </li>
            	                    <li>
            	                        <a href="https://es-la.facebook.com/MEOWcoffee/" class="footer-link" target="_blank" >
            	                            <i class="fab fa-facebook fa-fw"></i> Facebook
            	                        </a>
            	                    </li>
            	                </ul>
            	            </div>
            	        </div>
            	    </div>
                </footer>
            </div>
        </div>
    </div>

     
    
    <!-- jQuery -->
    <script src="admin/plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="admin/plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- daterangepicker -->
    <script src="admin/plugins/moment/moment.min.js"></script>
    <script src="admin/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- AdminLTE App -->
    <script src="admin/dist/js/adminlte.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="admin/dist/js/pages/dashboard.js"></script>
    <script src="https://js.stripe.com/v3/"></script>
    <script src="admin/js/stripe.js"></script>

    <script src="admin/js/ecommerce.js"></script>
</body>
</html>
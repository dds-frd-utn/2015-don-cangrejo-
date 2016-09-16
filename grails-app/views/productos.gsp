<%@ page import="donCangrejo.Producto" %>

<!DOCTYPE html>
<html>
<head>
  
  <!--Import materialize.css-->
  <!-- Compiled and minified CSS -->

  <meta charset='utf-8'>
  <link rel="shortcut icon" type="image/ico" href="@routes.Assets.versioned("C:\Users\Julian\Documents\GitHub\don-cangrejo-system-grails\grails-app\assets\images/favicon.ico")">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
  <link rel="stylesheet" href="./css/b.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!--Import jQuery before materialize.js-->

  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>      

  <!-- Compiled and minified JavaScript -->

  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
</head>
<style type="text/css">
.modal {
    background-color: #750404;
}
.modal .modal-footer {
    background-color: #A90A0A;
}

.btn-flat {
    color: #CEC4C4;
}

.modal.bottom-sheet {
    max-height: 73%;
}
</style>
<body>
  <!-- NAVBAR DE INICIO DE SESION Y DE REGISTRACION -->
  <div class="navbar-fixed">
    <nav>
      <div class="nav-wrapper">
         <a href="#!" class="brand-logo"> <img src="img/logo.jpg"> <!-- random image -->La pizzeria de Don Cangrejo</a>
        <ul class="right hide-on-med-and-down">
        <g:render template="components/login_menu_view"/>
        </ul>
      </div>
    </nav>
  </div>
  <!-- Dropdown Structure -->
  <ul id="dropdown1" class="dropdown-content">
    <!-- <li><link:fotos>Fotos</link:fotos></li> -->
    <li><link:direcciones>Direcciones</link:direcciones></li>
    <li class="divider"></li>
  </ul>
  <nav>
    <div class="nav-wrapper">
      <ul class="hide-on-med-and-down">
        <li><link:index>Home</link:index></li>
        <li><link:productos>Productos</link:productos></li>
        <!-- Dropdown Trigger -->
        <li><link:direcciones>Direcciones</link:direcciones></li>
        <ul class="right hide-on-med-and-down"><a></a></ul>
      </ul>
    </div>
  </nav>
  
    <!-- Modal de Login -->
<g:render template="/components/login_view"/>

    <div class="section #D90B17">
      <div class="row container">        
          <!-- Mostrar Ofertas de Productos -->
              <g:render template="components/listaOfertas_view"/>
      </div>
    </div> 
                     <!-- <input type="checkbox" id="test1" />
                      <label for="test1"></label>
-->

  <div align=center>
    <div>
      <i class="large material-icons" href="/don-cangrejo/producto/index"><a id="registerLink" class="modal-trigger"  href="/don-cangrejo/producto/index" style="color:#FFAB40">store</a></i>
       
     <!-- Activar Dropdown de Carrito de Compras -->
           
              <a id="carrito" class="modal-trigger" href="#carritoCompras"><i class="large material-icons" style="color:#FFAB40">shopping_cart</i></a>
              <a id="carrito" class="modal-trigger" href="#carritoConfirmado"><i class="large material-icons" style="color:#FFAB40">list</i></a>

    </div>

     <!--<i class="large material-icons" href="/don-cangrejo/venta/index"><a id="ventaLink" class="modal-trigger" color= "red" href="/don-cangrejo/venta/index">payment</a></i>-->
  </div>
  </div>
  <br>
  <!-- FOOTER DE LA EMPRESA -->
  <!-- Modal Carrito de Compras -->
<g:render template="/components/carritoCompras_view"/>
<g:render template="/components/carritoConfirmado_view"/>

<!-- I got these buttons from simplesharebuttons.com -->
<div id="share-buttons" align=center>
  <!-- Facebook -->
  <a href="https://www.facebook.com/pizzadedoncangrejo123/?fref=ts" target="_blank">
        <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />
  </a>
  <!-- Google+ -->
  <a href="https://plus.google.com/u/0/109798292158804007812/about" target="_blank">
        <img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />
  </a>
  <!-- Twitter -->
  <a href="https://twitter.com/DonCangri" target="_blank">
        <img src="https://simplesharebuttons.com/images/somacro/twitter.png" alt="Twitter" />
  </a>
</div><footer><a target="_blank"></a> 2016 Todos los derechos reservados </footer>
</body>

<script type="text/javascript">
      $(document).ready(function(){
            $('.slider').slider({full_width: true});
      });

      $(document).ready(function(){
      // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
      $('.modal-trigger').leanModal();
       });

          // Lanzamos ajax de envio de mail.
            $("#aceptar").click(function(){
                  Materialize.toast('Mensaje enviado satisfactoriamente!', 10000 , null)
            });


  // Cuando se hace click en algun boton de la clase btnAddProducto...
  $(".btnAddProducto").click(function(){
    
    // Capturamos el id del boton (Representa id de una producto).
    var productoId = parseInt( $(this).attr('id') );

    $.post("login/isSessionActive").done(function( resp ) {

            if( resp == 'false' ){
            $("#loginLink").click();
            }
            
      // Ejecutamos ajax para agregar carrito.
        $.ajax( "./agregar/"+productoId )
        .done(function(){
        Materialize.toast('Agregado al carrito Id:'+productoId, 3000);
      })
      .fail(function(){
        //Materialize.toast('Error al agregar producto', 4000 , 'errorMsg');
      });
    });
  });
</script>


</html>
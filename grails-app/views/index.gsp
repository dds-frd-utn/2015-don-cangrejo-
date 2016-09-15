<!DOCTYPE html>
<html>
<head>
  
  <!--Import materialize.css-->
  <!-- Compiled and minified CSS -->

  <meta charset='utf-8'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="./css/a.css">

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>      

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />  

</head>
<style type="text/css"></style>

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
<g:render template="components/login_view"/>

  <!-- SLIDER -->
  <div class="slider">
    <ul class="slides">
      <li>
        <img src="img/img1.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3 class="letraazul">PIZZAS</h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/img2.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3 class="letraazul">PIZZA EN CONOOOO</h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/img3.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3 class="letraazul">EMPANADAS</h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/img4.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3 class="letraazul">POSTRES</h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/img5.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3 class="letraazul">BEBIDAS!</h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
    </ul>
  </div>
     <div class="row" name=a>
      <div class="col s50 m100">
        <div class="card-panel">
          <span class="white-text">
          Somos Pizzeria Don Cangrejo, la casa de pizzas, empanadas y postres que atiende a su clientela saboreando exquisitas pizzas a la piedra, que son elaboradas artesanalmente bajo controles de calidad.<br>
          La masa es preparada en el dia y en el momento del pedido es elaborada y condimentada, con ingredientes frescos y cocinada en horno a lenia.<br>
          Y como siempre acompaniandote las pizzas con nuestra carta de exquisitos tragos.<br>
          Como no somos los unicos, decidimos ser los mejores!!<br>
          </span>
        </div>
      </div>
      </div>

  <!-- Modal Trigger -->
  <div align=center>
  </div>
  <!-- Modal Structure -->
  <div id="modal1" class="modal bottom-sheet" >
    <div class="modal-content">
        <div class="row">
      <form class="col s12">
        <div class="row">
          <div class="input-field col s11">
            <input id="input_text" type="text" length="20">
            <label for="input_text" type="text" length="20">>ASUNTO</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s11">
            <textarea id="textarea1" class="materialize-textarea" length="250"></textarea>
            <label for="textarea1">TEXT</label>
          </div>
        </div>
      </form>
    </div>
    </div>
    <div class="modal-footer">
      <a href="#!" class=" modal-action modal-close waves-effect waves-red btn-flat" id="aceptar">ACEPTAR</a>
      <a href="#!" class=" modal-action modal-close waves-effect waves-red btn-flat" id="2">CANCELAR</a>
    </div>
  </div>

<br><br>

  <!--%{-- Ver controladores. Esto se borra luego --}%
  <div id="controller-list" role="navigation">
    <h5>Available Controllers (borrar luego):</h5>
    <ul>
      <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
      </g:each>
    </ul>
  </div>-->

  <br><br>
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
</div>

<embed SRC="C:\Users\Julian\workspace\Don-Cangrejo\WebContent/music/track3.mp3" autostart="true" WIDTH="300" HEIGHT="0">

<!-- FOOTER DE LA EMPRESA -->
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
  </script> <footer><a target="_blank"></a>2016 Todos los derechos reservados </footer>
</html>
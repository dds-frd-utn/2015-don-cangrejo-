<!DOCTYPE html>
<html>
<head>
  
  <!--Import materialize.css-->
  <!-- Compiled and minified CSS -->

  <meta charset='utf-8'>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="./css/c.css">

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>      

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
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
</head>
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
<br>
  <div class="row">
    <div class="col s12 m4">
 <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/dire1.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">ZARATE<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">ZARATE<i class="material-icons right">close</i></span>
      <p>Romulo Noya 912.<br>A media cuadra de la Peatonal de Zarate. <br><br>Telefono:03487-423287.
        <br><br>Dorredo 1214.<br>Zona Villa-Fox. <br><br>Telfono: 03487-467286.
      </p>
    </div>
  </div>
  </div>
     <div class="col s12 m4">
 <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/dire2.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">CAMPANA<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">CAMPANA<i class="material-icons right">close</i></span>
      <p>Jean Jaure y San Martin<br><br>Zona: Centro</br><br>Telefono:03489-427367</p>
    </div>
  </div>
  </div>
       <div class="col s12 m4">
 <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/dire3.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">PILAR<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">PILAR<i class="material-icons right">close</i></span>
      <p>Bartolome Mitre 385.<br>En un barrio residencial, con la pizza mas barata que puedas comer(Aun mas que la fabrica de pizzas)!</br><br><br>Telefono:0230-423212</p>
    </div>
  </div>
  </div>

<br>
  <div class="row">
    <div class="col s12 m4">
 <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/dire4.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">ESCOBAR<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">ESCOBAR<i class="material-icons right">close</i></span>
      <p>Mitre 625.<br>Barrio: Villa Rosa</br><br>En el medio del centro, a una cuadra de la plaza, disfruten!</br><br>Telefono:0348-476587</p></p>
    </div>
  </div>
  </div>
     <div class="col s12 m4">
 <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/dire5.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">CARDALES<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">CARDALES<i class="material-icons right">close</i></span>
      <p>25 de Mayo 2814<br><p>A media cuadra de la plaza</br><br>Telefono:0230 449-2209</p>
    </div>
  </div>
  </div>                  
  </div>
  
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
  <!-- FOOTER DE LA EMPRESA -->
  </body>
          <footer><a target="_blank"></a>2016 Todos los derechos reservados </footer>
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
  </script>

</html>
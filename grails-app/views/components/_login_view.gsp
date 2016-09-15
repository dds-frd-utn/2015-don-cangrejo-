<!-- Modal Structure de Pantalla de Login -->
<div id="login" class="modal">
            <div class="modal-content">
                <h4>Iniciar Sesion</h4>
                        
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="username" type="text" class="validate">
                                <label for="username">Username</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password" type="password" class="validate">
                                <label for="password">Password</label>
                            </div>
                        </div>               
                        
            </div>
            <div class="modal-footer">
                    <a id="loginUser" href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Login</a>
                    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">
                    Cerrar
                    </a>
            </div>
</div>
<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">

    // Lanzamos ajax de login. Pasamos al controlador login los campos de los formularios.
	$( "#loginUser" ).click(function() {
        // Mandamos datos por post
        $.post("login",{
                username: $( "#username" ).val(),
                password: $( "#password" ).val()
            }).done(function( resp ) {
                if( resp == "Fail" ){
                    Materialize.toast('Nombre de usuario o password incorrectos', 4000 , 'errorMsg');          
                }
                else{
                    // Si la respuesta es Sucess, recargar la pagina.
                    window.location.reload();  
                }            
        });

    });

</script>
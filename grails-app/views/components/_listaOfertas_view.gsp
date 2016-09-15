<%@ page import="donCangrejo.Producto" %>
<style type="text/css">
	.price{
		text-align: center;
		margin-top: 25%;
		margin-left: 63%;
		background-color: #936262;
		width: 35%;
		height: 30px;
		position: absolute;
		border-radius: 15px;
		color: white;
	}
	.price p{
		margin-top: 4px;
	}
	.card.medium .card-content {
    background-color: #D90B17;
    height: 150px;
	}
	.card .card-reveal {
    background-color: #D90B17;
	}

}

</style>
<!-- <script type="text/javascript" src="./jquery/jquery.js"></script> -->
<% def productosList= Producto.getAll()%>
<g:each var="producto" in="${productosList}">		
        <div class="col s12 m4">
          <div class="card red darken-1 ">
            <div class="card-content white-text">
              <span class="card-title">${producto.nombre}</span>
              <p>${producto.ingredientes}</p>
              <p>${producto.descripcion}</p>
              <p>Valor: $${producto.precio}</p>
            </div>
           <!--<div class="price">
		   		<p>Valor: $${producto.precio}</p>
		  </div>-->
            <div class="card-action">
              <a href="#!" id="${producto.id}" class="btnAddProducto waves-effect waves-light btn"> Comprar</a>
            </div>
          </div>
        </div>
</g:each>
<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">
	// Cuando se hace click en algun boton de la clase btnAddProducto...
	$(".btnAddProducto").click(function(){
		
		// Capturamos el id del boton (Representa id de un producto).
		var productoId = parseInt( $(this).attr('id') );

		$.post("login/isSessionActive").done(function( resp ) {
			var time1 = 400
            if( resp == 'false' ){
            	time1 = 400
        		$("#loginLink").click();
            }
        	else{
      		// Ejecutamos ajax para agregar carrito.
   			$.ajax( "/don-cangrejo/productos/agregar/"+productoId )
   			.done(function(){
   				var time = 300;
				Materialize.toast('Agregado al carrito Id:'+productoId, time);
 				setTimeout(
   					function(){
     					window.location.reload();  
   				},time);
			})
   			
   			.fail(function(){
				//Materialize.toast('Error al agregar producto', 4000 , 'errorMsg');
			});
			//var time1 = 5000
			setTimeout("location.reload(true);", time1);

			//window.location.reload(); 
			}            
        });
	});
</script>
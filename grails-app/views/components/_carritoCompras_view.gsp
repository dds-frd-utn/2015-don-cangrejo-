<%@ page import="session.SessionManager" %>
<!-- Modal Structure de Carrito de Compras -->
<div id="carritoCompras" class="modal modal-fixed-footer">
	<div class="modal-content">
	  <h4>Carrito de Compras</h4>
	  
	    <div id="carrito-lst" class="collection" style="text-align: center; ">
	    	%{-- Logica Java --}%
	    	<%try {
	    			def smgr = new SessionManager(request.session)
	    			def c = smgr.getCurrentCart()
	    			def pedidosCarrito = c.pedidos
	    			def productosPedido = c.pedidos.producto
	    			def cantidadProducto = c.pedidos.cantidad
		    %>
		   	    <g:each var="pedido" in="${pedidosCarrito}">
			      	<a href="#!" id="${pedido.producto.id}" class="collection-item" style="background-color:#A90A0A">
			      		<table>
			      		<td id="${pedido.producto.id}">${pedido.producto.nombre}</td>
			      		<td id="preciosprod">${pedido.producto.precio}</td>
			      		<td id="cantidadprod">${pedido.cantidad}</td>
			      		<span id="${pedido.producto.id}" class="delete-elem badge" style="background-color:#A90A0A">Borrar</span>
			      		</table>
			      	</a>
		        </g:each>
		        <td>Total:
		        <%
		        	println(c.total())
		        %>
		        </td>
	        <%}catch(Exception e){
	    		println("No hay productos")			
	    	}%>
      	</div>
      	<a href="#!" id="checkOut" class="waves-effect waves-light btn modal-close">
      		Confirmar
      	</a>

	</div>
	<div class="modal-footer">
	  	<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">
	  		Cerrar
	  	</a>
	</div>
</div>

<script type="text/javascript" src="./jquery/jquery.js"></script> 
<script type="text/javascript">

$("#checkOut").click(function(){
	
	$.post("/don-cangrejo/carrito/confirmarPedido").done(function( res ){
		console.log(res);
		if(res=="true"){
			var time = 300;
			Materialize.toast('Su compra se ha realizado satisfactoriamente !', 7000 , null);
			setTimeout(
   					function(){
     					window.location.reload();  
   				},time);
		}
		else{
			Materialize.toast('No se ha podido confirmar su compra, por favor primero agregue un producto', 7000 , null);
		}
	});
});

$(".delete-elem").click(function(){
		
		var productoId = parseInt( $(this).attr('id') );

		$("#"+productoId).hide(300);
		var time = 1000;
		$.ajax( "/don-cangrejo/borrar/"+productoId ).done(function( resp ){	
		Materialize.toast('Producto eliminado', time);
		var time2 = 1500
		setTimeout("location.reload(true);", time2);
		});
			
	});
</script>
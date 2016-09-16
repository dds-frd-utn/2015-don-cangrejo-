<%@ page import="session.SessionManager" %>
<%@ page import="donCangrejo.Carrito" %>
<!-- Modal Structure de Carrito de Compras -->
<div id="carritoConfirmado" class="modal modal-fixed-footer">
	<div class="modal-content">
	  <h4>Carritos Confirmados</h4>
	  
	    <div id="carrito-lst" class="collection" style="text-align: center; ">
	    	%{-- Logica Java --}%
	    	<%try {
	    			def smgr = new SessionManager(request.session)
					def user = smgr.getCurrentUsr()
					def carr = new Carrito()
					def c = Carrito.findAllByUsuarioAndEstado(user,"c")
					def carritoTotal = carr.totalFinal(user)
	    			def pedidosCarrito = c.pedidos
	    			def productosPedido = c.pedidos.producto
	    			def cantidadProducto = c.pedidos.cantidad
		    %>
			<div class="row" style="background:#750000; margin-bottom:0px">
				<div class="col s4">Producto</div>
				<div class="col s4">Precio</div>
				<div class="col s4">Cantidad</div>
			</div>
			<g:each var="carrito" status="i" in="${c}">
				<a id="${carrito.id}" class="collection-item row" style="background-color:#750000; color:white">
					<div class="col s4" style="text-align:right">Carrito: ${i+1}</div>
					<div class="col s8" style="text-align:center">Fecha y Hora: ${carrito.fecha}</div>
		   			<g:each var="pedido" in="${carrito.pedidos}">
			 	    	<a id="${pedido.producto.id}" class="collection-item row" style="background-color:#A90A0A; color:white">
			  	    		<div class="col s4" id="${pedido.producto.id}">${pedido.producto.nombre}</div>
			  	    		<div class="col s4" id="preciosprod">${pedido.producto.precio}</div>
			  	    		<div class="col s4" id="cantidadprod">${pedido.cantidad}</div>
			 	    	</a>
			 		</g:each>
		        	<td> <div class="collection-item" style="background-color:#A90A0A">Total: <%println(carrito.total())%> </div></td>
		       	</a>
			</g:each>
			<div>Total Final: ${carritoTotal}</div>
	        <%}catch(Exception e){
	    		println("No hay productos")		
	    	}%>
      	   </div>
      </div>
      <div class="modal-footer">
	  	<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">
	  		Cerrar
	  	</a>
	</div>
</div>

<!-- <script type="text/javascript" src="./jquery/jquery.js"></script> -->
<script type="text/javascript">


</script>
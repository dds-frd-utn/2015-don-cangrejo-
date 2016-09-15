<%@ page import="session.SessionManager" %>
<%@ page import="donCangrejo.Carrito" %>
<!-- Modal Structure de Carrito de Compras -->
<div id="carritoConfirmado" class="modal modal-fixed-footer">
	<div class="modal-content">
	  <h4>Carrito Confirmado</h4>
	  
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
			<g:each var="carrito" status="i" in="${c}">
				<a href="#!" id="${carrito.id}" class="collection-item" style="background-color:#A90A0A">
				<div>Carrito: ${i+1}</div>
				<div>Fecha y Hora: ${carrito.fecha}</div>
		   		<g:each var="pedido" in="${carrito.pedidos}">
			 	     	<a href="#!" id="${pedido.producto.id}" class="collection-item" style="background-color:#A90A0A">
			  	    		<table>
			  	    		<td id="${pedido.producto.id}">${pedido.producto.nombre}</td>
			  	    		<td id="preciosprod">${pedido.producto.precio}</td>
			  	    		<td id="cantidadprod">${pedido.cantidad}</td>
				      		</table>
			 	     	</a>
			 	</g:each>
		        <td>Total:
		        <%
		        	println(carrito.total())
		        %>
		        </td>
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
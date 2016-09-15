package donCangrejo
import donCangrejo.Pedido
import donCangrejo.Usuario
import grails.transaction.Transactional

class Carrito {

	public Usuario usuario
	public String estado  = 'p'
    Date fecha
	static hasMany = [pedidos: Pedido]

	static mapping = {
        version false
		pedidos lazy: false
        usuario lazy: false
	}

	static constraints = {
                //usuario nullable: false
                estado maxSize: 17
	}

	def setUsuario(Usuario u){
		this.usuario = u
	}

	def setEstado(String e){
		this.estado = e
	}

    def setFecha(Date f){
        this.fecha = f
    }

	def seteoPedidos(){
		this.pedidos = []
	}

	Usuario getUsuario(){
		return this.usuario
	}

	String getEstado(){
		return this.estado
	}

    Date getFecha(){
        return this.fecha
    }


    def inicializarListaPedidos(){
        this.pedidos = []
    }
    
	
	def total(){
		double acu = 0.0
		double valorPedido = 0.0
		def c = 0
		for (Pedido item: pedidos){
			Pedido unPed = item
			valorPedido = unPed.producto.precio*unPed.cantidad
			acu = acu + valorPedido
		}
		return acu
	}

    def totalFinal(Usuario u){
        def carr = Carrito.findAllByUsuarioAndEstado(u,"c")
        double acu = 0.0
        double unValor = 0.0
        for (Carrito item: carr){
            unValor = item.total()
            acu = acu + unValor
        }
        return acu
    }

	@Transactional
    def addPedido(Pedido unPedido){

    	def nombreProdPed = unPedido.producto.nombre
        println("[ Carrito - addPedido ] - Imprimiendo datos del pedido")
        println(unPedido)
        println(unPedido.producto)
        println(unPedido.producto.nombre)
        println(unPedido.cantidad)
    	println("[Carrito - addPedido ] - Busco Pedidos iguales")
        println(nombreProdPed)
    	
        
    	def unPed = pedidos.find{
    		it.producto.nombre == nombreProdPed
    	}

    	println(unPed)
    	println("[Carrito] - Busque productos en la lista")

    	if (unPed){
    		unPed.incrCantidad()
    		println("[Carrito] - Se encontro un pedido igual")
    		println("[Carrito] - Incremento la cantidad del pedido")

            Pedido.executeUpdate(
                "update Pedido set cantidad = (:nuevaCant) where producto = (:productoId) and carrito = (:carritoId)",
                [nuevaCant:unPed.cantidad, productoId: unPed.producto, carritoId: unPed.carrito])
            
    	}
    	else{
            println(unPedido)
    
            println(this)
            
            try {
    		println("[Carrito] - No se encontro un Pedido Igual... "+this.pedidos+" -> "+unPedido)
            
            this.pedidos << unPedido
            unPedido.save(flush: true, failOnError: true)

            println("[Carrito] - Ya agregue pedido")

            } catch (Exception e) {
                println(e);
            }
            println("Cantidad de tipos de pedidos"+this.pedidos.size())
            println("[Carrito] - Agregue el nuevo pedido al carrito")

    	}
    	println("[Carrito] - Ya agregue pedido")

    	
    }
    
    
}
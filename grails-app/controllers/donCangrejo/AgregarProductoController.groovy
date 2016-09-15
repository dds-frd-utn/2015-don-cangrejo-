package donCangrejo
import donCangrejo.Carrito
import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
import donCangrejo.Pedido
import donCangrejo.Usuario
import grails.transaction.Transactional

class AgregarProductoController {

    @Transactional
    def productos(Integer idProducto) { 
    	
    	// Pasar parametro id de un producto
        
        Pedido pedido = new Pedido()
        def producto = Producto.findById(idProducto)

        pedido.setProducto(producto)
        pedido.inicializarCant()
        println("[AgregarProductoController] - el id seteado es"+idProducto)

        println(pedido.cantidad)
        println(pedido.producto.nombre)

        try {
            def smgr = new SessionManager(request.session)

            Carrito c = smgr.getCurrentCart()
            pedido.setCarrito(c)
            println("[AgregarProductoController] - Obtuve el carrito")
            println(c);
            println("[AgregarProductoController] - Agregando el pedido")
            println(pedido)
            println(pedido.cantidad)
            println(pedido.producto)
            println(pedido.carrito)
            println(pedido.producto.nombre)
            c.addPedido(pedido)
            println("[AgregarProductoController] - Agregue pedido")

            //c.save(flush: true , failOnError: true)
            
            //pedido.save(flush: true, failOnError: true)

            println("[AgregarProductoController] - Se guardo en la base")

            render("Success")
        }
        catch(Exception e){
            println("[AgregarProductoController] - Error, no se pudo agregar producto")
            println(e)
        }
        
    }

    def getCarritoProductos(){
        
        def smgr = new SessionManager(request.session)
        
        def c = smgr.getCurrentCart()

        println "Mostrar Carrito:"
        

        render(contentType: 'text/json'){
            c.pedidos
        }
         
    }

    @Transactional
    def eliminarElemento(Integer id){

    def smgr = new SessionManager(request.session) 
    def c = smgr.getCurrentCart()

    println("[eliminarElemento]"+id)
    println("Voy a buscar el pedido")
    Producto prod = Producto.findById( id )
    Pedido ped = Pedido.findByProducto(prod)
    /*
    Pedido unPed = pedidos.find{
        it.producto.id == id
    }
    */
    println("Encontre el pedido y a continuacion voy a eliminarlo de la lista")
    
    Pedido.executeUpdate("delete Pedido where cantidad = (:cant) and producto = (:productoId) and carrito = (:carritoId)",
                [cant:ped.cantidad, productoId: ped.producto, carritoId: ped.carrito])
    
    
    c.pedidos.removeAll{ pedidos-> 
        pedidos.producto.id == id
    }
    
    println("Ya lo elimine de la db")
    //println("Ahora voy a borrarlo de la db")

    //ped.delete(flush: true)
    
    print ("Elimine el Producto con id =")
    println (id)

    render "success"
    
}

    def guardarCarrito(){
        
        def smgr = new SessionManager(request.session) 
        def c = smgr.getCurrentCart()
        
        println("[AgregarProductoController] - carrito para guardar")
        println(c)

        //c.save(flush: true , failOnError: true)

        render "hola"
        
        
    }

    
}

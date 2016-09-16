package donCangrejo
import donCangrejo.Carrito
import donCangrejo.Pedido
import donCangrejo.Usuario
import session.SessionManager
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional
class CarritoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
    }

    def confirmarPedido(){
        def smgr = new SessionManager(request.session)
        Carrito c = smgr.getCurrentCart()
        Date f = new Date()
        String nuevoEst = "c"
        Double total = c.total()
        println("Entro al metodo CarritoController con el carrito"+c)
        println("Fecha: "+f)
        try {
            if (total > 0){
                Carrito.executeUpdate(
                        "update Carrito set estado = (:nuevoEstado), fecha = (:nuevaFecha) where usuario = (:usuarioId) and estado = (:viejoEstado)",
                        [nuevoEstado: nuevoEst, nuevaFecha: f, usuarioId: c.usuario, viejoEstado: "p"])
                println("Realice el update con Exito")
                //Generar el nuevo Carrito con estado "p"
                smgr.nuevoCarrito()
                Carrito carr = smgr.getCurrentCart()
                carr.setFecha(f)
                carr.save(flush: true)
                carr.inicializarListaPedidos()
                println("Finalizado el metodo de confirmarPedido() Exitoso")
                render ("true")
            }
            else{
                println("Finalizado el metodo de confirmarPedido() Fallido")
                render ("false")
            }
        }
        catch(Exception e) {
            println("EXCEPCION"+e)
        }   

    }

    def show(Carrito carritoInstance) {
        respond carritoInstance
    }

    def create() {
        respond new Carrito(params)
    }

    @Transactional
    def save(Carrito carritoInstance) {
        if (carritoInstance == null) {
            notFound()
            return
        }

        if (carritoInstance.hasErrors()) {
            respond carritoInstance.errors, view:'create'
            return
        }

        carritoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'carrito.label', default: 'Carrito'), carritoInstance.id])
                redirect carritoInstance
            }
            '*' { respond carritoInstance, [status: CREATED] }
        }
    }

    def edit(Carrito carritoInstance) {
        respond carritoInstance
    }

    @Transactional
    def update(Carrito carritoInstance) {
        if (carritoInstance == null) {
            notFound()
            return
        }

        if (carritoInstance.hasErrors()) {
            respond carritoInstance.errors, view:'edit'
            return
        }

        carritoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Carrito.label', default: 'Carrito'), carritoInstance.id])
                redirect carritoInstance
            }
            '*'{ respond carritoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Carrito carritoInstance) {

        if (carritoInstance == null) {
            notFound()
            return
        }

        carritoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Carrito.label', default: 'Carrito'), carritoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'carrito.label', default: 'Carrito'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    /*
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

    
    def addPedido(Pedido unPedido){

        //def c = 0

        def nombreProdPed = unPedido.producto.nombre

        println("Busco Pedidos iguales")
        
        //def unPed = Carrito.findByPedidos.producto.nombre(nombreProdPed)
        def unPed = pedidos.find{
            it.producto.nombre == nombreProdPed
        }

        println(unPed)
        println("Busque productos en la lista")

        if (unPed){
            unPed.incrCantidad()
            println("Se encontro un pedido igual")
            println("Incremento la cantidad del pedido")
            //unPedido.update(flush: true , failOnError: true)
        }
        else{
            Carrito.seteoPedidos()
            this.pedidos = [unPedido]
            println("No se encontro un Pedido Igual... "+this.pedidos+" -> "+unPedido)
            this.pedidos.push(unPedido)
            println("Se agrego pedido!"+this.pedidos)
            //unPedido.save(flush: true , failOnError: true)
        }
        println("Ya agregue pedido")

        
        for (Pedido item : pedidos){
            Pedido unPed = item
            if(unPed.producto.nombre == unPedido.producto.nombre){
                unPed.incrCantidad()
                c++
                println("Se encontro un pedido igual")
                println("Incremento la cantidad del pedido")
                //unPedido.update(flush: true , failOnError: true)
            }
        }
        
        if (c == 0){
            this.pedidos.push(unPedido)
            println("No encontro un Pedido igual")
            //unPedido.save(flush: true , failOnError: true)
        }
        
    }
    */
    
}

package donCangrejo
import donCangrejo.Carrito
import donCangrejo.Producto

class Pedido {

    Integer cantidad
    public Producto producto = null
    static belongsTo = [carrito: Carrito]

    static mapping = {
        version false
        carrito lazy: false
        cantidad lazy: false
        producto lazy: false
    }

    static constraints = {
        //cantidad defaultValue: "1"
    }

    
    def inicializarCant(){
        this.cantidad = 1
    }
    

    // Incrementa cantidad
    def incrCantidad(){
        this.cantidad++
    }

    // Decrementa cantidad
    def decrCantidad(){
        this.cantidad--
    }

    // Setea un unico producto
    def setProducto(Producto p){
        this.producto = p
    }

    
    def setCarrito(Carrito c){
        this.carrito = c
    }
    
    // Devuelve ese producto
    Producto getProducto(){
        return this.producto
    }
}

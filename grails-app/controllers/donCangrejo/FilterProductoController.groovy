package donCangrejo

import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession

class FilterProductoController{
    
    // Devuelve todos los productos, y los carga en la vista index.
    def index() {

        def productosList = Producto.findAll{}
        
        render(view:"/index", model:[productosList:productosList])
    }

    // Devuelve todos los productos filtrados por ingrediente.
    //def byCategoria(String p){
        
     //  def productosList = Producto.findAll{
       //     categoria == p
        //}

        //render(view:"/index", model:[productosList:productosList])
    //}

    def byCategoria(String c){

        def productosList = Producto.findAll{
            categoria == c
        }

        println (productosList)

        render(view:"/productos", model:[productosList:productosList])
    }

}


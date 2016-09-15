package donCangrejo
import donCangrejo.Usuario
import donCangrejo.Carrito
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
import session.SessionManager

class LoginController {
    
    def index() {

        // Capturo datos de post de formulario
        def username =  request.getParameter("username")
        def password = request.getParameter("password")
        
        // Traigo un usuario de la base de datos
        Usuario user = Usuario.findByUsernameAndPassword( username , password )

        // Si el usuario existe, guardarlo en la sesion. Retornar el string Success
        if(user){
            def smgr = new SessionManager(request.session)

            smgr.crearSesion(user)

            /*
            smgr.nuevoCarrito()
            Carrito c = smgr.getCurrentCart()
            c.save(flush: true)
            c.inicializarListaPedidos()
            */

            //Busco Carrito en la Base  
            //Carrito carr = Carrito.findByUsuario(user)
            //println("Carrito: "+carr)

            Carrito carr = Carrito.findByUsuarioAndEstado(user,"p")
            println("Carrito: "+carr)
            
            if (carr){
                println("Se encontro un Carrito Creado")
                smgr.setCurrentCart(carr)
            }
            else{
                println("No se encontró Carrito Existente")
                smgr.nuevoCarrito()
                Carrito c = smgr.getCurrentCart()
                Date f = new Date()
                c.setFecha(f)
                c.save(flush: true)
                c.inicializarListaPedidos()
            }
            
            render("Success")   
        }
        else{
            render("Fail")
        }

    }

    // Elimina la sesion actual.
    def logout() {
        def mySession = request.session
        def smgr = new SessionManager(mySession)
        smgr.eliminarSesion()
    }

    //Hay un usuario logeado?
    def isSessionActive(){
        def mySession = request.session
        def smgr = new SessionManager(mySession)

        // Retorna true o false como String
        render smgr.isActive()
    }

}

package session;

import javax.servlet.http.HttpSession;
import donCangrejo.Usuario;
import donCangrejo.Carrito;

//Session Manager se encarga de la administracion de la sesion del usuario en el sistema.
public class SessionManager {
	
//	Atributos.
		public HttpSession session;
		public String sesId;
		public String sesCart;
//	Fin Atributos.
	
//	Crea un manejador de sesion pasando como parametro la HTTP Sesion del Servlet.
	public SessionManager(HttpSession s){
		session = s;
		sesId = "USER_S1";
		sesCart = "CART_S1";
		this.setDefaultTimeOut();
	}

// 	Crear una sesion Usuario por default
	//public void defaultUser(){
	//	Usuario usr = new Usuario();
	//	usr.setUsername("prueba");
	//	usr.setNombre("prueba");
	//	this.session.setAttribute(sesId, usr);
	//}
//	Setea un nuevo Timeout de la sesion.
	public void setNewTimeOut(Integer i){
		session.setMaxInactiveInterval(i);
	}
	
//	Vuelve al timeout por defecto (900seg = 15 Min).
	public void setDefaultTimeOut(){	
		session.setMaxInactiveInterval(900);	
	}
	
//	Especifica que no va a haber timeOut en la sesion.
	public void setNoTimeOut(){	
		session.setMaxInactiveInterval(-1);	
	}
	
// 	Crea una sesion en el sistema.
//	Necesitamos pasar como parametro un objeto Usuario. (No hace falta que tenga todos sus atributos definidos)
	public void crearSesion(Usuario usr){	
		
//		Se crea la variable de sesion. Por default, su id sera USER_S1.
		this.session.setAttribute(sesId, usr);
		
	}
	
//	Devuelve el usuario asociado a la sesion creada. Si la sesion no tiene nada, retornara null.
	public Usuario getCurrentUsr(){
		return (Usuario) session.getAttribute(sesId);		
	}
	
//	Realiza lo mismo que el caso anterior, solo que lo devuelve como clase Object (Metodo privado).
	private Object getSessionAttribute(){
		return this.session.getAttribute(sesId);
	}
	
//	Elimina la sesion previamente creada.
	public void eliminarSesion(){
		
		if( getSessionAttribute() != null ){
 			this.session.setAttribute(sesId, null);
			this.eliminarCarrito();
		}
		
	}
	
//	Returna true si el sistema detecta una sesion activa.
	public boolean isActive(){
		
		if( getSessionAttribute() == null )
			return false;
		else
			return true;
		
	}
	
	// Crea un nuevo carrito en sesion.
	public void nuevoCarrito(){		
		Carrito cart = new Carrito();
		cart.setUsuario( this.getCurrentUsr() );
		// Si hay un carrito actual, lo elimina.
		this.eliminarCarrito();
		this.session.setAttribute(sesCart, cart);
	}

	// Elimina el carrito de sesion.
	public void eliminarCarrito(){
		this.session.setAttribute(sesCart, null);
	}
 	
	// Retorna el carrito actual.
	public Carrito getCurrentCart(){
		return (Carrito) this.session.getAttribute(sesCart);
	}

	// Dar el carrito actual.
	public void setCurrentCart(Carrito cart){
		this.eliminarCarrito();
		cart.setUsuario( this.getCurrentUsr() );
		this.session.setAttribute(sesCart, cart);
	}

}

package donCangrejo

class Producto {

	String nombre
	String categoria
	String descripcion 	= "Descripcion no cargada."
	String ingredientes	= "Informacion no cargada."
	Double precio
    
	static mapping = {
		version false
	}

	static constraints = {
		nombre nullable: true, maxSize: 45, unique: true
		categoria nullable: false, maxSize: 45
		descripcion nullable: true
		ingredientes nullable: true, maxSize: 300
	}
}
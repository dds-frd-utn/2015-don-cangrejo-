package donCangrejo

class Usuario {

	String username
	String email
	String nombre 
	String password
	String telefono
	String direccionNumeroPiso
	String ciudad

	static mapping = {
		//nombre column: "nombre", sqlType: "varchar", length: 46
		version false
	}

	static constraints = {
		username nullable: false, maxSize: 45, unique: true
		email nullable: false, maxSize: 45, unique: true, email: true
		nombre nullable: false, maxSize: 45
		password nullable: false, maxSize: 45
		telefono nullable: false, maxSize: 45
		direccionNumeroPiso nullable: false, maxSize: 50
		ciudad nullable: false, maxSize: 45
	}

	// Defino los seters y los geters solo porque la clase Session Manager los necesita.


	String getUsername(){
		return username
	}	
	String getEmail(){
		return email
	}	
	String getNombre(){
		return nombre
	}
	String getPassword(){
		return password
	}
	String getTelefono(){
		return telefono
	}
	String getDireccionNumeroPiso(){
		return direccionNumeroPiso
	}
	String getCiudad(){
		return ciudad
	}

	String setUsername(String s){
		this.username = s
	}
	String setEmail(String s){
		this.email = s
	}	
	String setNombre(String s){
		this.nombre = s
	}	
	String setPassword(String s){
		this.password = s
	}
	String setTelefono(String s){
		this.telefono = s
	}
	String setDireccionNumeroPiso(String s){
		this.direccionNumeroPiso = s
	}
	String setCiudad(String s){
		this.ciudad = s
	}

}

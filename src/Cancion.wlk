import Tema.*

class Cancion inherits Tema{
	
	var titulo
	
	constructor (unTitulo, unaDuracion, unaLetraDeCancion){
		titulo = unTitulo
		duracion = unaDuracion 
		letraDeCancion = unaLetraDeCancion 
	}
	
	method titulo(){
		return titulo
	}
	method longitudTitulo(){
		return titulo.size()
	}
}
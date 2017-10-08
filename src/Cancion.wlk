class Cancion {
	
	var duracion 
	var letraDeCancion
	var titulo
	
	constructor (unTitulo, unaDuracion, unaLetraDeCancion){
		titulo = unTitulo
		duracion = unaDuracion 
		letraDeCancion = unaLetraDeCancion 
	}
	method duracion(){
		return duracion
	}
	method esLarga(){
		return duracion > 300
	}
	method esCorta(){
		return duracion < 180
	}
	method longitudDeLetra(){
		return letraDeCancion.size()
	}
	method dice(unaPalabra){
		return letraDeCancion.contains(unaPalabra)
	}
	method letra(){
		return letraDeCancion
	}
	method titulo(){
		return titulo
	}
	method longitudTitulo(){
		return titulo.size()
	}
	method letraParaConcatenar(){
		return letraDeCancion + ' '
	}
}
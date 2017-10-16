class Tema{
	
	var duracion
	var letraDeCancion
	
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
	method letraParaConcatenar(){
		return letraDeCancion + ' '
	}
	method letraDeCancion(){
		return letraDeCancion
	}
}
class Tema{
	
	var duracion
	var letraDeCancion
	
	method duracion(){
		return duracion
	}
	method duraMasDe(unosSegundos){
		return duracion > unosSegundos
	}
	method esLarga(){
		return self.duraMasDe(300)
	}
	method esCorta(){
		return (!self.duraMasDe(180))
	}
	method esDeDuracionImpar(){
		return duracion.odd()
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
import Tema.*

class Remix inherits Tema {

	var cancionRemixeada
	
	constructor(unaCancion){
		cancionRemixeada = unaCancion
		duracion = unaCancion.duracion() * 3
		letraDeCancion = "Mueve tu cuelpo baby. " + unaCancion.letraDeCancion() + ". Yeah oh yeah"
	}
	
}
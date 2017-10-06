import Cancion.*

class Remix inherits Cancion {

	constructor(unaCancion) = super(unaCancion.titulo(),unaCancion.duracion(),unaCancion.letra()){
		duracion *= 3
		letraDeCancion = "Mueve tu cuelpo baby. " + letraDeCancion + ". Yeah oh yeah"
	}
	
}
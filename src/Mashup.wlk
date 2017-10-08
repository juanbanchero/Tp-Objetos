import Cancion.*
import criterios.*

class Mashup inherits Cancion{
	
	constructor(unasCanciones) = super("Mashup",null, null) {
		duracion = criterioPorDuracion.duracionMaxima(unasCanciones)
		letraDeCancion = self.unirLetras(unasCanciones)
	}
	
	method unirLetras(unasCanciones){
		var canciones = unasCanciones.map{cancion => cancion.letraParaConcatenar()}
		return canciones.fold("",{unaLetra, otraLetra => unaLetra + otraLetra}).trim()
	}
}
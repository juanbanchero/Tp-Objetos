import Cancion.*
import criterios.*

class Mashup inherits Cancion{
	
	constructor(unasCanciones) = super(null,null, null) {
		duracion = criterioPorDuracion.duracionMaxima(unasCanciones)
		titulo = unasCanciones.forEach({cancion => cancion.tituloParaConcatenar()})
	}
	
}
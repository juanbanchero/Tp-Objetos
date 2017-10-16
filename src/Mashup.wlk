import Tema.*
import criterios.*

class Mashup inherits Tema{
	
	var cancionesMashupeadas
	
	constructor(unasCanciones){
		cancionesMashupeadas = unasCanciones
		duracion = criterioPorDuracion.duracionMaxima(unasCanciones)
		letraDeCancion = self.unirLetras(unasCanciones)
	}
	
	method unirLetras(unasCanciones){
		var canciones = unasCanciones.map{cancion => cancion.letraParaConcatenar()}
		return canciones.fold("",{unaLetra, otraLetra => unaLetra + otraLetra}).trim()
	}
}
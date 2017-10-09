import musico.*
import Cancion.*

class MusicoSolista inherits Musico {

	var palabra
	
	constructor(unaHabilidad,albumesPublicados,unaPalabra) = super(unaHabilidad,albumesPublicados){
		palabra = unaPalabra
		estaEnGrupo = false
	}
	
	method restaHabilidad() {
		if(estaEnGrupo) {
			return 20
		}
		else {
			return 0
		}
	}
	method cantar() {
		return habilidad - self.restaHabilidad()
	}
	method meterseEnGrupo() {
		estaEnGrupo = true
	}
	override method interpretaBien(unaCancion) {
		return super(unaCancion) || unaCancion.dice(palabra)
	}
	method costo(unaPresentacion) {
		if(unaPresentacion.esUnLugarConcurrido()) {
			return 500
		}
		else {
			return 400
		}
	}
}
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
	method interpretaBien(unaCancion) {
		return (unaCancion.dice(palabra)) || self.esDeSuAutoria(unaCancion) || self.esHabilidoso()
	}
	method costo(unaPresentacion) {
		if(unaPresentacion.esUnLugarConcurrido()) {
			return 500
		}
		else {
			return 400
		}
	}
	
	method puedeTocar() {
		
		return self.tieneHabilidadNecesaria() && self.tieneAlgunaCancion() && self.interpretaBien(cancionDeAliciaEnElPais)
	}
}
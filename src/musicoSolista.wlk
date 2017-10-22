import musico.*
import Cancion.*

class MusicoSolista inherits Musico {
	
	constructor(unaHabilidad,albumesPublicados,unMetodoCanto,unMetodoCobranza,unParametroCanto) = super(unaHabilidad,albumesPublicados,unMetodoCanto,unMetodoCobranza,unParametroCanto){
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
	method costo(unaPresentacion) {
		if(unaPresentacion.esUnLugarConcurrido()) {
			return 500
		}
		else {
			return 400
		}
	}
}
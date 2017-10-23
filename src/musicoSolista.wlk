import musico.*
import Cancion.*

class MusicoSolista inherits Musico {
	
	constructor(unaHabilidad,albumesPublicados,unMetodoCanto,unParametroCanto) = super(unaHabilidad,albumesPublicados,unMetodoCanto,unParametroCanto){
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

	method costo(unaPresentacion) {
		if(unaPresentacion.esUnLugarConcurrido()) {
			return 500
		}
		else {
			return 400
		}
	}
}
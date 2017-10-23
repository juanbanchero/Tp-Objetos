import musico.*
import Cancion.*

class MusicoSolista inherits Musico {
	
	constructor(unaHabilidad,albumesPublicados,unMetodoCanto,metodoCobranza) = super(unaHabilidad,albumesPublicados,unMetodoCanto,metodoCobranza){
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
}
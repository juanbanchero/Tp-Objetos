import musico.*
import Cancion.*

class MusicoEnGrupo inherits Musico {
	
	var aumentoPorEstarEnGrupo
	
	constructor(unaHabilidad,albumesPublicados,unMetodoCanto,metodoCobranza,unAumentoPorEstarEnGrupo) = super(unaHabilidad,albumesPublicados,unMetodoCanto,metodoCobranza){
		aumentoPorEstarEnGrupo = unAumentoPorEstarEnGrupo
		estaEnGrupo = true
	}
	
	method sumaHabilidad() {
		if(estaEnGrupo) {
			return aumentoPorEstarEnGrupo
		}
		else {
			return 0
		}
	}
	method cantar() {
		return habilidad + self.sumaHabilidad()
	}
}
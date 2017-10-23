import musico.*
import Cancion.*

class MusicoEnGrupo inherits Musico {
	
	var aumentoPorEstarEnGrupo
	
	constructor(unaHabilidad,albumesPublicados,unMetodoCanto,unParametroCanto,unAumentoPorEstarEnGrupo) = super(unaHabilidad,albumesPublicados,unMetodoCanto,unParametroCanto){
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
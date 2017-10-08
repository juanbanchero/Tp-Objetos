import musico.*

class MusicoEnGrupo inherits Musico {
	
	var aumentoPorEstarEnGrupo
	
	constructor(unaHabilidad,albumesPublicados,unAumentoPorEstarEnGrupo) = super(unaHabilidad,albumesPublicados){
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
	method carreraSolista() {
		estaEnGrupo = false
	}
	
	method interpretaBien(unaCancion) {
		return (unaCancion.esLarga()) || self.esDeSuAutoria(unaCancion) || self.esHabilidoso()
	}
	method costo(unaPresentacion) {
		if(unaPresentacion.tocaSolo(self)) {
			return 100
		}
		else {
			return 50
		}
	}
}
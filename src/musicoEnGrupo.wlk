import musico.*
class MusicoEnGrupo inherits Musico {
	var estaEnGrupo = true
	var aumentoPorEstarEnGrupo
	constructor(unaHabilidad,albumesPublicados,unAumentoPorEstarEnGrupo) = super(unaHabilidad,albumesPublicados){
		aumentoPorEstarEnGrupo = unAumentoPorEstarEnGrupo
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
		return (unaCancion.duraMasDe300Segundos())
	}
	method costo(unaPresentacion) {
		if(unaPresentacion.tocaSolo(self)) {
			return 100
		}
		else {
			return 50
		}
	}
	method esMinimalista(){
		return albumes.all({album => album.todasMenosDe180Segundos()})


}
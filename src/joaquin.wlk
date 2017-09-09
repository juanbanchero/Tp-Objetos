object joaquin {
	var habilidad = 20
	var estaEnGrupo = true
	method habilidad() {
		return habilidad
	}
	method cantar() {
		if(estaEnGrupo) {
			habilidad += 5
		}
	}
	method carreraSolista() {
		estaEnGrupo = false
		habilidad = 20
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
}

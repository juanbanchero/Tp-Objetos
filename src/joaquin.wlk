object joaquin {
	var estaEnGrupo = true
	method cantar() {
		if(estaEnGrupo) {
			return 25
		}
		else {
			return 20
		}
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
}

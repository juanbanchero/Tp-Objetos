object joaquin {
	var habilidad = 20
	var estaEnGrupo = true
	method sumaHabilidad() {
		if(estaEnGrupo) {
			return 5
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
}

object lucia {
	var habilidad = 70
	var estaEnGrupo = true
	method habilidad() {
		return habilidad
	}
	method cantar() {
		if(estaEnGrupo) {
			habilidad -= 20
		}
	}
	method carreraSolista() {
		estaEnGrupo = false
		habilidad = 70
	}
	method interpretaBien(unaCancion) {
		return (unaCancion.diceFamilia())
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
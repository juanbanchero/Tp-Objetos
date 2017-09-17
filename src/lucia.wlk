object lucia {
	var estaEnGrupo = true
	method cantar() {
		if(estaEnGrupo) {
			return 50
		}
		else {
			return 70
		}
	}
	method carreraSolista() {
		estaEnGrupo = false
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
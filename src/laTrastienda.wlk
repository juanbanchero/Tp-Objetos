
object laTrastienda {

	method esConcurrido(){
		return false
	}
	method capacidad(unaFecha){
		if(unaFecha.dayOfWeek() == 6){
			return 700
		}
		else {
			return 400
		}
	}

}
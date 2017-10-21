import Lugar.*

object laTrastienda inherits Lugar(400) {
	
	override method capacidad(unaFecha){
		if(unaFecha.dayOfWeek() == 6){
			return 700
		}
		else {
			return capacidad
		}
	}

}

object laTrastienda {
	var capacidad
	
	method esConcurrido(){
		return capacidad > 5000
	}
	method capacidad(unaCapacidad){
		capacidad = unaCapacidad
	}

}
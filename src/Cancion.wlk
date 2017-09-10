
class Cancion {
	var duracion 
	var letraDeCancion
	
	constructor (unaDuracion, unaLetraDeCancion){
	duracion = unaDuracion 
	letraDeCancion = unaLetraDeCancion 
	}
	method duraMasDe300Segundos(){
		return duracion > 300
	}
	method diceFamilia(){
		return letraDeCancion.contains("familia") || letraDeCancion.contains("FAMILIA")
	}
}

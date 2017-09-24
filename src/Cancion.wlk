class Cancion {
	
	var duracion 
	var letraDeCancion
	
	constructor (unaDuracion, unaLetraDeCancion){
		duracion = unaDuracion 
		letraDeCancion = unaLetraDeCancion 
	}
	method duracion(){
		return duracion
	}
	method duraMasDe300Segundos(){
		return duracion > 300
	}
	method esCorta(){
		return duracion < 180
	}
	method dice(unaPalabra){
		return letraDeCancion.contains(unaPalabra)
	}
	method diceFamilia(){
		return (self.dice("familia") || self.dice("Familia"))
	}
}

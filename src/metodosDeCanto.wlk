import musico.*
import Cancion.*
import remix.*
import Mashup.*

class Palabrero{
	var palabra
	constructor(unaPalabra){
		palabra = unaPalabra
	}
	method interpretaBien(unCantante,unaCancion){
		return unaCancion.dice(palabra) 
	}

}

class Larguero{
	var largo
	constructor(unaDuracion){
		largo = unaDuracion
	}
	method interpretaBien(unaCancion){
		return unaCancion.duraMasDe(largo)
	}
	
}

object imparero{
	method interpretaBien(unaCancion){
		return unaCancion.esDeDuracionImpar()
	}
	
}

object metodoLuisAlberto{
	
	method interpretaBien(unCantante,unaCancion){
		return true
	}
	
}
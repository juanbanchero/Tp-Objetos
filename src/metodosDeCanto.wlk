import musico.*
import Cancion.*
import remix.*
import Mashup.*

class MetodoCanto{
	
	method interpretaBien(unCantante,unaCancion){
		return unCantante.esHabilidoso() || unCantante.esDeSuAutoria(unaCancion)
	}
	
}

object palabrero inherits MetodoCanto{
	
	var palabra
	method definirPalabra(unaPalabra){
		palabra = unaPalabra
	}
	override method interpretaBien(unCantante,unaCancion){
		return super(unCantante,unaCancion) || unaCancion.dice(palabra) 
	}
	
}

object larguero inherits MetodoCanto{
	
	var duracionMinima
	method establecerDuracion(unaDuracion){
		duracionMinima = unaDuracion
	}
	override method interpretaBien(unCantante,unaCancion){
		return super(unCantante,unaCancion) || unaCancion.duraMasDe(duracionMinima)
	}
	
}

object imparero inherits MetodoCanto{
	
	override method interpretaBien(unCantante,unaCancion){
		return super(unCantante,unaCancion) || unaCancion.esDeDuracionImpar()
	}
	
}

object metodoLuisAlberto inherits MetodoCanto{
	
	override method interpretaBien(unCantante,unaCancion){
		return true
	}
	
}
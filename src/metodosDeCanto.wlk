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
	
	override method interpretaBien(unCantante,unaCancion){
		return super(unCantante,unaCancion) || unaCancion.dice(unCantante.parametroCanto()) 
	}

}

object larguero inherits MetodoCanto{
	
	var duracionMinima
	method parametrizar(unaDuracion){
		duracionMinima = unaDuracion
	}
	override method interpretaBien(unCantante,unaCancion){
		return super(unCantante,unaCancion) || unaCancion.duraMasDe(unCantante.parametroCanto())
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
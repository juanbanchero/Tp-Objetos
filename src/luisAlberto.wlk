import fender.*
import gibson.*
import musico.*
import Cancion.*
import metodosDeCanto.*

object luisAlberto inherits Musico(8,#{},metodoLuisAlberto,null,){
	
	var guitarraEnUso = fender
	
	method usarGuitarra(unaGuitarra) {
		guitarraEnUso = unaGuitarra
	}
	method agregarAlbum(unAlbum) {
		albumes.add(unAlbum)
	}
	method habilidad() {
		return 100.min(habilidad * guitarraEnUso.precio())
	}
	override method interpretaBien(unaCancion){
		return true 
	}
	method costo(unaPresentacion) {
		if (unaPresentacion.esAntesDeSeptiembre2017()) {
			return 1000
		}
		else {
			return 1200
		}  
	}
}
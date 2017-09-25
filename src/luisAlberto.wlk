import fender.*
import gibson.*
import musico.*

object luisAlberto inherits Musico(0,#{}){
	
	var guitarraEnUso
	
	method usarGuitarra(unaGuitarra) {
		guitarraEnUso = unaGuitarra
	}
	method agregarAlbum(unAlbum) {
		albumes.add(unAlbum)
	}
	method habilidad() {
		return 100.min(8 * guitarraEnUso.precio())
	}
	method interpretaBien(unaCancion) {
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
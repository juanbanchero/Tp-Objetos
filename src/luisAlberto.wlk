import fender.*
import gibson.*
import musico.*

object luisAlberto inherits Musico(8,#{}){
	
	var guitarraEnUso
	
	method usarGuitarra(unaGuitarra) {
		guitarraEnUso = unaGuitarra
	}
	method agregarAlbum(unAlbum) {
		albumes.add(unAlbum)
	}
	method habilidad() {
		return 100.min(habilidad * guitarraEnUso.precio())
	}
	method interpretaBien(unaCancion) {
		return true || self.esDeSuAutoria(unaCancion) || self.esHabilidoso()
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
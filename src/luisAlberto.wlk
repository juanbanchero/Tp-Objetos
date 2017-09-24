import fender.*
import gibson.*
import musico.*

object luisAlberto inherits Musico(habilidad,albumes){
	var guitarraEnUso
	
	method usarGuitarra(unaGuitarra) {
		guitarraEnUso = unaGuitarra
	}
	method habilidad() {
		return 100.min(habilidad * guitarraEnUso.precio())
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
	method guitarraEnUso(){
		return guitarraEnUso
	}
}
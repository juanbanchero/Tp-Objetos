import fender.*
import gibson.*

object luisAlberto {
	var guitarraEnUso
	method usarGuitarra(unaGuitarra) {
		guitarraEnUso = unaGuitarra
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
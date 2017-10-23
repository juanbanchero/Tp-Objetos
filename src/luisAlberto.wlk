import fender.*
import gibson.*
import musico.*
import Cancion.*
import metodosDeCanto.*

object luisAlberto inherits Musico(8,#{},null,null){
	
	var guitarraEnUso = fender
	
	method usarGuitarra(unaGuitarra) {
		guitarraEnUso = unaGuitarra
	}
	method agregarAlbum(unAlbum) {
		albumes.add(unAlbum)
	}
	method cantar(){
		return self.habilidad()
	}
	override method habilidad() {
		return 100.min(habilidad * guitarraEnUso.precio())
	}
	override method interpretaBien(unaCancion){
		return true 
	}
}
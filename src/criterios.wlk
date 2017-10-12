
class Criterio{
	method maximo(unasCanciones){
		return unasCanciones.max({cancion => self.aplicarCriterio(cancion)})
	}
	
	method aplicarCriterio(unaCancion)
}

object criterioPorDuracion inherits Criterio{
	override method aplicarCriterio(cancion){
		return cancion.duracion()
	}
	method duracionMaxima(unasCanciones){
		return self.maximo(unasCanciones).duracion()
	}
}

object criterioPorLetra inherits Criterio{
	override method aplicarCriterio(cancion){
		return cancion.longitudDeLetra()
	}
}

object criterioPorTitulo inherits Criterio{
	override method aplicarCriterio(cancion){
		return cancion.longitudTitulo()
	}
}
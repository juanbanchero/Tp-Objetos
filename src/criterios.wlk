import Cancion.*

object criterioPorDuracion{
	method maximo(unasCanciones){
		return unasCanciones.max({cancion => cancion.duracion()})
	}
	method duracionMaxima(unasCanciones){
		return unasCanciones.map({cancion => cancion.duracion()}).max()
	}
}

object criterioPorLetra{
	method maximo(unasCanciones){
		return unasCanciones.max({cancion => cancion.longitudDeLetra()})
	}
}

object criterioPorTitulo{
	method maximo(unasCanciones){
		return unasCanciones.max({cancion => cancion.longitudTitulo()})
	}
}
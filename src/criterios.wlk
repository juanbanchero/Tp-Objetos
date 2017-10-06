import Cancion.*

object criterioPorDuracion{
	method ordenar(unasCanciones){
		return unasCanciones.max({cancion => cancion.duracion()})
	}
}

object criterioPorLetra{
	method ordenar(unasCanciones){
		return unasCanciones.max({cancion => cancion.longitudDeLetra()})
	}
}

object criterioPorTitulo{
	method ordenar(unasCanciones){
		return unasCanciones.max({cancion => cancion.longitudTitulo()})
	}
}
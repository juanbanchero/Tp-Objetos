class Musico {
	
	var habilidad
	var albumes = #{}
	var estaEnGrupo
		
	constructor (unaHabilidad,albumesPublicados){
		habilidad = unaHabilidad
		albumes = albumesPublicados
	}
	
	method esMinimalista(){
		return albumes.all({album => album.todasSusCancionesSonCortas()})
	}
	method queCancionesContienen(unaPalabra){
		return albumes.flatMap({album => album.cancionesQueDicen(unaPalabra)})
	}
	method duracionDeSuObra(){
		return albumes.sum({album => album.duracionDelAlbum()})
	}
	method laPego(){
		return albumes.all{album => album.tieneBuenasVentas()}
	}
	method esHabilidoso(){
		return habilidad > 60
	}
	method esDeSuAutoria(unaCancion){
		return albumes.any({album => album.canciones().contains(unaCancion)})
	}
}
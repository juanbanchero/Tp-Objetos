
import Cancion.*

class Musico {
	
	var habilidad
	var albumes = #{}
	var estaEnGrupo
	const cancionDeAliciaEnElPais = new Cancion ("Cancion de Alicia en el Pais",510,"Quien sabe Alicia, este pais no estuvo hecho porque si. Te vas a ir, vas a salir pero te quedas, ¿donde más vas a ir? Y es que aqui, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabo ese juego que te hacia feliz.")
		
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
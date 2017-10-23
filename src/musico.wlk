import Cancion.*
import cobranzaPorCapacidad.*
import cobranzaPorExpectativaInflacionaria.*
import cobranzaPorEspectadores.*
class Musico {
	
	var habilidad
	var albumes = #{}
	var estaEnGrupo
	var metodoCanto
	var metodoCobranza
	var parametroCanto
	var listadoCanciones = []
	
	const cancionDeAliciaEnElPais = new Cancion ("Cancion de Alicia en el Pais",510,"Quien sabe Alicia, este pais no estuvo hecho porque si. Te vas a ir, vas a salir pero te quedas, �donde m�s vas a ir? Y es que aqui, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabo ese juego que te hacia feliz.")
		
	constructor (unaHabilidad,albumesPublicados,unMetodoCanto,unParametroCanto){
		habilidad = unaHabilidad
		albumes = albumesPublicados
		metodoCanto = unMetodoCanto
		parametroCanto = unParametroCanto
	}
	
		
	method cobrarPorCapacidad(precio, cantidadDePersonas){
		metodoCobranza = new CobranzaPorCapacidad (precio,cantidadDePersonas)
	}
	method cobrarPorExclusividad(precio){
		metodoCobranza = new CobranzaPorExclusividad(precio)
	}
	method cobrarPorExpectativaInflacionaria(precio,dia,mes,agno,porcentaje){
		metodoCobranza = new CobranzaPorExpectativaInflacionaria(precio,dia,mes,agno,porcentaje)
	}		
	method habilidad() {
		return habilidad
	}
		
	method meterseEnGrupo() {
		estaEnGrupo = true
	}
	method carreraSolista() {
		estaEnGrupo = false
	}
	method cambiarMetodoCanto(unMetodo){
		metodoCanto = unMetodo
	}
	method parametroCanto(){
		return parametroCanto
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
	method tieneHabilidadNecesaria() {
		return habilidad >= 70	
	}
	method tieneAlgunaCancion(){		
		return albumes != #{}
	}
	method interpretaBien(unaCancion){
		return metodoCanto.interpretaBien(self,unaCancion)
	}
	method puedeTocar() {
		return self.tieneHabilidadNecesaria() && self.tieneAlgunaCancion() && self.interpretaBien(cancionDeAliciaEnElPais)
	}
	method cualesPuedeTocar() {
		return listadoCanciones.filter({cancion => self.interpretaBien(cancion)})
	}
	method costo(unaPresentacion){
		return metodoCobranza.cobrar(self,unaPresentacion)
	}


}
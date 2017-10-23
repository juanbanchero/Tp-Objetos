import Cancion.*

class Musico {
	
	var habilidad
	var albumes = #{}
	var estaEnGrupo
	var metodoCanto
	var metodoCobranza
	var parametroCanto
	var listadoCanciones = []
	var plataACobrar
	var personasParaLasQuePuedeTocar
	var fechaDeCobro
	var porcentajeDeCobroAdicional
	
	const cancionDeAliciaEnElPais = new Cancion ("Cancion de Alicia en el Pais",510,"Quien sabe Alicia, este pais no estuvo hecho porque si. Te vas a ir, vas a salir pero te quedas, �donde m�s vas a ir? Y es que aqui, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabo ese juego que te hacia feliz.")
		
	constructor (unaHabilidad,albumesPublicados,unMetodoCanto,unParametroCanto,unMetodoCobranza,unaPlataACobrar,unasPersonasParaLasQuePuedeTocar,dia,mes,agno,unPorcentaje){
		habilidad = unaHabilidad
		albumes = albumesPublicados
		metodoCanto = unMetodoCanto
		parametroCanto = unParametroCanto
		metodoCobranza = unMetodoCobranza
		plataACobrar = unaPlataACobrar
		personasParaLasQuePuedeTocar = unasPersonasParaLasQuePuedeTocar
		fechaDeCobro = new Date(dia,mes,agno)
		porcentajeDeCobroAdicional = unPorcentaje
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
	method cambiarMetodoCobranza(unMetodo){
		metodoCobranza = unMetodo
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
		return metodoCobranza.cobrar(self,unaPresentacion,plataACobrar,personasParaLasQuePuedeTocar,fechaDeCobro,porcentajeDeCobroAdicional)
	}

}
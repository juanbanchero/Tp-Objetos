import Cancion.*
import criterios.*

class Album {
	
	var canciones = #{}
	var fecha
	var cantidadLanzados
	var cantidadVendidos
	
	constructor(listaCanciones,dia,mes,agno,unaCantidadLanzada,unaCantidadVendida){
		canciones = listaCanciones
		fecha = new Date(dia,mes,agno)
		cantidadLanzados = unaCantidadLanzada
		cantidadVendidos = unaCantidadVendida
	}
	
	method canciones(){
		return canciones
	}
	method todasSusCancionesSonCortas(){
		return canciones.all({cancion => cancion.esCorta()})
	}
	method cancionesQueDicen(unaPalabra){
		return canciones.filter({cancion => cancion.dice(unaPalabra)})
	}
	method duracionDelAlbum(){
		return canciones.sum({cancion => cancion.duracion()})
	}
	method tieneBuenasVentas(){
		return 0.75 < cantidadVendidos/cantidadLanzados
	}
	method mayorCancion(criterio){
		return criterio.maximo(self.canciones())
	}
	method poseeLaCancion(unaCancion){
		return canciones.contains(unaCancion)
	}
}
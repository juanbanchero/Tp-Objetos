import Cancion.*
class Album {
	var canciones = #{}
	var fecha
	constructor(duracion,letra,dia,mes,agno){
		canciones = new Cancion(duracion,letra)
		fecha = new Date(dia,mes,agno)
	}
	method todasMenosDe180Segundos(){
		return canciones.all({cancion => cancion.duracion() < 180})
	}


}
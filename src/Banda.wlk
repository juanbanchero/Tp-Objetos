
class Banda {
	var representante
	var musicos = #{}
	
	constructor(unRepresentante, unosMusicos){
		representante= unRepresentante
		musicos = unosMusicos
		self.integrantesTocanEnGrupo()
		}
	
	method integrantesTocanEnGrupo(){
		musicos.map{musico => musico.meterseEnGrupo()}
	}
	method habilidad(){
		return musicos.sum{musico => musico.cantar()}*1.1
	}
	method puedeTocar(unaCancion){
		return musicos.all{musico => musico.interpretaBien(unaCancion)}
	}
}

class Representante {
	var precio
	
	constructor(unPrecio){
		precio = unPrecio
	}
}
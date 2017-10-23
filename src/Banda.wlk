
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
	method costo(unaPresentacion){
		return musicos.sum{musico => musico.costo(unaPresentacion)} + representante.precio()
	}
}

class Representante {
	var precio
	
	constructor(unPrecio){
		precio = unPrecio
	}
	method precio(){
		return precio
	}
}
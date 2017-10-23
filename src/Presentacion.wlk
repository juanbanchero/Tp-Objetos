import luisAlberto.*
import lunaPark.*
import laTrastienda.*

class Presentacion { 
	var estadio
	var fecha
	var cantantes
	 
	constructor (unDia,unMes,unAgno,unEstadio,listaDeCantantes){
		estadio = unEstadio
		fecha = new Date(unDia,unMes,unAgno)
		cantantes = listaDeCantantes
	}
	method fecha(){
		return fecha
	}
	method hayUnSoloCantante(){
		return cantantes.size() == 1
	}
	method sePresentaSolo(unCantante) {
		cantantes.removeAll(cantantes)
		cantantes.add(unCantante)
	}
	method tocaSolo(unCantante){
		return cantantes.contains(unCantante) && self.hayUnSoloCantante()
	}	
	method esUnLugarConcurrido(){
		return estadio.esConcurrido()
	}
	method esAntesDeSeptiembre2017(){
	return fecha.month() < 09 && fecha.year() <= 2017
	}
	method capacidadEstadio(){
		estadio.capacidad(fecha)
	}
	method recaudacion() {
		return cantantes.sum({cantante => cantante.costo(self)})
	}
	
	method nivelDeMagia() {
		return cantantes.sum({participante => participante.habilidad()})
	}
}
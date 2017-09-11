import lucia.*
import luisAlberto.*
import joaquin.*
import lunaPark.*
import laTrastienda.*

class Presentacion { 
	var estadio
	var fecha
	var cantantes = #{lucia,luisAlberto,joaquin}

	 
	constructor (unDia,unMes,unAgno,unEstadio){
		estadio = unEstadio
		fecha = new Date(unDia,unMes,unAgno)
	}
	method hayUnSoloCantante(){
		return cantantes.size() == 1
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
	
	
}
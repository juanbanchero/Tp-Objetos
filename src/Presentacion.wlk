import lucia.*
import luisAlberto.*
import joaquin.*
import lunaPark.*
import laTrastienda.*

class Presentacion {
	var dia
	var mes 
	var agno 
	var estadio
	var cantantes = #{lucia,luisAlberto,joaquin}
	
	constructor (unDia,unMes,unAgno,unEstadio){
		dia = unDia
		mes = unMes
		estadio = unEstadio
		agno = unAgno
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
		return mes < 9 && agno <= 2017
	}
	
}
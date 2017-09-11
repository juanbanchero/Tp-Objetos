import Presentacion.*
import joaquin.*
import laTrastienda.*
object presentacionModificada {

var cantantes = #{joaquin}
var recital = new Presentacion(15,11,2017,laTrastienda)

	method hayUnSoloCantante(){
		return cantantes.size() == 1
	}
	method tocaSolo(unCantante){
		return cantantes.contains(unCantante) && self.hayUnSoloCantante()
	}	
	
	method esUnLugarConcurrido(){
		return recital.esConcurrido()
	}
	method esAntesDeSeptiembre2017(){
	return recital.month() < 09 && recital.year() <= 2017
	}

}
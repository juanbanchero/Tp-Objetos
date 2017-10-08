import Presentacion.*
import lunaPark.*
import musico.*
import musicoEnGrupo.*
import musicoSolista.*
import Cancion.*
import album.*
import NoPuedeTocar.*

object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}) {
	
	method agregarMusico(unMusico) {			
		
		if(unMusico.puedeTocar()) {
			
			cantantes.add(unMusico)
			
		}
		
		else if (!unMusico.tieneHabilidadNecesaria()) {
			throw new NoPuedeTocar ("El musico no tiene la habilidad necesaria para presentarse")
		}
		
		else if (!unMusico.tieneAlgunaCancion()) {
			throw new NoPuedeTocar ("El musico no tiene ninguna cancion de su autoria")
		} 
		
		else throw new NoPuedeTocar ("El musico no interpreta bien Cancion de Alicia en el Pais")
	}
	
}
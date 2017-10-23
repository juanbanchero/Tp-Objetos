import cobranzaPorCapacidad.*
class CobranzaPorExpectativaInflacionaria inherits MetodoCobranza{
	var fecha
	var porcentajeAdicional

	constructor (unPrecio,dia,mes,agno,unPorcentaje) = super(unPrecio){
		fecha = new Date(dia,mes,agno)
		porcentajeAdicional = unPorcentaje
	}
	override method cobrar(unCantante,unaPresentacion){
	if(unaPresentacion.fecha() <= fecha){
		return precio
	}	
	else {
		return precio + precio*porcentajeAdicional
	}
}

}
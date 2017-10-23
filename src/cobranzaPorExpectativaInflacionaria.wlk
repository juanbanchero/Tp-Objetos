
class CobranzaPorExpectativaInflacionaria{
	var fecha
	var porcentajeAdicional
	var precio
	constructor (unPrecio,dia,mes,agno,unPorcentaje){
		fecha = new Date(dia,mes,agno)
		porcentajeAdicional = unPorcentaje
		precio = unPrecio
	}
method cobrar(unCantante,unaPresentacion){
	if(unaPresentacion.fecha() <= fecha){
		return precio
	}	
	else {
		return precio + precio*porcentajeAdicional
	}
}

}
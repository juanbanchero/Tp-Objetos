class MetodoCobranza{
	var precio
	constructor(unPrecio){
		precio = unPrecio
	}
	method cobrar(unCantante, unaPresentacion)
}

class CobranzaPorCapacidad inherits MetodoCobranza{
	var cantidadDePersonas
	
	constructor(unPrecio, unaCantidad) = super(unPrecio){
		cantidadDePersonas = unaCantidad
	}
 override method cobrar(unCantante,unaPresentacion){
	if(unaPresentacion.capacidadEstadio() > cantidadDePersonas)
	{
		return precio
	}
	else {
		return precio - 100
	}
}
}

class CobranzaPorCapacidad {
	var cantidadDePersonas
	var precio
	constructor(unPrecio, unaCantidad){
		precio = unPrecio
		cantidadDePersonas = unaCantidad
	}
 method cobrar(unCantante,unaPresentacion){
	if(unaPresentacion.capacidadEstadio() > cantidadDePersonas)
	{
		return precio
	}
	else {
		return precio - 100
	}
	}
}

class CobranzaPorExclusividad{
var precio
constructor(unPrecio){
	precio = unPrecio
}

method cobrar(unCantante,unaPresentacion){
	if(unaPresentacion.tocaSolo(unCantante)){
		return precio
	}
	else {
		return precio/2
	}
}
}
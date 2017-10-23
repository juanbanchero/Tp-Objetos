import cobranzaPorCapacidad.*
class CobranzaPorExclusividad inherits MetodoCobranza{

constructor(unPrecio) = super(unPrecio)

override method cobrar(unCantante,unaPresentacion){
	if(unaPresentacion.tocaSolo(unCantante)){
		return precio
	}
	else {
		return precio/2
	}
}
}
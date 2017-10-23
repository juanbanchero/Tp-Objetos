
object cobranzaPorEspectadores {

method cobrar(unCantante,unaPresentacion,plataACobrar,personas,fecha,porcentajeAdicional){
	if(unaPresentacion.tocaSolo(unCantante)){
		return plataACobrar
	}
	else {
		return plataACobrar/2
	}
}
}
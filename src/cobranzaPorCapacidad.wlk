
object cobranzaPorCapacidad {
	
method cobrar(unCantante,unaPresentacion,plataACobrar,personas,fecha,porcentajeAdicional){
	if(unaPresentacion.capacidadEstadio() > personas)
	{
		return plataACobrar
	}
	else {
		return plataACobrar - 100
	}
}
}


object cobranzaPorExpectativaInflacionaria {
var hoy = new Date()
method cobrar(unCantante,unaPresentacion,plataACobrar,personas,fecha,porcentajeAdicional){
	if(hoy < fecha){
		return plataACobrar
	}	
	else {
		return plataACobrar + plataACobrar*porcentajeAdicional
	}
}

}
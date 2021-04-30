test
testDevolverCantidadDeRespuestasDeUnUsuario
	pregunta agregarRespuesta: respuesta. 
	pregunta agregarRespuesta: respuesta2.
	
	self assert: [ (pregunta devolverCantidadDeRespuestasDeUnUsuario: usuario1)= 2 ]
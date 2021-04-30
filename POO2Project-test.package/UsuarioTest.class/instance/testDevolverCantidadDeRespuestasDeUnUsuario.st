test
testDevolverCantidadDeRespuestasDeUnUsuario
	usuario agregarPregunta: pregunta.
	pregunta agregarRespuesta: respuesta.
	pregunta agregarRespuesta: respuesta.

	self assert: [ (usuario devolverCantidadDeRespuestasDeUnUsuario: usuario)=2 ]  
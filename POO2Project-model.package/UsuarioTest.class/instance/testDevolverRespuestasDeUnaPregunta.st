tests
testDevolverRespuestasDeUnaPregunta
	pregunta agregarRespuesta: respuesta.
	usuario agregarPregunta: pregunta.
	self
		assert:
			[ (usuario devolverRespuestasDeUnaPregunta: pregunta) includes: respuesta ]
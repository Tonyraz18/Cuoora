test
testRespuestasDeUnUsuario
	usuario2 agregarPregunta: pregunta.
	pregunta agregarRespuesta: respuesta.
	self
		assert: [ (usuario2 respuestasDeUnUsuario: usuario) includes: respuesta ]
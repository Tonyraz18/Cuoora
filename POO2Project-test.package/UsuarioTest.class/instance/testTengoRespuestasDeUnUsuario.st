test
testTengoRespuestasDeUnUsuario
	usuario2 agregarPregunta: pregunta.
	pregunta agregarRespuesta: respuesta.
	self
		assert: [ usuario2 tengoRespuestasDeUnUsuario: usuario ]
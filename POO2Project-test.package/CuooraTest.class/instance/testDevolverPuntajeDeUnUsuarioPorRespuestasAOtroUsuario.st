test
testDevolverPuntajeDeUnUsuarioPorRespuestasAOtroUsuario
	usuario1 agregarPregunta: pregunta.
	pregunta agregarRespuesta: respuesta1.
	self
		assert: [ (cuoora
				devolverPuntajeDeUnUsuarioPorRespuestasAOtroUsuario: usuario2)
				= 50 ]
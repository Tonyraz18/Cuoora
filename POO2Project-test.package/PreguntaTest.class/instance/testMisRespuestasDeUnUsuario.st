test
testMisRespuestasDeUnUsuario
	pregunta agregarRespuesta: respuesta.
	
	self assert:[(pregunta misRespuestasDeUnUsuario: usuario1)includes: respuesta  ]
test
testTengoRespuestasDeUnUsuario
	pregunta agregarRespuesta: respuesta.
	
self assert: [ pregunta tengoRespuestasDeUnUsuario: usuario1  ]
test
testDevolverPuntajeDeUnUsuario
	usuario1 agregarPregunta: pregunta.
	usuario2 agregarPregunta: pregunta2.
	pregunta2 agregarRespuesta: respuesta2.
	self assert: (cuoora devolverPuntajeDeUnUsuario: usuario1) equals: 70
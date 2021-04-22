test
testDevolverPuntajeDeUnUsuario
	usuario1 agregarPregunta: pregunta2.
	pregunta2 agregarRespuesta: respuesta1.
	pregunta2 agregarLikeDeUnUsuario: usuario1.
	self assert: (cuoora devolverPuntajeDeUnUsuario: usuario1) equals: 71
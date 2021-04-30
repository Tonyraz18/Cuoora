test
testDevolverPuntajeDeUnUsuario
	usuario1 agregarPregunta: pregunta.
	usuario2 agregarPregunta: pregunta2.
	pregunta2 agregarRespuesta: respuesta2.
	pregunta2 agregarReaccionDeUnUsuario: usuario1 conValor: true.
	self assert: (cuoora devolverPuntajeDeUnUsuario: usuario1) equals: 71
test
testDevolverElPuntajeDeReaccionesDeUnUsuarioEnPreguntas
	usuario1 agregarPregunta: pregunta.
	pregunta agregarReaccionDeUnUsuario: usuario2  conValor: true.
	pregunta agregarReaccionDeUnUsuario: usuario1 conValor: true.
	
	self assert: [(cuoora devolverElPuntajeDeReaccionesDeUnUsuarioEnPreguntas: usuario1)=2 ]
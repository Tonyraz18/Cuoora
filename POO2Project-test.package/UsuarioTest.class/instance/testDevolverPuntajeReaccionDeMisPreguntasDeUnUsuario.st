test
testDevolverPuntajeReaccionDeMisPreguntasDeUnUsuario
	usuario agregarPregunta: pregunta.
	pregunta agregarReaccionDeUnUsuario: usuario2 conValor: true.
	self
		assert: [ (usuario devolverPuntajeReaccionDeMisPreguntasDeUnUsuario: usuario2) = 1 ]
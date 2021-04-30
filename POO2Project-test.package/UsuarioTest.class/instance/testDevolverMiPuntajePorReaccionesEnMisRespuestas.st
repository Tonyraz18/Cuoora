test
testDevolverMiPuntajePorReaccionesEnMisRespuestas
	usuario agregarPregunta: pregunta.
	pregunta agregarRespuesta: respuesta.
	respuesta agregarReaccionDeUnUsuario: usuario2 conValor: true.
	self
		assert: [ (usuario devolverMiPuntajePorReaccionesEnMisRespuestas) = 1 ]
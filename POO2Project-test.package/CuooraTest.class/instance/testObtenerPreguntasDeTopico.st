tests
testObtenerPreguntasDeTopico
	usuario1 agregarPregunta: pregunta.
	self
		assert:
			[ (cuoora obtenerPreguntasDeTopico: colecctopicos) includes: pregunta ]
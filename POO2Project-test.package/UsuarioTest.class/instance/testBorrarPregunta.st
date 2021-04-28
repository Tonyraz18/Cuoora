tests
testBorrarPregunta
	usuario agregarPregunta: pregunta.
	usuario borrarPregunta: pregunta.
	self deny: [ usuario devolverMisPreguntas includes: pregunta ]
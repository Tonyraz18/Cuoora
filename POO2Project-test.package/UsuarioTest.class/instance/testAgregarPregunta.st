tests
testAgregarPregunta
	usuario agregarPregunta: pregunta.
	self assert: [ usuario devolverMisPreguntas includes: pregunta ]
	
tests
testDevolverPreguntasDeSeguidores
	seguido agregarPregunta: pregunta.
	usuario agregarSeguido: seguido.
	
	self assert: [usuario devolverPreguntasDeSeguidos includes: pregunta]
	
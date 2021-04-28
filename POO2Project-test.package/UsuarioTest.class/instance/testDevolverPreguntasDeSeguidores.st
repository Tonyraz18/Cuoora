tests
testDevolverPreguntasDeSeguidores
	seguido agregarPregunta: pregunta.
	usuario agregarSeguido: seguido.
	
	self assert: [usuario devolverPreguntasDeSeguidores includes: pregunta]
	
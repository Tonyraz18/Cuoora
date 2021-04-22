tests
testDevolverPreguntasRelevantes
	seguido agregarPregunta: pregunta1.
	usuario agregarSeguido: seguido.
	usuario agregarTopicoDeInteres: topicosColec.
	usuario agregarPregunta: pregunta.
	self
		assert: [ usuario devolverPreguntasRelevantes includes: pregunta ].
	self
		assert: [ usuario devolverPreguntasRelevantes includes: pregunta1 ]
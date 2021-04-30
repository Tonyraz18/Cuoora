test
testDevolverPreguntasRelevantesDeUnUsuario
	"Ambas preguntas tienen topicos de interes de usuario1 "
	usuario1 agregarTopicoDeInteres: colecctopicos.
	usuario1 agregarPregunta: pregunta.
	usuario2 agregarPregunta: pregunta2.
	usuario1 agregarSeguido: usuario2.
	self
		assert: [ (cuoora devolverPreguntasRelevantesDeUnUsuario: usuario1)
				includes: pregunta ].
	self
		assert: [ (cuoora devolverPreguntasRelevantesDeUnUsuario: usuario1)
				includes: pregunta2 ]
tests
testPreguntasDeUnTopico
	usuario agregarPregunta: pregunta.
	usuario agregarPregunta: pregunta1.
	self
		assert: [ (usuario preguntasDeUnTopico: topicosColec) includes: pregunta ].
	self
		assert: [ (usuario preguntasDeUnTopico: topicosColec) includes: pregunta1 ]
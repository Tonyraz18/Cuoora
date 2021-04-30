test
testDevolverPreguntasConUnTopicoDeInteres
	usuario agregarPregunta: pregunta.
	usuario agregarPregunta: pregunta1.
	usuario agregarTopicoDeInteres: topicosColec.
	
	self assert: [ (usuario devolverPreguntasConUnTopicoDeInteres: topicosColec) includes: pregunta  ].
	   self assert: [ (usuario devolverPreguntasConUnTopicoDeInteres: topicosColec) includes: pregunta1  ]   
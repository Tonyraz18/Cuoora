test
testDevolverPreguntasDeSeguidos
	usuario agregarPregunta: pregunta.
	usuario agregarPregunta: pregunta1.
	usuario2 agregarSeguido: usuario.
	
self assert: [ usuario2 devolverPreguntasDeSeguidos includes: pregunta ].
self assert: [ usuario2 devolverPreguntasDeSeguidos includes: pregunta1 ]
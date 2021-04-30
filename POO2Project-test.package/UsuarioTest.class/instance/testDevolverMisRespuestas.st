test
testDevolverMisRespuestas
	pregunta agregarRespuesta: respuesta.
	self assert: [ usuario devolverMisRespuestas includes: respuesta  ]
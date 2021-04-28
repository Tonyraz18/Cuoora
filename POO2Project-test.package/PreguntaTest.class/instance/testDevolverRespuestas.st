tests
testDevolverRespuestas
	pregunta agregarRespuesta: respuesta.
	pregunta agregarRespuesta: respuesta2.
	
self assert:[pregunta devolverRespuestas includes: respuesta].
self assert:[pregunta devolverRespuestas includes: respuesta2]
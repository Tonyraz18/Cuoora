tests
testAgregarRespuesta
	pregunta agregarRespuesta: respuesta.
	
	self assert: [(pregunta devolverRespuestas) includes: respuesta]
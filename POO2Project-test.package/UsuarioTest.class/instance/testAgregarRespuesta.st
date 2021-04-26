test
testAgregarRespuesta
	usuario agregarRespuesta: respuesta.
	self assert: [ usuario devolverMisRespuestas includes: respuesta ]
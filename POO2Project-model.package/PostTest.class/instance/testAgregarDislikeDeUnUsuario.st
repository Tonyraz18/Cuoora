tests
testAgregarDislikeDeUnUsuario
	pregunta agregarDislikeDeUnUsuario: reaccion.
	self assert: pregunta devolverCantidadDeLikes equals: 0.
	self assert: pregunta devolverCantidadDeDislikes equals: 1
tests
testAgregarLikeDeUnUsuario
	pregunta agregarLikeDeUnUsuario: reaccion.
	self assert: pregunta devolverCantidadDeLikes equals: 1.
	self assert: pregunta devolverCantidadDeDislikes equals: 0
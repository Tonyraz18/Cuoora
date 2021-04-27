tests
testAgregarDislikeDeUnUsuario
	pregunta agregarReaccionDeUnUsuario: reaccion conValor: false.
	self assert: pregunta devolverCantidadDeLikes equals: 0.
	self assert: pregunta devolverCantidadDeDislikes equals: 1
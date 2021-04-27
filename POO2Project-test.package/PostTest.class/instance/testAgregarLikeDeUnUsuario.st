tests
testAgregarLikeDeUnUsuario
	pregunta agregarReaccionDeUnUsuario: reaccion conValor: true. 
	self assert: pregunta devolverCantidadDeLikes equals: 1.
	self assert: pregunta devolverCantidadDeDislikes equals: 0
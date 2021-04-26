tests
testDevolverCantidadDeDislikes
	pregunta agregarDislikeDeUnUsuario: reaccion.
	self assert: pregunta devolverCantidadDeDislikes equals: 1
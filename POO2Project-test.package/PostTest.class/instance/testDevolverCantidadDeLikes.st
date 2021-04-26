tests
testDevolverCantidadDeLikes
	pregunta agregarLikeDeUnUsuario: reaccion.
	
	self assert: pregunta devolverCantidadDeLikes equals: 1
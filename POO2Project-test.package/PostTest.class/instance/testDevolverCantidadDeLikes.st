tests
testDevolverCantidadDeLikes
	pregunta agregarReaccionDeUnUsuario: reaccion conValor: true.
	self assert: pregunta devolverCantidadDeLikes equals: 1
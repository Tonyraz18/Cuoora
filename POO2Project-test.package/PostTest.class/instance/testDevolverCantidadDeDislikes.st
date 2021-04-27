tests
testDevolverCantidadDeDislikes
	pregunta agregarReaccionDeUnUsuario: reaccion conValor: false.
	self assert: pregunta devolverCantidadDeDislikes equals: 1
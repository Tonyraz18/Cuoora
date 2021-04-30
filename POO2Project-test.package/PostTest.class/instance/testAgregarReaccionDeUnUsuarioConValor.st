test
testAgregarReaccionDeUnUsuarioConValor
	pregunta agregarReaccionDeUnUsuario: usuario2 conValor: true.
	pregunta agregarReaccionDeUnUsuario: usuario1 conValor: true.
	self assert: [ pregunta devolverCantidadDeLikes = 2 ]
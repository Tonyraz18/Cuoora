test
testAgregarOBorrarReaccionEnUnaColeccionConUnUsuario
	pregunta agregarReaccionDeUnUsuario: usuario1 conValor: true. 
	pregunta agregarReaccionDeUnUsuario: usuario1 conValor: true.
	
	self assert: [ pregunta devolverCantidadDeLikes =0  ]
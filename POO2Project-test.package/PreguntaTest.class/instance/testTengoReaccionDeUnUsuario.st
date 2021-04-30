test
testTengoReaccionDeUnUsuario
	pregunta agregarReaccionDeUnUsuario: usuario1  conValor: true.
	
	self assert: [ pregunta tengoReaccionDeUnUsuario: usuario1 ]
tests
testDiferenciaLikeDislike
	pregunta agregarReaccionDeUnUsuario: usuario1 conValor: true.
	pregunta agregarReaccionDeUnUsuario: usuario2 conValor: false.
	pregunta agregarReaccionDeUnUsuario: usuario3 conValor: false.
	self assert: pregunta diferenciaLikeDislike equals: -1
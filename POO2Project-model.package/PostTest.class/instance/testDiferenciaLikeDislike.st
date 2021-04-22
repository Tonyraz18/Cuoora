tests
testDiferenciaLikeDislike
	pregunta agregarLikeDeUnUsuario: usuario1.
	pregunta agregarDislikeDeUnUsuario: usuario2.
	pregunta agregarDislikeDeUnUsuario: usuario3.
	self assert: pregunta diferenciaLikeDislike equals: -1
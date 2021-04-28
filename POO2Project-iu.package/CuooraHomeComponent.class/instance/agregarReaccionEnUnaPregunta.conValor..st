callbacks
agregarReaccionEnUnaPregunta: unaPregunta conValor: unValor
	unaPregunta
		agregarReaccionDeUnUsuario: self session usuario
		conValor: unValor.
requirements
devolverCantidadDeRespuestasDeUnUsuario: unUsuario
	^ preguntas sumNumbers: [ :each | each devolverCantidadDeRespuestasDeUnUsuario: unUsuario]
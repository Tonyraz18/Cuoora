as yet unclassified
devolverCantidadDeRespuestasDeUnUsuario: unUsuario
	^ preguntas sumNumbers: [ :each | each devolverCantidadDeRespuestasDeUnUsuario: unUsuario]
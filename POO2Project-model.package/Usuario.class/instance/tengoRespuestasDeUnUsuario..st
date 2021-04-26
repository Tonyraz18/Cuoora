as yet unclassified
tengoRespuestasDeUnUsuario: unUsuario
	preguntas
		ifNotEmpty: [ preguntas
				detect: [ :each | each tengoRespuestasDeUnUsuario: unUsuario ]
				ifFound: [ ^ false ]. ^true].
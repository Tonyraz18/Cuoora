private
tengoRespuestasDeUnUsuario: unUsuario
	respuestas
		ifNotEmpty: [ respuestas detect: [ :each | each esMiUsuario: unUsuario ]
				ifFound: [ ^ false ]. ^true ].
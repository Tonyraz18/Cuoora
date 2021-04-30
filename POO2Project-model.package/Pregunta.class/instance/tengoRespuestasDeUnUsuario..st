private
tengoRespuestasDeUnUsuario: unUsuario
	respuestas
		ifNotEmpty: [ (self misRespuestasDeUnUsuario: unUsuario) ifNotNil: [ ^ true ] ].
	^ false
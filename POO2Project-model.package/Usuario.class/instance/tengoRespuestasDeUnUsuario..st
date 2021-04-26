private
tengoRespuestasDeUnUsuario: unUsuario
	preguntas
		ifNotEmpty: [ (self respuestasDeUnUsuario:unUsuario) ifNotNil: [ ^true ]. 
			].
	^false
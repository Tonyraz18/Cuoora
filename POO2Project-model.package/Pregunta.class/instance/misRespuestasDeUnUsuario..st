private
misRespuestasDeUnUsuario: unUsuario
	^ respuestas
		select: [ :respuesta | respuesta esMiUsuario: unUsuario ]
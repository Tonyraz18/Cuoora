private
respuestasDeUnUsuario: unUsuario
	 ^ preguntas
				flatCollect: [ :pregunta | pregunta misRespuestasDeUnUsuario: unUsuario ] 
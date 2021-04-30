private
devolverPuntajeReaccionDeMisPreguntasDeUnUsuario: unUsuario
	^(preguntas
		select: [ :pregunta | pregunta tengoReaccionDeUnUsuario: unUsuario ])
		sumNumbers: [ :each | each diferenciaLikeDislike ]
private
devolverElPuntajeDeReaccionesDeUnUsuarioEnPreguntas: unUsuario
	^usuarios
		sumNumbers: [ :each | each devolverPuntajeReaccionDeMisPreguntasDeUnUsuario: unUsuario ]
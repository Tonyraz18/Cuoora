requirements
devolverPuntajeDeUnUsuario: unUsuario
	^unUsuario devolverMiPuntajePorMisPreguntasYSusRespuestas
		+ unUsuario devolverMiPuntajePorMisReaccionesEnMisRespuestas
		+
			(self devolverElPuntajeDeReaccionesDeUnUsuarioEnPreguntas: unUsuario)
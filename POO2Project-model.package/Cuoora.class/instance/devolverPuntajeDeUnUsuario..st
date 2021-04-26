requirements
devolverPuntajeDeUnUsuario: unUsuario
	^ unUsuario devolverMiPuntajePorMisPreguntas
		+unUsuario devolverMiPuntajePorMisReaccionesEnMisRespuestas
		+(self devolverPuntajeDeUnUsuarioPorRespuestasAOtroUsuario: unUsuario)
		
		+ (self devolverElPuntajeDeReaccionesDeUnUsuarioEnPreguntas: unUsuario)
requirements
devolverPuntajeDeUnUsuario: unUsuario
	^ unUsuario devolverMiPuntajePorMisPreguntas
		+unUsuario devolverMiPuntajePorReaccionesEnMisRespuestas
		+(self devolverPuntajeDeUnUsuarioPorRespuestasAOtroUsuario: unUsuario)
		
		+ (self devolverElPuntajeDeReaccionesDeUnUsuarioEnPreguntas: unUsuario)
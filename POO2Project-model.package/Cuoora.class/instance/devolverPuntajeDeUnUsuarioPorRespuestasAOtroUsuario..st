private
devolverPuntajeDeUnUsuarioPorRespuestasAOtroUsuario: unUsuario
	^ ((usuarios
		select: [ :each | each tengoRespuestasDeUnUsuario: unUsuario ]) remove: unUsuario)
		
		sumNumbers: [ :usua | usua devolverCantidadDeRespuestasDeUnUsuario: unUsuario ]
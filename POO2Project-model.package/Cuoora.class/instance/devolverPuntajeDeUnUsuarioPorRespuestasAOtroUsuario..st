private
devolverPuntajeDeUnUsuarioPorRespuestasAOtroUsuario: unUsuario
	| colecc |
	colecc := usuarios
		select: [ :each | each tengoRespuestasDeUnUsuario: unUsuario ].
	(colecc includes: unUsuario)
		ifTrue: [ colecc remove: unUsuario ].
	^ (colecc
		sumNumbers:
			[ :usua | usua devolverCantidadDeRespuestasDeUnUsuario: unUsuario ])
				* 50
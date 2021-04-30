requirements
validarUsuario: aUser
	^ usuarios
		detect: [ :usuario | 
			usuario nombreUsuario = aUser nombreUsuario
				& (usuario contraseñaUsuario = aUser contraseñaUsuario) ]
		ifNone: [ nil ]
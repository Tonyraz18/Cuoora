requirements
devolverUsuario: aUser
	^ usuarios
		detect: [ :usuario | 
			usuario NombreUsuario = aUser NombreUsuario
				& (usuario ContraseñaUsuario = aUser ContraseñaUsuario) ]
		ifNone:[nil]
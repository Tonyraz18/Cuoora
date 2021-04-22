callbacks
login
	| user |
	user := Usuario unusuarioconnombre: nombre concontraseña: contraseña.
	(cuoora validarUsuario: user)
		ifNotNil: [ self session usuario: (cuoora validarUsuario: user).
			self call: CuooraHomeComponent new ]
		ifNil: []
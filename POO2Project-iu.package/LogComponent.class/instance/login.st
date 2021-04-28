callbacks
login
	| user |
	user := Usuario unusuarioconnombre: nombre concontraseña: contraseña.
	(self session cuoora validarUsuario: user)
		ifNotNil: [ self session usuario: (self session cuoora validarUsuario: user).
			self call: CuooraHomeComponent new ]
		ifNil: [  ]
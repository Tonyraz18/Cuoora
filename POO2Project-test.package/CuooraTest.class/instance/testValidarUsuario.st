test
testValidarUsuario
	self
		assert: [ (cuoora
				validarUsuario: (Usuario unusuarioconnombre: 'juan' concontraseña: 123456)) == usuario1 ]
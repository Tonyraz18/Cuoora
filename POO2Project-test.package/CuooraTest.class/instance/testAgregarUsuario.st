tests
testAgregarUsuario
	| usuarioLocal |
	usuarioLocal := Usuario
		unusuarioconnombre: 'juan'
		concontraseña: 123456.
	cuoora agregarUsuario: usuarioLocal.
	self assert: [ cuoora devolverUsuariosRegistrados includes: usuarioLocal ]
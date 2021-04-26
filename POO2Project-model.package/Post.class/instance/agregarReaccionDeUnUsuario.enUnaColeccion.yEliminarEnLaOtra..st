requirements
agregarReaccionDeUnUsuario: unUsuario enUnaColeccion: unaColeccion yEliminarEnLaOtra: otraColeccion
	self
		buscarReaccionYBorrarDeUnUsuario: unUsuario
		enUnaColeccion: otraColeccion.
	unaColeccion
		detect: [ :each | each miUsuarioCreador: unUsuario ]
		ifNone: [ unaColeccion add: (Reaccion unareacciondeunusuario: unUsuario) ]
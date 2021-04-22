requirements
agregarLikeDeUnUsuario: unUsuario
	self
		buscarReaccionYBorrarDeUnUsuario: unUsuario
		enUnaColeccion: dislikes.
	likes
		detect: [ :each | each miUsuarioCreador: unUsuario ]
		ifNone: [ likes add: (Reaccion unareacciondeunusuario: unUsuario) ]
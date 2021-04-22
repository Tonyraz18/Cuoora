requirements
agregarDislikeDeUnUsuario: unUsuario
	self buscarReaccionYBorrarDeUnUsuario: unUsuario  enUnaColeccion: likes.
	dislikes detect: [ :each | each miUsuarioCreador: unUsuario  ] 
	ifNone: [ dislikes add: (Reaccion unareacciondeunusuario: unUsuario) ]
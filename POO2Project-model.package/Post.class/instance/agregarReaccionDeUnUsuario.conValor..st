requirements
agregarReaccionDeUnUsuario: unUsuario conValor: unValor
	unValor
		ifTrue: [ self
				buscarReaccionYBorrarDeUnUsuario: unUsuario
				enUnaColeccion: dislikes.
			likes
				detect: [ :each | each miUsuarioCreador: unUsuario ]
				ifNone: [ likes add: (Reaccion unareacciondeunusuario: unUsuario) ].
			^ self ].
	self
		buscarReaccionYBorrarDeUnUsuario: unUsuario
		enUnaColeccion: likes.
	dislikes
		detect: [ :each | each miUsuarioCreador: unUsuario ]
		ifNone: [ dislikes add: (Reaccion unareacciondeunusuario: unUsuario) ]
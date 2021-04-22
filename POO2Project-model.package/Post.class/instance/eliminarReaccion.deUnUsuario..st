private
eliminarReaccion: unaColeccion deUnUsuario: unUsuario
	unaColeccion
		ifNotNil: [ unaColeccion
				remove:
					(unaColeccion
						detect: [ :reaccion | reaccion miUsuarioCreador: unUsuario ]) ]
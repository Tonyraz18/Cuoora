private
tengoReaccionDeUnUsuario: unUsuario
	likes detect:[ :reaccion | reaccion miUsuarioCreador: unUsuario]
		ifFound: [ ^ true ].
	dislikes detect:[ :reaccionn | reaccionn miUsuarioCreador: unUsuario]
		ifFound: [ ^ true ].
	^ false
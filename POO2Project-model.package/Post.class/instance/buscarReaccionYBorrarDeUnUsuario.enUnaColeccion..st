private
buscarReaccionYBorrarDeUnUsuario: unUsuario enUnaColeccion: unaColeccion
	unaColeccion detect: [ :reaccion | reaccion miUsuarioCreador: unUsuario ]
	ifFound: [ :reacc | unaColeccion remove: reacc  ]  
	 
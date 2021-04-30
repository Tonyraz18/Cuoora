test
testBuscarReaccionYBorrarDeUnUsuarioEnUnaColeccion
	pregunta agregarReaccionDeUnUsuario: usuario1 conValor: true.
	pregunta agregarReaccionDeUnUsuario: usuario1 conValor: false.
	"Cuando un usuario da un dislike, de la coleccion de dislike de la pregunta donde reacciono se deberia borrar su like en caso de que existiera como en este caso"
	
	self assert:[pregunta devolverCantidadDeLikes = 0]
	
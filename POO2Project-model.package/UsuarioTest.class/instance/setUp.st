running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	cuoora := Cuoora new.
	topicosColec := OrderedCollection new.
	topico := Topico
		untopicoconnombre: 'Python'
		yunadescripcion: 'un lenguaje innovador'.
	topicosColec add: topico.
	usuario := Usuario unusuarioconnombre: 'juan' concontraseña: 123456.
	seguido := Usuario
		unusuarioconnombre: 'roberto'
		concontraseña: 654321.
	pregunta := Pregunta
		preguntacontopicos: topicosColec
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'
		usuario: usuario.
	pregunta1 := Pregunta
		preguntacontopicos: topicosColec
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'
		usuario: usuario.
	respuesta := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario.
	reaccion := Reaccion unareacciondeunusuario: usuario.
	cuoora agregarUsuario: usuario.
	cuoora agregarTopico: topico
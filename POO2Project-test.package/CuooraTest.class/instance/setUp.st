running
setUp
	cuoora := Cuoora new.
	colecctopicos := OrderedCollection new.
	topico := Topico
		untopicoconnombre: 'Python'
		yunadescripcion: 'un lenguaje innovador'.
	colecctopicos add: topico.
	usuario1 := Usuario unusuarioconnombre: 'juan' concontraseña: 123456.
	usuario2 := Usuario unusuarioconnombre: 'luis' concontraseña: 654321.
	pregunta := Pregunta
		preguntacontopicos: colecctopicos
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'
		usuario: usuario1.
	pregunta2 := Pregunta
		preguntacontopicos: colecctopicos
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'
		usuario: usuario2.
	respuesta1 := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario2.
	respuesta2 := Respuesta
		unarrespuestaconuntexto: 'Lo podes hacer como te indicaron arriba'
		unusuario: usuario1.
	cuoora agregarUsuario: usuario1.
	cuoora agregarUsuario: usuario2.
	cuoora agregarTopico: topico
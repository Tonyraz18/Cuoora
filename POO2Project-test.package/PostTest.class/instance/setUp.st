running
setUp
	cuoora := Cuoora new.
	topico := Topico
		untopicoconnombre: 'Python'
		yunadescripcion: 'un lenguaje innovador'.
	usuario1 := Usuario unusuarioconnombre: 'juan' concontraseña: 123456.
	usuario2 := Usuario unusuarioconnombre: 'luis' concontraseña: 123456.
	usuario3 := Usuario unusuarioconnombre: 'pedro' concontraseña: 123456.
	pregunta := Pregunta
		preguntacontopicos: topico
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'
		usuario: usuario1.
	respuesta := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario1.
	reaccion := Reaccion unareacciondeunusuario: usuario1.
	cuoora agregarUsuario: usuario1.
	cuoora agregarTopico: topico
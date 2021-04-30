running
setUp
	
	"Hooks that subclasses may override to define the fixture of test."

	topico := Topico untopicoconnombre: 'Python'.
	colecctopicos := OrderedCollection new.
	colecctopicos add: topico.
	cuoora := Cuoora new.
	usuario1 := Usuario unusuarioconnombre: 'juan' concontraseña: 123456.
	pregunta := Pregunta
		preguntacontopicos: colecctopicos
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'
		usuario: usuario1.
	respuesta := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario1.
	respuesta2 := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario1.
	reaccion := Reaccion unareacciondeunusuario: usuario1.
	cuoora agregarUsuario: usuario1.
	cuoora agregarTopico: topico
	
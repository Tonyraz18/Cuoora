initialization
HardcodeData
	| usuario usuario2 usuario3 colecc colecc2 pregunta topico topico2 topico3|
	topico := Topico untopicoconnombre: 'OO1'.
	topico2 := Topico untopicoconnombre: 'Test de Unidad'.
	topico3 := Topico untopicoconnombre: 'Smalltalk'.
	colecc := OrderedCollection new.
	colecc2 := OrderedCollection new.
	usuario := Usuario
		unusuarioconnombre: 'pedro@cuoora.com'
		concontraseña: 'pedro@cuoora.com'.
	usuario2 := Usuario
		unusuarioconnombre: 'diego@cuoora.com'
		concontraseña: 'diego@cuoora.com'.
	usuario3 := Usuario
		unusuarioconnombre: 'juan@cuoora.com'
		concontraseña: 'juan@cuoora.com'.
	colecc add: topico.
	colecc add: topico2.
	usuario agregarTopicoDeInteres: colecc.
	pregunta := Pregunta
		preguntacontopicos: colecc
		titulo: '¿Para qué sirve el método SetUp?'
		descripc: 'descripcion'
		usuario: usuario.
	usuario agregarPregunta: pregunta.
	pregunta
		agregarRespuesta:
			(Respuesta
				unarrespuestaconuntexto:
					'Sirve para instanciar los objetos que son
				evaluados por el test en un único método y que se ejecute
				siempre antes de cada test.'
				unusuario: usuario2).
	colecc2 add: topico.
	colecc2 add: topico3.
	pregunta := Pregunta
		preguntacontopicos: colecc2
		titulo: '¿Qué significa #messageNotUnderstood?'
		descripc: 'descripcion'
		usuario: usuario2.
	usuario2 agregarTopicoDeInteres: colecc2.
	usuario2 agregarPregunta: pregunta.
	pregunta
		agregarRespuesta:
			(Respuesta
				unarrespuestaconuntexto:
					'Significa que el objeto que recibió el mensaje
				no encontró ningún método para ejecutar en respuesta.'
				unusuario: usuario2).
	usuario3 agregarSeguido: usuario2.
	usuario agregarSeguido: usuario3.
	self agregarUsuario: usuario.
	self agregarUsuario: usuario2.
	self agregarUsuario: usuario3.
	self agregarTopico: topico.
	self agregarTopico: topico2.
	self agregarTopico: topico3
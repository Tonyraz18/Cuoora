initialization
HardcodeData
	| usuario usuario2 colecc pregunta topico topico2 |
	topico := Topico untopicoconnombre: 'Informatica'.
	topico2 := Topico untopicoconnombre: 'Ingenieria'.
	colecc := OrderedCollection new.
	colecc add: topico.
	usuario := Usuario unusuarioconnombre: 'Tony' concontraseña: 'Tony'.
	usuario2 := Usuario unusuarioconnombre: 'Juan' concontraseña: 'Juan'.
	pregunta := Pregunta
		preguntacontopicos: colecc
		titulo: 'problema de publicacion'
		descripc: 'problemaaa'
		usuario: usuario.
	usuario2
		agregarPregunta:
			(Pregunta
				preguntacontopicos: colecc
				titulo: 'Holaaa nose como empezar a programar, consejos?'
				descripc: 'Quiero empezar con python'
				usuario: usuario2).
	usuario agregarSeguido: usuario2.
	pregunta
		agregarRespuesta:
			(Respuesta
				unarrespuestaconuntexto: '¿Que problema estas teniendo?'
				unusuario: usuario2).
	pregunta agregarReaccionDeUnUsuario: usuario2 conValor: true.
	usuario agregarPregunta: pregunta.
	usuario
		agregarPregunta:
			(Pregunta
				preguntacontopicos: colecc
				titulo: 'disculpen al final si pude solucionar el problema'
				descripc: 'problemaaa'
				usuario: usuario).
	self agregarUsuario: usuario.
	self agregarUsuario: usuario2.
	self agregarTopico: topico.
	self agregarTopico: topico2
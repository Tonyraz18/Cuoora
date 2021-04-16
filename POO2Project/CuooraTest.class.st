Class {
	#name : #CuooraTest,
	#superclass : #TestCase,
	#instVars : [
		'cuoora',
		'usuario1',
		'usuario2',
		'pregunta',
		'pregunta2',
		'topico',
		'respuesta1',
		'respuesta2',
		'reaccion',
		'colecctopicos'
	],
	#category : #'POO2Project-model'
}

{ #category : #running }
CuooraTest >> setUp [
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
		descripc: 'Duda sobre la implementacion en python'.
	pregunta2 := Pregunta
		preguntacontopicos: colecctopicos
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'.
	respuesta1 := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario2.
	respuesta2 := Respuesta
		unarrespuestaconuntexto: 'Lo podes hacer como te indicaron arriba'
		unusuario: usuario1.
	cuoora agregarUsuario: usuario1.
	cuoora agregarUsuario: usuario2.
	cuoora agregarTopico: topico
]

{ #category : #tests }
CuooraTest >> testAgregarTopico [
	|topicoLocal|
	topicoLocal := Topico untopicoconnombre: 'JAVASCRIPT' yunadescripcion: 'Lenguaje de programacion mayormente usado en el mercado'.
	cuoora agregarTopico: topicoLocal.
	self assert: [ cuoora devolverTopicosRegistrados includes: topicoLocal ]
 
]

{ #category : #tests }
CuooraTest >> testAgregarUsuario [
	| usuarioLocal |
	usuarioLocal := Usuario
		unusuarioconnombre: 'juan'
		concontraseña: 123456.
	cuoora agregarUsuario: usuarioLocal.
	self assert: [ cuoora devolverUsuariosRegistrados includes: usuarioLocal ]
]

{ #category : #test }
CuooraTest >> testDevolverPuntajeDeUnUsuario [
	usuario1 agregarPregunta: pregunta2.
	pregunta2 agregarRespuesta: respuesta1.
	pregunta2 agregarLikeDeUnUsuario: usuario1.
	self assert: (cuoora devolverPuntajeDeUnUsuario: usuario1) equals: 71
]

{ #category : #tests }
CuooraTest >> testObtenerPreguntasDeTopico [
	usuario1 agregarPregunta: pregunta.
	self
		assert:
			[ (cuoora obtenerPreguntasDeTopico: colecctopicos) includes: pregunta ]
]

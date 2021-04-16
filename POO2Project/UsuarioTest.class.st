Class {
	#name : #UsuarioTest,
	#superclass : #TestCase,
	#instVars : [
		'cuoora',
		'usuario',
		'pregunta',
		'pregunta1',
		'topico',
		'respuesta',
		'reaccion',
		'seguido',
		'topicosColec'
	],
	#category : #'POO2Project-model'
}

{ #category : #running }
UsuarioTest >> setUp [
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
		descripc: 'Duda sobre la implementacion en python'.
	pregunta1 := Pregunta
		preguntacontopicos: topicosColec 
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'.
	respuesta := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario.
	reaccion := Reaccion unareacciondeunusuario: usuario.
	cuoora agregarUsuario: usuario.
	cuoora agregarTopico: topico
]

{ #category : #tests }
UsuarioTest >> testAgregarPregunta [
	usuario agregarPregunta: pregunta.
	self assert: [ usuario devolverMisPreguntas includes: pregunta ]
	
]

{ #category : #test }
UsuarioTest >> testAgregarRespuesta [
	usuario agregarRespuesta: respuesta.
	self assert: [ usuario devolverMisRespuestas includes: respuesta ]
]

{ #category : #tests }
UsuarioTest >> testAgregarSeguido [
	usuario agregarSeguido: seguido.
	self assert: [ usuario devolverSeguidos includes: seguido ]
	
]

{ #category : #tests }
UsuarioTest >> testAgregarTopicoDeInteres [
	topicosColec add: topico.
	usuario agregarTopicoDeInteres: topicosColec.
	self assert: [ usuario devolverMisTopicosDeInteres includes: topico ]
]

{ #category : #tests }
UsuarioTest >> testBorrarPregunta [
	usuario agregarPregunta: pregunta.
	usuario borrarPregunta: pregunta.
	self deny: [ usuario devolverMisPreguntas includes: pregunta ]
]

{ #category : #tests }
UsuarioTest >> testDevolverMisPreguntas [
	usuario agregarPregunta: pregunta.
	self assert: [ usuario devolverMisPreguntas includes: pregunta ]
	
]

{ #category : #tests }
UsuarioTest >> testDevolverPreguntasDeSeguidores [
	seguido agregarPregunta: pregunta.
	usuario agregarSeguido: seguido.
	
	self assert: [usuario devolverPreguntasDeSeguidores includes: pregunta]
	
]

{ #category : #tests }
UsuarioTest >> testDevolverPreguntasRelevantes [
	seguido agregarPregunta: pregunta1.
	usuario agregarSeguido: seguido.
	usuario agregarTopicoDeInteres: topicosColec.
	usuario agregarPregunta: pregunta.
	self
		assert: [ usuario devolverPreguntasRelevantes includes: pregunta ].
	self
		assert: [ usuario devolverPreguntasRelevantes includes: pregunta1 ]
]

{ #category : #tests }
UsuarioTest >> testDevolverRespuestasDeUnaPregunta [
	pregunta agregarRespuesta: respuesta.
	usuario agregarPregunta: pregunta.
	self
		assert:
			[ (usuario devolverRespuestasDeUnaPregunta: pregunta) includes: respuesta ]
]

{ #category : #tests }
UsuarioTest >> testDevolverSeguidos [
	usuario agregarSeguido: seguido.
	self assert: [ usuario devolverSeguidos includes: seguido ]
]

{ #category : #tests }
UsuarioTest >> testPreguntasDeUnTopico [
	usuario agregarPregunta: pregunta.
	usuario agregarPregunta: pregunta1.
	self
		assert: [ (usuario preguntasDeUnTopico: topicosColec) includes: pregunta ].
	self
		assert: [ (usuario preguntasDeUnTopico: topicosColec) includes: pregunta1 ]
]

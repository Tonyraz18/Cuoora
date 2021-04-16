Class {
	#name : #PreguntaTest,
	#superclass : #TestCase,
	#instVars : [
		'cuoora',
		'pregunta',
		'respuesta',
		'respuesta2',
		'reaccion',
		'usuario1',
		'topico',
		'colecctopicos'
	],
	#category : #'POO2Project-model'
}

{ #category : #running }
PreguntaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	topico := Topico
		untopicoconnombre: 'Python'
		yunadescripcion: 'un lenguaje innovador'.
	colecctopicos := OrderedCollection new.
	colecctopicos add: topico.
	cuoora := Cuoora new.
	usuario1 := Usuario unusuarioconnombre: 'juan' concontraseña: 123456.
	pregunta := Pregunta
		preguntacontopicos: colecctopicos
		titulo: 'Duda general sobre el lenguaje python'
		descripc: 'Duda sobre la implementacion en python'.
	respuesta := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario1.
	respuesta2 := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario1.
	reaccion := Reaccion unareacciondeunusuario: usuario1.
	cuoora agregarUsuario: usuario1.
	cuoora agregarTopico: topico
]

{ #category : #tests }
PreguntaTest >> testAgregarRespuesta [
	pregunta agregarRespuesta: respuesta.
	
	self assert: [(pregunta devolverRespuestas) includes: respuesta]
]

{ #category : #tests }
PreguntaTest >> testDevolverRespuestas [
	pregunta agregarRespuesta: respuesta.
	pregunta agregarRespuesta: respuesta2.
	
self assert:[pregunta devolverRespuestas includes: respuesta].
self assert:[pregunta devolverRespuestas includes: respuesta2]
]

{ #category : #tests }
PreguntaTest >> testEsMiTopico [
	self assert: [ pregunta esMiTopico: colecctopicos  ]
]

Class {
	#name : #PostTest,
	#superclass : #TestCase,
	#instVars : [
		'cuoora',
		'usuario1',
		'usuario2',
		'usuario3',
		'pregunta',
		'topico',
		'respuesta',
		'reaccion'
	],
	#category : #'POO2Project-model'
}

{ #category : #running }
PostTest >> setUp [
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
		descripc: 'Duda sobre la implementacion en python'.
	respuesta := Respuesta
		unarrespuestaconuntexto: 'Mira yo creo que podes sumar esas dos variables'
		unusuario: usuario1.
	reaccion := Reaccion unareacciondeunusuario: usuario1.
	cuoora agregarUsuario: usuario1.
	cuoora agregarTopico: topico
]

{ #category : #tests }
PostTest >> testAgregarDislikeDeUnUsuario [
	pregunta agregarDislikeDeUnUsuario: reaccion.
	self assert: pregunta devolverCantidadDeLikes equals: 0.
	self assert: pregunta devolverCantidadDeDislikes equals: 1
]

{ #category : #tests }
PostTest >> testAgregarLikeDeUnUsuario [
	pregunta agregarLikeDeUnUsuario: reaccion.
	self assert: pregunta devolverCantidadDeLikes equals: 1.
	self assert: pregunta devolverCantidadDeDislikes equals: 0
]

{ #category : #tests }
PostTest >> testDevolverCantidadDeDislikes [
	pregunta agregarDislikeDeUnUsuario: reaccion.
	self assert: pregunta devolverCantidadDeDislikes equals: 1
]

{ #category : #tests }
PostTest >> testDevolverCantidadDeLikes [
	pregunta agregarLikeDeUnUsuario: reaccion.
	
	self assert: pregunta devolverCantidadDeLikes equals: 1
]

{ #category : #tests }
PostTest >> testDiferenciaLikeDislike [
	pregunta agregarLikeDeUnUsuario: usuario1.
	pregunta agregarDislikeDeUnUsuario: usuario2.
	pregunta agregarDislikeDeUnUsuario: usuario3.
	self assert: pregunta diferenciaLikeDislike equals: -1
]

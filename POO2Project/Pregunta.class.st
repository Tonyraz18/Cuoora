"
ProjectCuoora
"
Class {
	#name : #Pregunta,
	#superclass : #Post,
	#instVars : [
		'titulo',
		'topicos',
		'respuestas'
	],
	#category : #'POO2Project-model'
}

{ #category : #'instance creation' }
Pregunta class >> preguntacontopicos: topicos titulo: unTitulo descripc: unaDescripcion [
	^ self new
		preguntaConTopicos: topicos
		titulo: unTitulo
		descripc: unaDescripcion
]

{ #category : #requirements }
Pregunta >> agregarRespuesta: unaRespuesta [
	respuestas add: unaRespuesta.
	unaRespuesta esMiUsuario agregarRespuesta: unaRespuesta.
]

{ #category : #private }
Pregunta >> devolverCantidadDeRespuestas [
	^respuestas size
]

{ #category : #requirements }
Pregunta >> devolverMisTopicos [
	^ topicos
]

{ #category : #requirements }
Pregunta >> devolverRespuestas [
^respuestas
]

{ #category : #requirements }
Pregunta >> esMiTopico: coleccionDeTopicos [
	^  topicos includesAll: coleccionDeTopicos
]

{ #category : #initialization }
Pregunta >> initialize [
	super initialize.
	respuestas := OrderedCollection new.
	topicos := OrderedCollection new
]

{ #category : #private }
Pregunta >> misRespuestasDeUnUsuario: unUsuario [
	^ respuestas
		select: [ :respuesta | respuesta esMiUsuario: unUsuario ]
]

{ #category : #constructor }
Pregunta >> preguntaConTopicos: topicoss titulo: unTitulo descripc: unaDescripcion [
	topicos := topicoss.
	titulo := unTitulo.
	texto := unaDescripcion.
	fecha := DateAndTime now
]

{ #category : #private }
Pregunta >> tengoReaccionDeUnUsuario: unUsuario [
	likes detect:[ :reaccion | reaccion miUsuarioCreador: unUsuario]
		ifFound: [ ^ true ].
	dislikes detect:[ :reaccionn | reaccionn miUsuarioCreador: unUsuario]
		ifFound: [ ^ true ].
	^ false
]

{ #category : #requirements }
Pregunta >> usuario [
	^ super usuario
]

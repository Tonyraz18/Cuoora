"
ProjectCuoora
"
Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'contraseña',
		'fechaDeRegistro',
		'preguntas',
		'misRespuestas',
		'seguidos',
		'topicosDeInteres'
	],
	#category : #'POO2Project-model'
}

{ #category : #'instance creation' }
Usuario class >> unusuarioconnombre: unNombre concontraseña: unaContra [
	^ self new usuarioConUnNombre: unNombre yUnaContraseña: unaContra
]

{ #category : #accessing }
Usuario >> ContraseñaUsuario [

^contraseña
]

{ #category : #accessing }
Usuario >> NombreUsuario [
^nombre.
]

{ #category : #requirements }
Usuario >> agregarPregunta: unaPregunta [
	preguntas
		add: unaPregunta 
]

{ #category : #requirements }
Usuario >> agregarRespuesta: unaRespuesta [
 misRespuestas add: unaRespuesta 
]

{ #category : #requirements }
Usuario >> agregarSeguido: unSeguido [
	(seguidos includes: unSeguido) ifFalse:[seguidos add: unSeguido]
]

{ #category : #requirements }
Usuario >> agregarTopicoDeInteres: coleccionDeTopicos [
	(topicosDeInteres includesAll: coleccionDeTopicos)
		ifFalse: [ topicosDeInteres addAll:coleccionDeTopicos ]
]

{ #category : #requirements }
Usuario >> borrarPregunta: unaPregunta [
	preguntas remove: unaPregunta
]

{ #category : #private }
Usuario >> devolverMiPuntajePorMisPreguntasYSusRespuestas [
	 ^ preguntas size * 20
				+ self devolverPuntajePorLasRespuestasDeMiPreguntas 
]

{ #category : #private }
Usuario >> devolverMiPuntajePorMisReaccionesEnMisRespuestas [
	^ misRespuestas sumNumbers: [ :each | each diferenciaLikeDislike ]
]

{ #category : #requirements }
Usuario >> devolverMisPreguntas [
	^preguntas
]

{ #category : #accessing }
Usuario >> devolverMisRespuestas [
	^misRespuestas
]

{ #category : #accessing }
Usuario >> devolverMisTopicosDeInteres [
	^topicosDeInteres 
]

{ #category : #private }
Usuario >> devolverPreguntasConUnTopicoDeInteres: coleccionDeTopicos [
	preguntas ifNotEmpty: [^preguntas
		select: [ :pregunta | pregunta esMiTopico: topicosDeInteres ]].
]

{ #category : #private }
Usuario >> devolverPreguntasDeSeguidores [
	^ seguidos flatCollect: [ :seguido | seguido devolverMisPreguntas ]
]

{ #category : #requirements }
Usuario >> devolverPreguntasRelevantes [
	| preguntasDeMiTopico preguntasDeSeguidos |
	preguntasDeMiTopico := self devolverPreguntasConUnTopicoDeInteres: topicosDeInteres. 
	seguidos isNotEmpty
		ifTrue: [ (preguntasDeSeguidos := self devolverPreguntasDeSeguidores) isEmpty
				ifFalse: [ preguntasDeMiTopico addAllLast: preguntasDeSeguidos ] ].
	^ preguntasDeMiTopico
]

{ #category : #private }
Usuario >> devolverPuntajePorLasRespuestasDeMiPreguntas [
	^ (preguntas
		sumNumbers: [ :each | each devolverCantidadDeRespuestas ]) * 50
]

{ #category : #private }
Usuario >> devolverPuntajeReaccionDeMisPreguntasDeUnUsuario: unUsuario [
	^(preguntas
		select: [ :pregunta | pregunta tengoReaccionDeUnUsuario: unUsuario ])
		sumNumbers: [ :each | each diferenciaLikeDislike ]
]

{ #category : #requirements }
Usuario >> devolverRespuestasDeUnaPregunta: unaPregunta [
	^ unaPregunta devolverRespuestas
		asSortedCollection: [ :a :b | a diferenciaLikeDislike < b diferenciaLikeDislike ]
]

{ #category : #accessing }
Usuario >> devolverSeguidos [
	^seguidos
]

{ #category : #initialization }
Usuario >> initialize [
	preguntas := OrderedCollection new.
	seguidos := OrderedCollection new.
	topicosDeInteres := OrderedCollection new.
	misRespuestas := OrderedCollection new.
]

{ #category : #requirements }
Usuario >> preguntasDeUnTopico: colecctopicos [
	 ^ preguntas
				select: [ :pregunta | pregunta esMiTopico: colecctopicos ]
]

{ #category : #private }
Usuario >> respuestasDeUnUsuario: unUsuario [
	 ^ preguntas
				flatCollect: [ :pregunta | pregunta misRespuestasDeUnUsuario: unUsuario ] 
]

{ #category : #constructor }
Usuario >> usuarioConUnNombre: unNombre yUnaContraseña: unaContra [
	nombre := unNombre.
	contraseña := unaContra.
	fechaDeRegistro := DateAndTime now.
]

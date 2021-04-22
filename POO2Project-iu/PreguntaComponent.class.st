Class {
	#name : #PreguntaComponent,
	#superclass : #WAComponent,
	#instVars : [
		'titulo',
		'descripcion',
		'topico',
		'cuoora'
	],
	#category : #'POO2Project-iu'
}

{ #category : #'instance creation' }
PreguntaComponent class >> pregunta: unaPregunta [
	^self new pregunta: unaPregunta.
]

{ #category : #'as yet unclassified' }
PreguntaComponent >> agregarPregunta [
	| preg |
	preg := Pregunta
		preguntacontopicos: self coleccionTopicoDePregunta 
		titulo: titulo
		descripc: descripcion.
	cuoora agregarPregunta: preg
]

{ #category : #'as yet unclassified' }
PreguntaComponent >> coleccionTopicoDePregunta [
	^ (topico substrings: ',')
		collect:
			[ :nombre | Topico untopicoconnombre: nombre yunadescripcion: ' ' ]
				asOrderedCollection
]

{ #category : #accessing }
PreguntaComponent >> descripcion [
	^ descripcion
]

{ #category : #accessing }
PreguntaComponent >> descripcion: anObject [
	descripcion := anObject
]

{ #category : #initialization }
PreguntaComponent >> initialize [
		super initialize.
	cuoora := Cuoora soleInstance
]

{ #category : #'as yet unclassified' }
PreguntaComponent >> mostrarTopicos [
	^ cuoora devolverTopicosRegistrados
		ifNotEmpty: [ ' , '
				join: (cuoora devolverTopicosRegistrados collect: [ :top | top nombre ]) ]
]

{ #category : #constructor }
PreguntaComponent >> pregunta: unaPregunta [
	pregunta := unaPregunta. 
]

{ #category : #rendering }
PreguntaComponent >> renderButtonTopicoOn: aCanvas [
	aCanvas
		paragraph:
			'ingresar textualmente los topicos separando cada uno con una "," (coma)'.
	aCanvas paragraph: 'Topicos disponibles: '.
	aCanvas paragraph: self mostrarTopicos .
]

{ #category : #rendering }
PreguntaComponent >> renderContentOn: aCanvas [
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Titulo: '.
					aCanvas textInput on: #titulo of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Descripcion '.
					aCanvas textInput on: #descripcion of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Topicos '.
					aCanvas textInput on: #topico of: self ].
			self renderButtonTopicoOn: aCanvas.
			aCanvas button
				callback: [ self agregarPregunta ];
				with: 'Agregar Pregunta' ]
]

{ #category : #accessing }
PreguntaComponent >> titulo [
	^ titulo
]

{ #category : #accessing }
PreguntaComponent >> titulo: anObject [
	titulo := anObject
]

{ #category : #accessing }
PreguntaComponent >> topico [
	^ topico
]

{ #category : #accessing }
PreguntaComponent >> topico: anObject [
	topico := anObject
]

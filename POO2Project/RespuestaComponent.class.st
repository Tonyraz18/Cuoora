Class {
	#name : #RespuestaComponent,
	#superclass : #WAComponent,
	#instVars : [
		'texto',
		'usuario',
		'pregunta'
	],
	#category : #'POO2Project-iu'
}

{ #category : #'instance creation' }
RespuestaComponent class >> unaRespuestaDeLaPregunta: unaPregunta [
	^self new unaRespuestaDeLaPregunta: unaPregunta.
]

{ #category : #initialization }
RespuestaComponent >> initialize [
	super initialize
]

{ #category : #rendering }
RespuestaComponent >> renderContentOn: aCanvas [
	aCanvas heading
		level1;
		with: 'AGREGAR RESPUESTA'.
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Contenido: '.
					aCanvas textInput on: #texto of: self ].
			aCanvas button
				callback: [ self responder ];
				with: 'Responder'.
			aCanvas
				paragraph: [ aCanvas anchor
						callback: [ self answer ];
						with: [ aCanvas button with: 'Cancelar' ] ] ]
]

{ #category : #callbacks }
RespuestaComponent >> responder [
	| respuesta |
	respuesta := Respuesta
		unarrespuestaconuntexto: texto
		unusuario: (self session usuario).
	pregunta agregarRespuesta: respuesta.
	self answer
]

{ #category : #accessing }
RespuestaComponent >> texto [
	^ texto
]

{ #category : #accessing }
RespuestaComponent >> texto: anObject [
	texto := anObject
]

{ #category : #constructor }
RespuestaComponent >> unaRespuestaDeLaPregunta: unaPregunta [
	pregunta := unaPregunta.
]

{ #category : #accessing }
RespuestaComponent >> usuario [
	^ usuario
]

{ #category : #accessing }
RespuestaComponent >> usuario: anObject [
	usuario := anObject
]

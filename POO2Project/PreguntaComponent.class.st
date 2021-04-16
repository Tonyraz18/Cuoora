Class {
	#name : #PreguntaComponent,
	#superclass : #WAComponent,
	#instVars : [
		'titulo',
		'descripcion'
	],
	#category : #'POO2Project-iu'
}

{ #category : #rendering }
PreguntaComponent >> renderContentOn: aCanvas [
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Titulo: '.
					aCanvas textInput on: #titulo of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Descripcion: '.
					aCanvas textInput on: #descripcion of: self ].
			aCanvas button
				callback: [ self login ];
				with: 'Crear Pregunta' ]
]

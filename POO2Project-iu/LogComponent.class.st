"
(WAAdmin register: LogComponent asApplicationAt: 'cuoora')sessionClass: SessionUser.

Cuoora clearSoleInstance .
"
Class {
	#name : #LogComponent,
	#superclass : #WAComponent,
	#instVars : [
		'nombre',
		'contraseña',
		'cuoora'
	],
	#category : #'POO2Project-iu'
}

{ #category : #'instance creation' }
LogComponent class >> initialize [
	|app|
	app:= WAAdmin register: self asApplicationAt: 'cuoora'.
	app sessionClass: SessionUser
]

{ #category : #accessing }
LogComponent >> contraseña [
	^ contraseña
]

{ #category : #accessing }
LogComponent >> contraseña: anObject [
	contraseña := anObject
]

{ #category : #initialization }
LogComponent >> initialize [
	super initialize.
	cuoora := Cuoora soleInstance
]

{ #category : #callbacks }
LogComponent >> login [
	(self modelCuoora
		validarUsuario: (Usuario unusuarioconnombre: nombre concontraseña: contraseña))
		ifNotNil: [ self session
				usuario: (Usuario unusuarioconnombre: nombre concontraseña: contraseña).
			self call: CuooraHomeComponent new ]
]

{ #category : #'as yet unclassified' }
LogComponent >> modelCuoora [

^cuoora
]

{ #category : #accessing }
LogComponent >> nombre [
	^ nombre
]

{ #category : #accessing }
LogComponent >> nombre: anObject [
	nombre := anObject
]

{ #category : #rendering }
LogComponent >> renderContentOn: aCanvas [
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Nombre de usuario: '.
					aCanvas textInput on: #nombre of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Contraseña: '.
					aCanvas textInput on: #contraseña of: self ].
			aCanvas button
				callback: [ self login ];
				with: 'Iniciar Sesión'.]
]

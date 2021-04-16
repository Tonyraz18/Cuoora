"
interface de login 
"
Class {
	#name : #LogComponent,
	#superclass : #WAComponent,
	#instVars : [
		'nombre',
		'contraseña',
		'cuoora',
		'usuario'
	],
	#classInstVars : [
		'soleInstance'
	],
	#category : #'POO2Project-iu'
}

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
	cuoora := Cuoora soleInstance.
]

{ #category : #callbacks }
LogComponent >> login [
	self session usuario: (Usuario unusuarioconnombre: nombre concontraseña: contraseña).
	self call: CuooraHomeComponent new
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

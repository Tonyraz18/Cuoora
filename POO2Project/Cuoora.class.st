"
Project Cuoora 2021
"
Class {
	#name : #Cuoora,
	#superclass : #Object,
	#instVars : [
		'topicos',
		'usuarios'
	],
	#classInstVars : [
		'soleinstance'
	],
	#category : #'POO2Project-model'
}

{ #category : #'as yet unclassified' }
Cuoora class >> clearSoleInstance [ 

 soleinstance := nil.
]

{ #category : #'instance creation' }
Cuoora class >> soleInstance [
	soleinstance ifNil:[soleinstance := (self new) HardcodeData  ].
	^soleinstance 
]

{ #category : #initialization }
Cuoora >> HardcodeData [
	self
		agregarUsuario: (Usuario unusuarioconnombre: 'Juan' concontraseña: 'Juan').
	self
		agregarUsuario: (Usuario unusuarioconnombre: 'Facu' concontraseña: 'Facu').
	self
		agregarUsuario: (Usuario unusuarioconnombre: 'Tony' concontraseña: 'Tony').
	self
		agregarTopico:
			(Topico
				untopicoconnombre: 'informatica' yunadescripcion: 'universidad de informaticos').
	self
		agregarTopico:
			(Topico
				untopicoconnombre: 'Abogacia' yunadescripcion: 'universidad de abogados').
	self
		agregarTopico:
			(Topico
				untopicoconnombre: 'Medicina' yunadescripcion: 'universidad de medicos')
]

{ #category : #requirements }
Cuoora >> agregarTopico: unTopico [
	topicos add: unTopico
]

{ #category : #requirements }
Cuoora >> agregarUsuario: aUser [
		usuarios add: aUser.

]

{ #category : #private }
Cuoora >> devolverElPuntajeDeReaccionesDeUnUsuarioEnPreguntas: unUsuario [
	^usuarios
		sumNumbers: [ :each | each devolverPuntajeReaccionDeMisPreguntasDeUnUsuario: unUsuario ]
]

{ #category : #requirements }
Cuoora >> devolverPuntajeDeUnUsuario: unUsuario [
	^unUsuario devolverMiPuntajePorMisPreguntasYSusRespuestas
		+ unUsuario devolverMiPuntajePorMisReaccionesEnMisRespuestas
		+
			(self devolverElPuntajeDeReaccionesDeUnUsuarioEnPreguntas: unUsuario)
]

{ #category : #accesing }
Cuoora >> devolverTopicosRegistrados [
^topicos
]

{ #category : #accesing }
Cuoora >> devolverUsuariosRegistrados [
	^usuarios
]

{ #category : #initialization }
Cuoora >> initialize [
	usuarios := OrderedCollection new.
	topicos := OrderedCollection new
]

{ #category : #requirements }
Cuoora >> obtenerPreguntasDeTopico: coleccionTopicos [
	^ usuarios
		flatCollect: [ :usuario | usuario preguntasDeUnTopico: coleccionTopicos ]
]

{ #category : #requirements }
Cuoora >> validarUsuario: aUser [
	^ usuarios
		detect: [ :usuario | 
			usuario NombreUsuario = aUser NombreUsuario
				& (usuario ContraseñaUsuario = aUser ContraseñaUsuario) ]
		ifNone: [ nil ]
]

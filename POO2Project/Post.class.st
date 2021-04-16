"
ProjectCuoora
"
Class {
	#name : #Post,
	#superclass : #Object,
	#instVars : [
		'fecha',
		'texto',
		'likes',
		'dislikes',
		'usuario'
	],
	#category : #'POO2Project-model'
}

{ #category : #requirements }
Post >> agregarDislikeDeUnUsuario: unUsuario [
	self buscarReaccionYBorrarDeUnUsuario: unUsuario  enUnaColeccion: likes.
	dislikes detect: [ :each | each miUsuarioCreador: unUsuario  ] 
	ifNone: [ dislikes add: (Reaccion unareacciondeunusuario: unUsuario) ]
]

{ #category : #requirements }
Post >> agregarLikeDeUnUsuario: unUsuario [
	self
		buscarReaccionYBorrarDeUnUsuario: unUsuario
		enUnaColeccion: dislikes.
	likes
		detect: [ :each | each miUsuarioCreador: unUsuario ]
		ifNone: [ likes add: (Reaccion unareacciondeunusuario: unUsuario) ]
]

{ #category : #private }
Post >> buscarReaccionYBorrarDeUnUsuario: unUsuario enUnaColeccion: unaColeccion [
	unaColeccion detect: [ :reaccion | reaccion miUsuarioCreador: unUsuario ]
	ifFound: [ :reacc | unaColeccion remove: reacc  ]  
	 
]

{ #category : #requirements }
Post >> devolverCantidadDeDislikes [
	^ dislikes size
]

{ #category : #requirements }
Post >> devolverCantidadDeLikes [
	^likes size
]

{ #category : #requirements }
Post >> diferenciaLikeDislike [
	^ (self devolverCantidadDeLikes - self devolverCantidadDeDislikes)
]

{ #category : #private }
Post >> eliminarReaccion: unaColeccion deUnUsuario: unUsuario [
	unaColeccion
		ifNotNil: [ unaColeccion
				remove:
					(unaColeccion
						detect: [ :reaccion | reaccion miUsuarioCreador: unUsuario ]) ]
]

{ #category : #initialization }
Post >> initialize [
	likes := OrderedCollection new.
	dislikes := OrderedCollection new
]

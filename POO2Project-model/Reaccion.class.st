"
ProjectCuoora
"
Class {
	#name : #Reaccion,
	#superclass : #Object,
	#instVars : [
		'usuarioCreador',
		'fecha'
	],
	#category : #'POO2Project-model'
}

{ #category : #'instance creation' }
Reaccion class >> unareacciondeunusuario: unUsuario [
	^ self new unaReaccionDeUnUsuario: unUsuario
]

{ #category : #requirements }
Reaccion >> miUsuarioCreador: unUsuario [
	^ usuarioCreador == unUsuario
]

{ #category : #constructor }
Reaccion >> unaReaccionDeUnUsuario: unUsuario [
	usuarioCreador := unUsuario.
	fecha := DateAndTime now
]

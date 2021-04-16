"
ProjectCuoora
"
Class {
	#name : #Respuesta,
	#superclass : #Post,
	#instVars : [
		'usuario'
	],
	#category : #'POO2Project-model'
}

{ #category : #'instance creation' }
Respuesta class >> unarrespuestaconuntexto: unTexto unusuario: unUsuario [
	^ self new unaRespuestaConUnTexto: unTexto unUsuario: unUsuario
]

{ #category : #constructor }
Respuesta >> unaRespuestaConUnTexto: unTexto unUsuario: unUsuario [
	texto := unTexto.
	usuario := unUsuario.
	fecha := DateAndTime now
]

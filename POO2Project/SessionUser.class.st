"
sesion del usuario
"
Class {
	#name : #SessionUser,
	#superclass : #WASession,
	#instVars : [
		'usuario'
	],
	#category : #'POO2Project-iu'
}

{ #category : #accessing }
SessionUser >> usuario [
	^ usuario
]

{ #category : #accessing }
SessionUser >> usuario: anObject [
	usuario := anObject
]

"
ProjectCuoora
"
Class {
	#name : #Topico,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'descripcion'
	],
	#category : #'POO2Project-model'
}

{ #category : #'instance creation' }
Topico class >> untopicoconnombre: unNombre yunadescripcion: unaDescrip [
	^ self new topicoconnombre: unNombre yunadescripcion: unaDescrip
]

{ #category : #requirements }
Topico >> descripcion [
	^descripcion 
]

{ #category : #requirements }
Topico >> nombre [
	^nombre
]

{ #category : #constructor }
Topico >> topicoconnombre: unNombre yunadescripcion: unaDescrip [
	nombre := unNombre.
	descripcion := unaDescrip
]

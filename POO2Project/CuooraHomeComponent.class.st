"
pagina principal del la app
"
Class {
	#name : #CuooraHomeComponent,
	#superclass : #WAComponent,
	#category : #'POO2Project-iu'
}

{ #category : #'instance creation' }
CuooraHomeComponent class >> principal [
	^self new 
]

{ #category : #initialization }
CuooraHomeComponent >> initialize [
	super initialize 
	
]

{ #category : #rendering }
CuooraHomeComponent >> renderContentOn: aCanvas [
	aCanvas heading: self session usuario NombreUsuario
]

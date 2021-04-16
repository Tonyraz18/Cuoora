Class {
	#name : #ReaccionTest,
	#superclass : #TestCase,
	#instVars : [
		'cuoora',
		'usuario1',
		'reaccion'
	],
	#category : #'POO2Project-model'
}

{ #category : #running }
ReaccionTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	cuoora := Cuoora new.
	usuario1 := Usuario unusuarioconnombre: 'juan' concontraseña: 123456.
	reaccion := Reaccion unareacciondeunusuario: usuario1
	
]

{ #category : #tests }
ReaccionTest >> testMiUsuarioCreador [
	self assert: [ reaccion miUsuarioCreador: usuario1 ]
]

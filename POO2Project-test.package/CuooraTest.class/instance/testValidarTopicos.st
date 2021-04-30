test
testValidarTopicos
	| coleccion |
	coleccion := OrderedCollection new.
	self assert: [ cuoora validarTopicos: colecctopicos ].
	coleccion add: (Topico untopicoconnombre: 'Java').
	self deny: [ cuoora validarTopicos: coleccion ]
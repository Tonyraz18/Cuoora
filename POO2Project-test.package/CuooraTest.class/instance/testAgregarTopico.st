tests
testAgregarTopico
	|topicoLocal|
	topicoLocal := Topico untopicoconnombre: 'JAVASCRIPT' yunadescripcion: 'Lenguaje de programacion mayormente usado en el mercado'.
	cuoora agregarTopico: topicoLocal.
	self assert: [ cuoora devolverTopicosRegistrados includes: topicoLocal ]
 
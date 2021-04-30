tests
testAgregarTopico
	| topicoLocal |
	topicoLocal := Topico untopicoconnombre: 'JAVASCRIPT'.
	cuoora agregarTopico: topicoLocal.
	self
		assert: [ cuoora devolverTopicosRegistrados includes: 'JAVASCRIPT' ]
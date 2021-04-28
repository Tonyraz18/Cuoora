test
testDevolverTopicosRegistrados
	cuoora agregarTopico: topico.
	self assert: [cuoora devolverTopicosRegistrados includes: topico]
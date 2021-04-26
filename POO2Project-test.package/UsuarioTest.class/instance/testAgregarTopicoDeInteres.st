tests
testAgregarTopicoDeInteres
	topicosColec add: topico.
	usuario agregarTopicoDeInteres: topicosColec.
	self assert: [ usuario devolverMisTopicosDeInteres includes: topico ]
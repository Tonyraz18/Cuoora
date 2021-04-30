test
testDevolverMisTopicosDeInteres
	usuario agregarTopicoDeInteres: topicosColec.
	self assert: [ usuario devolverMisTopicosDeInteres includesAll: topicosColec  ] 
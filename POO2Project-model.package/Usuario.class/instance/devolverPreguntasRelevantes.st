requirements
devolverPreguntasRelevantes
	| preguntasDeMiTopico preguntasDeSeguidos |
	preguntasDeMiTopico := self
		devolverPreguntasConUnTopicoDeInteres: topicosDeInteres.
	seguidos
		ifNotEmpty: [ (preguntasDeSeguidos := self devolverPreguntasDeSeguidores) ifNotEmpty: [.
			preguntasDeMiTopico addAllLast: preguntasDeSeguidos ]].
	^ preguntasDeMiTopico
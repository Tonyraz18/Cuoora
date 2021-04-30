requirements
agregarTopicoDeInteres: coleccionDeTopicos
	(topicosDeInteres includesAll: coleccionDeTopicos)
		ifFalse: [ topicosDeInteres addAll:coleccionDeTopicos ]
requirements
devolverPreguntasRelevantesDeUnUsuario: unUsuario
	^ (((usuarios
		flatCollect: [ :each | 
			each
				devolverPreguntasConUnTopicoDeInteres: unUsuario devolverMisTopicosDeInteres ])
		union: unUsuario devolverPreguntasRelevantes)asSortedCollection: [ :a :b | a fecha > b fecha ] )takeFirst: 5
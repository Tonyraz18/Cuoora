requirements
devolverPreguntasRelevantesDeUnUsuario: unUsuario
	^ (((usuarios
		flatCollect: [ :each | 
			each
				devolverPreguntasConUnTopicoDeInteres: unUsuario devolverMisTopicosDeInteres ]
	)union: (unUsuario devolverSeguidos ifNotEmpty: [unUsuario devolverPreguntasDeSeguidos]))
	asSortedCollection: [ :a :b | a fecha > b fecha ]) takeFirst: 5
	 
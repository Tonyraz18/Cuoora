requirements
devolverRespuestasDeUnaPregunta: unaPregunta
	^ unaPregunta devolverRespuestas
		asSortedCollection: [ :a :b | a diferenciaLikeDislike < b diferenciaLikeDislike ]
private
devolverPuntajePorLasRespuestasDeMiPreguntas
	^ (preguntas
		sumNumbers: [ :each | each devolverCantidadDeRespuestas ]) * 50
private
devolverPreguntasConUnTopicoDeInteres: coleccionDeTopicos
	^ preguntas
		select: [ :each | each tengoEseTopicoEnMiColeccion: coleccionDeTopicos ]
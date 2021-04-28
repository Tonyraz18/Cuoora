private
devolverPreguntasConUnTopicoDeInteres: coleccionDeTopicos
	^ preguntas
				select: [ :pregunta | pregunta esMiTopico: topicosDeInteres ]
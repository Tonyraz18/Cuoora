private
devolverPreguntasConUnTopicoDeInteres: coleccionDeTopicos
	preguntas ifNotEmpty: [^preguntas
		select: [ :pregunta | pregunta esMiTopico: topicosDeInteres ]].
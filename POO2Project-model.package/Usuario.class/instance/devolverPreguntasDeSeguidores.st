requirements
devolverPreguntasDeSeguidores
	^ seguidos flatCollect: [ :seguido | seguido devolverMisPreguntas ]
requirements
devolverPreguntasDeSeguidos
	^ seguidos flatCollect: [ :seguido | seguido devolverMisPreguntas ]
requirements
obtenerPreguntasDeTopico: coleccionTopicos
	^ usuarios
		flatCollect: [ :usuario | usuario preguntasDeUnTopico: coleccionTopicos ]
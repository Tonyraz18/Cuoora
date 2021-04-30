requirements
preguntasDeUnTopico: colecctopicos
	 ^ preguntas
				select: [ :pregunta | pregunta esMiTopico: colecctopicos ]
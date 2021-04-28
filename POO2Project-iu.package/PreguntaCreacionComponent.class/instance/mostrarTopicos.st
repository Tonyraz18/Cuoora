requirements
mostrarTopicos
	 cuoora devolverTopicosRegistrados
		ifNotEmpty: [ ','
				join:
					( cuoora devolverTopicosRegistrados collect: [ :topic | topic nombre ] )] 
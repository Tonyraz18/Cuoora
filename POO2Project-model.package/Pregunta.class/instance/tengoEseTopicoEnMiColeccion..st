private
tengoEseTopicoEnMiColeccion: coleccionDeTopicos
	topicos
		do: [ :each | 
			coleccionDeTopicos
				detect: [ :topic | topic nombre = each nombre ]
				ifFound: [ ^ true ] ].
	^ false
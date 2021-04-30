as yet unclassified
validarTopicos: coleccionDeTopicos
	^(topicos collect: [ :each | each nombre ])
		includesAll: (coleccionDeTopicos collect: [ :topic | topic nombre ])
requirements
crearColeccionDeTopicos
	^ ((stringdetopicos substrings:',')
		collect: [ :name | Topico untopicoconnombre: name ])
		asOrderedCollection
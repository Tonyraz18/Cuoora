rendering
renderButtonTopicoOn: aCanvas
	aCanvas
		paragraph:
			'ingresar textualmente los topicos separando cada uno con una "," (coma)'.
	aCanvas paragraph: 'Topicos disponibles: '.
	aCanvas paragraph: self mostrarTopicos .
rendering
renderFollowOn: aCanvas
	aCanvas anchor
		callback: [ self manejoDeUsuarioSeguido ];
		with: 'Seguir'
rendering
renderContentOn: aCanvas
	header renderContentOn: aCanvas.
	aCanvas heading
		level: 1;
		with: [ aCanvas emphasis: 'Nueva Pregunta' ].
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Titulo: '.
					aCanvas textInput on: #titulo of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Descripcion '.
					aCanvas textInput on: #descripcion of: self ].
			aCanvas
				paragraph:
					'Ingresar textualmente los topicos separando cada uno con una "" (coma)'.
			aCanvas
				paragraph: [ aCanvas label: 'Topicos '.
					aCanvas textInput on: #stringdetopicos of: self ].
			aCanvas paragraph: 'Topicos disponibles: '.
			aCanvas paragraph: self mostrarTopicos.
			aCanvas button
				callback: [ self agregarPregunta ];
				with: 'Publicar' ].
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self answer ];
				with: [ aCanvas
						button
						with: 'Cancelar' ] ]
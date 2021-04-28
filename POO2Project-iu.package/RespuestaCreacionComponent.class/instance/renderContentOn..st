rendering
renderContentOn: aCanvas
	aCanvas heading
		level1;
		with: 'AGREGAR RESPUESTA'.
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Contenido: '.
					aCanvas textInput on: #texto of: self ].
			aCanvas button
				callback: [ self responder ];
				with: 'Responder'.
			aCanvas
				paragraph: [ aCanvas anchor
						callback: [ self answer ];
						with: [ aCanvas button with: 'Cancelar' ] ] ]
rendering
renderContentOn: aCanvas
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Titulo: '.
					aCanvas textInput on: #titulo of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Descripcion '.
					aCanvas textInput on: #descripcion of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Topicos '.
					aCanvas textInput on: #topico of: self ].
			self renderButtonTopicoOn: aCanvas.
			aCanvas button
				callback: [ self agregarPregunta ];
				with: 'Agregar Pregunta' ]
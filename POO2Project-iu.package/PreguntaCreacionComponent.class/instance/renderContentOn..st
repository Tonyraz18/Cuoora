rendering
renderContentOn: aCanvas
	header renderContentOn: aCanvas.
	self renderMyProfileOn: aCanvas.
	self renderLogoutButtonOn: aCanvas .
	self renderBackOn: aCanvas.
	aCanvas heading
		level: 1;
		with: [ aCanvas emphasis: 'Nueva Pregunta' ].
	aCanvas
		form: [ aCanvas
				paragraph: [
					aCanvas textInput on: #titulo of: self ;class: 'form-control';placeholder: 'titulo'].
			aCanvas
				paragraph: [ 
					aCanvas textInput on: #descripcion of: self ;class: 'form-control';placeholder: 'Descripcion'].
			aCanvas
				strong:
					'Ingresar textualmente los topicos separando cada uno con una "" (coma)'.
			aCanvas
				paragraph: [ 
					aCanvas textInput on: #stringdetopicos of: self ;class: 'form-control';placeholder: 'Topicos'].
			aCanvas strong: 'Topicos disponibles: '.
			aCanvas paragraph: self mostrarTopicos.
			aCanvas button
				callback: [ self agregarPregunta ];
				class: 'btn btn-success';
				with: 'Publicar' ].
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self answer ];
				with: [ aCanvas
						button
						class: 'btn btn-success';
						with: 'Cancelar' ] ]
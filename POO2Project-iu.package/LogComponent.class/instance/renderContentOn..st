rendering
renderContentOn: aCanvas
	aCanvas heading level;
	with: 'CuOOra'. 
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Nombre de usuario: '.
					aCanvas textInput on: #nombre of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Contraseña: '.
					aCanvas textInput on: #contraseña of: self ].
			aCanvas button
				callback: [ self login ];
				with: 'Iniciar Sesión' ]
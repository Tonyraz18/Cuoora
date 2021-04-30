rendering
renderContentOn: aCanvas
	aCanvas div with: [ header renderContentOn: aCanvas ].
		self renderMyProfileOn: aCanvas.
	self renderLogoutButtonOn: aCanvas .
		self renderBackOn: aCanvas.
	usuario == self session usuario
		ifTrue: [ aCanvas heading
				level: 2;
				with: 'Mi perfil ' ]
		ifFalse: [ aCanvas heading
				level: 2;
				with: 'Perfil de  ' , usuario nombreUsuario.
			self renderValidationFollow
				ifTrue: [ aCanvas emphasis: 'SIGUIENDO' ].
			aCanvas paragraph: [ self renderFollowOn: aCanvas ] ].
	aCanvas heading
		level: 2;
		with: 'POSTEOS'.
	self renderPostOn: aCanvas.

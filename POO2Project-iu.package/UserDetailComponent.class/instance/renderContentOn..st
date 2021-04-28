rendering
renderContentOn: aCanvas
aCanvas div with: [ header renderContentOn: aCanvas ].
	aCanvas heading
		level: 2;
		with: 'perfil de ', usuario NombreUsuario .
	self renderPostOn: aCanvas.


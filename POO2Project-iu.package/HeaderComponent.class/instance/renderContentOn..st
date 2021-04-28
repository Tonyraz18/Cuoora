rendering
renderContentOn: aCanvas
	aCanvas header
		class: 'navbar navbar-expand-lg bg-dark justify-content-between';
		with: [ aCanvas heading
				with: 'CuOOra Bienvenido ' , self session usuario NombreUsuario.
			self renderLogoutButtonOn: aCanvas ]
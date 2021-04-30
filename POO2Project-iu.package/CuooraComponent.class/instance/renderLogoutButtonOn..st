rendering
renderLogoutButtonOn: aCanvas
	aCanvas anchor
		callback: [ self logOut ];
		with: [ aCanvas button
				class: 'btn btn-danger username';
				with: 'Cerrar Sesion' ]
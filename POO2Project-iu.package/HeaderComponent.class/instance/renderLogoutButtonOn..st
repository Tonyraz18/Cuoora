rendering
renderLogoutButtonOn: aCanvas
	aCanvas anchor
		class: 'logOut';
		callback: [ self logOut ];
		with: [ aCanvas button
				class: 'btn btn-danger username';
				with: 'Cerrar Sesion' ]
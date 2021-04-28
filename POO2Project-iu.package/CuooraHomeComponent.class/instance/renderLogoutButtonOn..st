rendering
renderLogoutButtonOn: aCanvas
	 aCanvas anchor
				class: 'logout';
				callback: [ self logOut ];
				with: [ aCanvas button class: 'btn btn-success username';with: 'Cerrar sesion' ] 
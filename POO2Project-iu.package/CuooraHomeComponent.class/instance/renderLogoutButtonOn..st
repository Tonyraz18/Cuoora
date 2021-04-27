rendering
renderLogoutButtonOn: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				class: 'logout';
				callback: [ self logOut ];
				with: [ aCanvas button with: 'Cerrar sesion' ] ]
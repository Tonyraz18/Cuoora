rendering
renderLogoutButtonOn: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				class: 'logout';
				callback: [ self answer ];
				with: [ aCanvas button with: 'Cerrar sesion' ] ]
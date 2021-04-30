rendering
renderButtonOn: aCanvas

 aCanvas anchor
				class: 'logout';
				callback: [ self login ];
				with: [ aCanvas button class: 'btn btn-success'; with: 'iniciar Sesion' ] 

	
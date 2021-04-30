rendering
renderMyProfileOn: aCanvas
	aCanvas anchor
		callback: [ self callUserDetail: self session usuario ];
		with: [ aCanvas button
				class: 'btn btn-danger username';
				with: 'Mi Perfil' ]
rendering
renderBackOn:aCanvas

aCanvas anchor
		class: '';
		callback: [ self answer ];
		with: [ aCanvas button
				class: 'btn btn-success username';
				with: 'back' ]
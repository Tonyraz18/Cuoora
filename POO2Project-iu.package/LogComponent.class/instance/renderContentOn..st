rendering
renderContentOn: aCanvas
	aCanvas header class:'navbar navbar-expand-lg bg-dark justify-content-between';
	with: [aCanvas heading with:'CuOOra WebPage']. 

			  aCanvas
        form: [ aCanvas
                paragraph: [
                    aCanvas textInput on: #nombre of: self ;class: 'form-control'; placeholder: 'Usuario' ].
            aCanvas
                paragraph: [
                    aCanvas textInput on: #contraseña of: self ; class: 'form-control'; type:'password' ; placeholder: 'contraseña'].
            aCanvas button
					class: 'btn btn-success';
                callback: [ self login ];
                with: 'Iniciar Sesión' ]
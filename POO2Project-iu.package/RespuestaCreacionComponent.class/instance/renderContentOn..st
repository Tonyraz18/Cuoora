rendering
renderContentOn: aCanvas
	header renderContentOn: aCanvas.
	aCanvas heading
		level: 2;
		with: [ aCanvas emphasis: pregunta titulo ].
	aCanvas text: 'Topicos: '.
	aCanvas text: (',' join: pregunta devolverMisTopicos).
	aCanvas space.
	aCanvas paragraph: 'Realizada por: '.
	aCanvas strong: pregunta usuario NombreUsuario.
	aCanvas
		paragraph:
			pregunta devolverCantidadDeLikes printString , ' Likes' , ' | '
				, pregunta devolverCantidadDeDislikes printString , ' Dislikes'.
	aCanvas anchor
		class: 'reaction';
		callback: [ pregunta
				agregarReaccionDeUnUsuario: self session usuario
				conValor: true ];
		with: 'Like'.
	aCanvas space.
	aCanvas anchor
		class: 'reaction';
		callback: [ pregunta
				agregarReaccionDeUnUsuario: self session usuario
				conValor: false ];
		with: 'Dislike'.
	aCanvas space.
	aCanvas horizontalRule.
	aCanvas heading
		level1;
		with: 'AGREGAR RESPUESTA'.
	aCanvas
		form: [ aCanvas
				paragraph: [
					aCanvas textArea on: #texto of: self;style:  'width:400px;height:100px; font-size:16px;' ].
			self renderResponderOn: aCanvas].
		aCanvas paragraph:' '.
				self renderBackOn: aCanvas.
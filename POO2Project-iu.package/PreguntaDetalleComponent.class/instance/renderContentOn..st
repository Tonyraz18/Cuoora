rendering
renderContentOn: aCanvas
	header renderContentOn: aCanvas.
		self renderMyProfileOn: aCanvas.
	self renderLogoutButtonOn: aCanvas .
	self renderBackOn: aCanvas.
	aCanvas heading
		level: 2;
		with: [ aCanvas emphasis: pregunta titulo ].
	aCanvas text: 'Topicos: '.
	aCanvas text: (',' join: pregunta devolverMisTopicos).
	aCanvas space.
	aCanvas paragraph: ''.
	aCanvas text:'Realizada por: '.
	aCanvas anchor
				callback: [ self callUserDetail: pregunta usuario ];
				with: pregunta usuario nombreUsuario.
	aCanvas
		paragraph:
			pregunta devolverCantidadDeLikes printString , ' Likes' , ' | '
				, pregunta devolverCantidadDeDislikes printString , ' Dislikes'.
	aCanvas anchor
		class: 'btn btn-success';
		callback: [ pregunta
				agregarReaccionDeUnUsuario: self session usuario
				conValor: true ];
		with: 'Like'.
	aCanvas space.
	aCanvas anchor
		class: 'btn btn-success';
		callback: [ pregunta
				agregarReaccionDeUnUsuario: self session usuario
				conValor: false ];
		with: 'Dislike'.
	aCanvas space.
	aCanvas horizontalRule.
	aCanvas
		unorderedList: [ pregunta devolverRespuestas
				do: [ :resp | 
					aCanvas heading
						level: 2;
						with: [ aCanvas text: 'Respuesta de '.
							aCanvas text: resp usuario nombreUsuario ].
					aCanvas paragraph: resp texto.
					aCanvas
						paragraph:
							resp devolverCantidadDeLikes printString , ' Likes' , ' | '
								, resp devolverCantidadDeDislikes printString , ' Dislikes'.
					aCanvas anchor
						class: 'btn btn-success';
						callback:
								[ resp agregarReaccionDeUnUsuario: self session usuario conValor: true ];
						with: 'Like'.
					aCanvas space.
					aCanvas anchor
						class: 'btn btn-success';
						callback: [ resp
								agregarReaccionDeUnUsuario: self session usuario
								conValor: false ];
						with: 'Dislike'.
					aCanvas horizontalRule ] ].
	aCanvas heading
		level: 3;
		with: [ aCanvas emphasis: 'No hay mas respuestas' ].
	aCanvas anchor
		callback: [ self
				call: (RespuestaCreacionComponent unaRespuestaDeLaPregunta: pregunta) ];
			class: 'btn btn-success';
		with: 'Agregar una respuesta'.
		aCanvas paragraph:''.
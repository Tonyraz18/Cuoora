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
	aCanvas
		unorderedList: [ pregunta devolverRespuestas
				do: [ :resp | 
					aCanvas heading
						level: 2;
						with: [ aCanvas text: 'Respuesta de '.
							aCanvas text: resp esMiUsuario NombreUsuario ].
					aCanvas paragraph: resp texto.
					aCanvas
						paragraph:
							resp devolverCantidadDeLikes printString , ' Likes' , ' | '
								, resp devolverCantidadDeDislikes printString , ' Dislikes'.
					aCanvas anchor
						class: 'reaction';
						callback:
								[ resp agregarReaccionDeUnUsuario: self session usuario conValor: true ];
						with: 'Like'.
					aCanvas space.
					aCanvas anchor
						class: 'reaction';
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
		with: 'Agregar una respuesta'.
	aCanvas paragraph:[
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas button with: 'Volver' ]]
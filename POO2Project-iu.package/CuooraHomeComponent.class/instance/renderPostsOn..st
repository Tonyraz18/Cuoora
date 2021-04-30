rendering
renderPostsOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Ultimas Preguntas'.
	aCanvas
		unorderedList:
			[ (self session cuoora devolverPreguntasRelevantesDeUnUsuario: self session usuario)
				do: [ :each | 
					aCanvas
						listItem: [ aCanvas anchor
								callback: [ self call: (PreguntaDetalleComponent conUnaPregunta: each) ];
								with: [ aCanvas heading
										level: 2;
										with: [ aCanvas emphasis: each titulo ] ].
							aCanvas text: 'Topicos: '.
							aCanvas text: (',' join: each devolverMisTopicos).
							aCanvas paragraph: ''.
							aCanvas text: 'Realizada por: '.
							aCanvas anchor
								callback: [ self callUserDetail: each usuario ];
								with: each usuario nombreUsuario.
							aCanvas
								paragraph: each devolverCantidadDeRespuestas printString , ' respuestas'.
							aCanvas
								paragraph:
									each devolverCantidadDeLikes printString , ' Likes' , ' | '
										, each devolverCantidadDeDislikes printString , ' Dislikes'.
							aCanvas anchor
								class: 'reaction';
								callback:
										[ each agregarReaccionDeUnUsuario: self session usuario conValor: true ];
								class: 'btn btn-success';
								with: 'Like' ].
					aCanvas anchor
						class: 'reaction';
						callback: [ each
								agregarReaccionDeUnUsuario: self session usuario
								conValor: false ];
						class: 'btn btn-success';
						with: 'Dislike'.
					aCanvas space.
					aCanvas horizontalRule ] ]
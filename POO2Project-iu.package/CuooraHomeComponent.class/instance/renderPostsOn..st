rendering
renderPostsOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Ultimas Preguntas'.
	aCanvas
		unorderedList: [ (self session cuoora
				devolverPreguntasRelevantesDeUnUsuario: self session usuario)
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
								class: 'reaction';
								callback: [ self callUserDetail: each usuario ];
								with: each usuario NombreUsuario.
							aCanvas
								paragraph: each devolverCantidadDeRespuestas printString , ' respuestas'.
							aCanvas
								paragraph:
									each devolverCantidadDeLikes printString , ' Likes' , ' | '
										, each devolverCantidadDeDislikes printString , ' Dislikes'.
							aCanvas anchor
								class: 'reaction';
								callback: [ each agregarReaccionDeUnUsuario: self session usuario conValor: true ];
								with: 'Like' ].
					aCanvas anchor
						class: 'reaction';
						callback: [ each agregarReaccionDeUnUsuario: self session usuario conValor: true ];
						with: 'Dislike'.
					aCanvas space.
					aCanvas horizontalRule ] ].
	aCanvas anchor
		class: 'newpost';
		callback: [ self call: (PreguntaCreacionComponent new ) ];
		with: [ aCanvas button: 'Nueva Pregunta' ]
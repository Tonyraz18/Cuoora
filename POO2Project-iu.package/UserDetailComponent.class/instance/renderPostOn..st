rendering
renderPostOn:aCanvas
aCanvas
		unorderedList: [ (self usuario 
				devolverMisPreguntas  )
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
								callback: [  ];
								with: each usuario NombreUsuario.
							aCanvas
								paragraph: each devolverCantidadDeRespuestas printString , ' respuestas'.
							aCanvas
								paragraph:
									each devolverCantidadDeLikes printString , ' Likes' , ' | '
										, each devolverCantidadDeDislikes printString , ' Dislikes'.
							aCanvas anchor
								class: 'reaction';
								callback: [ each agregarReaccionDeUnUsuario: self  usuario conValor: true ];
								with: 'Like' ].
					aCanvas anchor
						class: 'reaction';
						callback: [ each agregarReaccionDeUnUsuario: self  usuario conValor: false ];
						with: 'Dislike'.
					aCanvas space.
					aCanvas horizontalRule ] ].
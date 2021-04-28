rendering
renderPostsOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Ultimas Preguntas'.
	aCanvas
		unorderedList: [ (self session usuario devolverPreguntasRelevantes
				asSortedCollection: [ :a :b | a fecha < b fecha ])
				do: [ :each | 
					aCanvas
						listItem: [ aCanvas heading
								level: 2;
								with: [ aCanvas emphasis: each titulo ].
							aCanvas space.
							aCanvas text: 'Realizada por: '.
							aCanvas
								strong:
									each usuario NombreUsuario , ' | '
										, each devolverCantidadDeRespuestas printString
										, ' Respuestas'.
							aCanvas
								paragraph:
									each devolverCantidadDeLikes printString , ' Likes' , ' | '
										, each devolverCantidadDeDislikes printString , ' Dislikes'.
							aCanvas button
								class: 'reaction';
								callback: [  ];
								with: 'Like' ].
					aCanvas button
						class: 'reaction';
						callback: [  ];
						with: 'Dislike'.
					aCanvas space.
					aCanvas horizontalRule ] ].
	aCanvas anchor
		class: 'newpost';
		callback: [ self call:PreguntaComponent new ];
		with: [ aCanvas button: 'Nueva Pregunta' ]
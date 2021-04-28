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
                                callback: [ self call: RespuestaDetallComponent new ];
                                with: [ aCanvas heading
                                        level: 2;
                                        with: [ aCanvas emphasis: each titulo ] ].
                            aCanvas text: 'Topicos: '.
                            aCanvas text: (',' join: each devolverMisTopicos).
                            aCanvas space.
                            aCanvas paragraph: 'Realizada por: '.
                            aCanvas
                                strong:
                                    each usuario NombreUsuario , ' | '
                                        , each devolverCantidadDeRespuestas printString
                                        , ' Respuestas'.
                            aCanvas
                                paragraph:
                                    each devolverCantidadDeLikes printString , ' Likes' , ' | '
                                        , each devolverCantidadDeDislikes printString , ' Dislikes'.
                            aCanvas anchor
                                class: 'reaction';
                                callback: [ self agregarReaccionEnUnaPregunta: each conValor: true ];
                                with: 'Like' ].
                    aCanvas anchor
                        class: 'reaction';
                        callback: [ self agregarReaccionEnUnaPregunta: each conValor: false ];
                        with: 'Dislike'.
                    aCanvas space.
                    aCanvas horizontalRule ] ].
    aCanvas anchor
        class: 'newpost';
        callback: [ self call: [ PreguntaComponent new ] ];
        with: [ aCanvas button: 'Nueva Pregunta' ]
requirements
agregarReaccionDeUnUsuario: unUsuario conValor: unValor
    unValor
        ifTrue: [ self
                buscarReaccionYBorrarDeUnUsuario: unUsuario
                enUnaColeccion: dislikes.
            self
                agregarOBorrarReaccionEnUnaColeccion: likes
                conUnUsuario: unUsuario.
            ^ self ].
    self
        buscarReaccionYBorrarDeUnUsuario: unUsuario
        enUnaColeccion: likes.
    self
        agregarOBorrarReaccionEnUnaColeccion: dislikes
        conUnUsuario: unUsuario
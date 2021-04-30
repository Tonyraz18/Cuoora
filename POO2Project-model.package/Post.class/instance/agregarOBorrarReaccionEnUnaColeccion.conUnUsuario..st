private
agregarOBorrarReaccionEnUnaColeccion: unaColeccion conUnUsuario: unUsuario
    unaColeccion
        detect: [ :each | each miUsuarioCreador: unUsuario ]
        ifFound: [ self
                buscarReaccionYBorrarDeUnUsuario: unUsuario
                enUnaColeccion: unaColeccion ]
        ifNone: [ unaColeccion add: (Reaccion unareacciondeunusuario: unUsuario) ]
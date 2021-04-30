callback
manejoDeUsuarioSeguido
	(self session usuario esMiSeguido: usuario)
		ifFalse: [ self session usuario agregarSeguido: usuario ]
		ifTrue: [ self session usuario eliminarSeguido: usuario ]
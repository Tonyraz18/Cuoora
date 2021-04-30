callbacks
agregarPregunta
	(self session cuoora validarTopicos: self crearColeccionDeTopicos)
		ifTrue: [ self session usuario
				agregarPregunta:
					(Pregunta
						preguntacontopicos: self crearColeccionDeTopicos
						titulo: titulo
						descripc: descripcion
						usuario: self session usuario) ].
	self answer
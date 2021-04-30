callbacks
responder
	| respuesta |
	respuesta := Respuesta
		unarrespuestaconuntexto: texto
		unusuario: (self session usuario).
	pregunta agregarRespuesta: respuesta.
	self answer
test
testEliminarSeguido
	usuario agregarSeguido: usuario2.
	usuario eliminarSeguido: usuario2.
	
self deny:[usuario devolverSeguidos includes: usuario2]
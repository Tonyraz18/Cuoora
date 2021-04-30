tests
testDevolverSeguidos
	usuario agregarSeguido: seguido.
	self assert: [ usuario devolverSeguidos includes: seguido ]
tests
testAgregarSeguido
	usuario agregarSeguido: seguido.
	self assert: [ usuario devolverSeguidos includes: seguido ]
	
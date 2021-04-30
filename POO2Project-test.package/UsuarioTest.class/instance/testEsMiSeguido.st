test
testEsMiSeguido
	usuario agregarSeguido: usuario2.
	
self assert: [ usuario esMiSeguido: usuario2  ]
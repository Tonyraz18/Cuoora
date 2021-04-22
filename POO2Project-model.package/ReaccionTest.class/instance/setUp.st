running
setUp
	"Hooks that subclasses may override to define the fixture of test."
	cuoora := Cuoora new.
	usuario1 := Usuario unusuarioconnombre: 'juan' concontraseña: 123456.
	reaccion := Reaccion unareacciondeunusuario: usuario1
	
instance creation
initialize
	|app|
	app:= WAAdmin register: self asApplicationAt: 'cuoora'.
	app sessionClass: SessionUser
mapping methods
getMappingMethods

	^Dictionary new
		add: ('valores-escenarios' -> #asNewValoresEscenarios);
		add: ('resolver-postulacion' -> #yourself);
		yourself
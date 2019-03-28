mapping methods
getMappingMethods

	^Dictionary new
		add: ('escenario-sin-medidas' -> #asNewEscenarioSinMedidas);
		add: ('escenario-con-medidas' -> #asNewEscenarioConMedidas);
		add: ('resolver-postulacion' -> #yourself);
		yourself
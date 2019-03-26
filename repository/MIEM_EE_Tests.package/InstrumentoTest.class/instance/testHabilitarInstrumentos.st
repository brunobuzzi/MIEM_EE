other
testHabilitarInstrumentos
	| instrumentosSinHabilitaciones |

	instrumentosSinHabilitaciones := Instrumento cache reject: [:each | each tieneHabilitacionActiva].

	instrumentosSinHabilitaciones do: [:each | | hab |
		hab := each crearHabilitacionDesde: Date today hasta: (Date today addDays: 365) vigente: true. 
	].

	self assert: (Instrumento cache allSatisfy: [:each | each tieneHabilitacionActiva])
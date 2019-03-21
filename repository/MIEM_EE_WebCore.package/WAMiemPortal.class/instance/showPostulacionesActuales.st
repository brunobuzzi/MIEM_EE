other
showPostulacionesActuales

	(arena isKindOf: WAPostularAInstrumentoBrowser)
	ifTrue: [^arena].

	^WAPostularAInstrumentoBrowser parent: self
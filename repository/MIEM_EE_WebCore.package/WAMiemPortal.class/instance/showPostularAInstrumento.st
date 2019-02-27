other
showPostularAInstrumento

	(arena isKindOf: WAPostularAInstrumentoBrowser)
	ifTrue: [^arena].

	^WAPostularAInstrumentoBrowser parent: self
other
showInstrumentos

	(arena isKindOf: WAInstrumentoBrowser)
	ifTrue: [^arena].

	^WAInstrumentoBrowser parent: self
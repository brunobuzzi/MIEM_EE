other
showAutoconsumo

	(arena isKindOf: WAAutoconsumoBrowser)
	ifTrue: [^arena].

	^WAAutoconsumoBrowser parent: self
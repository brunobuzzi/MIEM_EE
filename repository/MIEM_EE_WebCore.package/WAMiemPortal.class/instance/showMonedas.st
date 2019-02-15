other
showMonedas

	(arena isKindOf: WAMonedasBrowser)
	ifTrue: [^arena].

	^WAMonedasBrowser parent: self
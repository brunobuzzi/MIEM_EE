other
showCIIU

	(arena isKindOf: WACIIUBrowser)
	ifTrue: [^arena].

	^WACIIUBrowser parent: self
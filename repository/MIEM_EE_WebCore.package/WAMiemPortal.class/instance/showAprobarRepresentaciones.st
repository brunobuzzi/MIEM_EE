other
showAprobarRepresentaciones

	(arena isKindOf: WAAprobarRepresentacionBrowser)
	ifTrue: [^arena].

	^WAAprobarRepresentacionBrowser parent: self
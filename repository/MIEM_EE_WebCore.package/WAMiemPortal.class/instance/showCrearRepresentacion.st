other
showCrearRepresentacion

	(arena isKindOf: WACrearRepresentacionBrowser)
	ifTrue: [^arena].

	^WACrearRepresentacionBrowser parent: self
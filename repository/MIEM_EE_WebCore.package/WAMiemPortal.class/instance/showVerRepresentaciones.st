other
showVerRepresentaciones

	(arena isKindOf: WARepresentacionFinalizadaBrowser)
	ifTrue: [^arena].

	^WARepresentacionFinalizadaBrowser parent: self
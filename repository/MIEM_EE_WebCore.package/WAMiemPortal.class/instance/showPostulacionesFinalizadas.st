other
showPostulacionesFinalizadas

	(arena isKindOf: WAPostulacionFinalizadaBrowser)
	ifTrue: [^arena].

	^WAPostulacionFinalizadaBrowser parent: self
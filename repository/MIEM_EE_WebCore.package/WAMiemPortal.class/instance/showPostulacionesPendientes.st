other
showPostulacionesPendientes

	(arena isKindOf: WAMiemPostulacionesPendientesBrowser)
	ifTrue: [^arena].

	^WAMiemPostulacionesPendientesBrowser parent: self
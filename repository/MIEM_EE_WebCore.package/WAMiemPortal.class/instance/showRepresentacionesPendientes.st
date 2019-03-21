other
showRepresentacionesPendientes

	(arena isKindOf: WAMiemRepresentacionesPendientesBrowser)
	ifTrue: [^arena].

	^WAMiemRepresentacionesPendientesBrowser parent: self
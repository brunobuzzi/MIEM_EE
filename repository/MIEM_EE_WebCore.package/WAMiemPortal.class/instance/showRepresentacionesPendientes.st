other
showRepresentacionesPendientes

	(arena isKindOf: WAMiemTareasPendientesBrowser)
	ifTrue: [^arena].

	^WAMiemTareasPendientesBrowser parent: self
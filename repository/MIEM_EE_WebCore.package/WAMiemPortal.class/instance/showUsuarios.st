other
showUsuarios

	(arena isKindOf: WAMiemUserManager)
	ifTrue: [^arena].

	^WAMiemUserManager parent: self
other
showFuentesDeEnergia

	(arena isKindOf: WAFuentesDeEnergiaBrowser)
	ifTrue: [^arena].

	^WAFuentesDeEnergiaBrowser parent: self
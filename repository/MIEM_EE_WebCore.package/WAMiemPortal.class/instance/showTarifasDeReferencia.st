other
showTarifasDeReferencia

	(arena isKindOf: WATarifasDeReferenciaBrowser)
	ifTrue: [^arena].

	^WATarifasDeReferenciaBrowser parent: self
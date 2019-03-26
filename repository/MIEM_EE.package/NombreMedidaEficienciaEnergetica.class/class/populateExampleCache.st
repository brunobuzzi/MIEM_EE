other
populateExampleCache

	self initializeCache.

	self validNamesExample do: [:each | | nombreMEE |
		nombreMEE := self new.
		nombreMEE nombre: each.
		nombreMEE usoMedida: UsoMedida cache asArray randomPeek.
		nombreMEE addToCache]
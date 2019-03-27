other
populateExampleCache

	self initializeCache.

	self validNamesExample do: [:assoc | | nombreMEE |
		nombreMEE := self new.
		nombreMEE nombre: assoc value;
			code: assoc key.
		nombreMEE usoMedida: UsoMedida cache asArray randomPeek.
		nombreMEE addToCache]
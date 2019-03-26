other
populateCache

	self initializeCache.

	self validNames do: [:each | | usoMedida |
		usoMedida := self new.
		usoMedida nombre: each.
		usoMedida addToCache]
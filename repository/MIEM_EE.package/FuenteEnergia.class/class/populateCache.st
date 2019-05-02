cache
populateCache

	self initializeCache.

	self validNames do: [:each | | tarifa |
		tarifa := self new.
		tarifa nombre: each.
		tarifa addToCache]
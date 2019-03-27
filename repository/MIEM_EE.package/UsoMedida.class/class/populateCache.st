other
populateCache

	self initializeCache.

	self validNames do: [:assoc | | usoMedida |
		usoMedida := self new.
		usoMedida nombre: assoc value;
			code: assoc key.
		usoMedida addToCache]
other
populateCache

	self initializeCache.

	(Moneda new nombre: 'USD') addToCache.
	(Moneda new nombre: 'UYU') addToCache.
	(Moneda new nombre: 'EUR') addToCache.
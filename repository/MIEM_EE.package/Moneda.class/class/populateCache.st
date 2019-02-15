other
populateCache

	self initializeCache.

	(Moneda new nombre: 'USD'; pais: 'USA'; yourself) addToCache.
	(Moneda new nombre: 'UYU'; pais: 'Uruguay'; yourself) addToCache.
	(Moneda new nombre: 'EUR'; pais: 'Europa'; yourself) addToCache.
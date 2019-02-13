other
initializeMonedas

	Cache := Set new.

	(Moneda new nombre: 'USD') addToCache.
	(Moneda new nombre: 'UYU') addToCache.
	(Moneda new nombre: 'EUR') addToCache.
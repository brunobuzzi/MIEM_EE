other
populateCache

	self initializeCache.

	(UnidadEnergetica new nombre: 't'; descripcion: 'tonelada') addToCache.
	(UnidadEnergetica new nombre: 'm3'; descripcion: 'metros cúbicos') addToCache.
	(UnidadEnergetica new nombre: 'kWh'; descripcion: 'kilovatio hora') addToCache.
	(UnidadEnergetica new nombre: 'l'; descripcion: 'litro') addToCache.
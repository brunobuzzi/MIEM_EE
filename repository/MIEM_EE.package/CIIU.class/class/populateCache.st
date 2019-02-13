other
populateCache

	self initializeCache.

	self nombresValidos do: [:each | | ciiu |
		ciiu := self new.
		ciiu nombre: (each allButFirst: 3).
		ciiu numero: (Number fromString: (each first: 2)).
		ciiu addToCache]
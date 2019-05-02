other
cacheAsSortedCollection

	^self cache asSortedCollection: [:a :b | a fuenteEnergia nombre <= b fuenteEnergia nombre]
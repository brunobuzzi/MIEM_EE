other
createItem
	| nombre |

	nombre := self componentValueAt: 'name' ifAbsent: [^self].

	(FuenteEnergia includesFuenteEnergiaNamed: nombre) ifTrue: [^self].

	(FuenteEnergia new nombre: nombre) addToCache.

	parent informItemAdded
other
createItem
	| nombre |

"	nombre := self componentValueAt: 'name' ifAbsent: [^self].

	(ConversionFuenteEnergia includesAutoconsumoNamed: nombre) ifTrue: [^self].

	(ConversionFuenteEnergia new nombre: nombre) addToCache.

	parent informItemAdded"
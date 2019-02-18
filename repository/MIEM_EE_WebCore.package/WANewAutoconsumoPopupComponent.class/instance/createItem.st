other
createItem
	| nombre |

	nombre := self componentValueAt: 'name' ifAbsent: [^self].

	(Autoconsumo includesAutoconsumoNamed: nombre) ifTrue: [^self].

	(Autoconsumo new nombre: nombre) addToCache.

	parent informItemAdded
other
createItem
	| nombre |

	nombre := self componentValueAt: 'name' ifAbsent: [^self].

	(TarifaReferencia includesTarifaNamed: nombre) ifTrue: [^self].

	(TarifaReferencia  new nombre: nombre) addToCache.

	parent informItemAdded
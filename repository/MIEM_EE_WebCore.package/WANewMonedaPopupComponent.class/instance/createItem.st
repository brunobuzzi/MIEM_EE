other
createItem
	| nombre country |

	nombre := self componentValueAt: 'name' ifAbsent: [^self].
	country := self componentValueAt: 'country' ifAbsent: [^self].

	(Moneda includesMonedaNamed: nombre) ifTrue: [^self].

	(Moneda new 
		nombre: nombre;
		pais: country;
		yourself) addToCache.

	parent informItemAdded
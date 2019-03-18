other
sewafTableForRepresentaciones
	| table |

	table := (self hasTableNamed: 'representaciones') 
		ifTrue: [self getTableNamed: 'representaciones' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForRepresentaciones].

	table	selectedObject: self model representacion.

	^table